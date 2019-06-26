create or replace procedure sp_basket_observer
(
    aDomain       in basket.domainid%type,
    aStatus       in varchar2  default '''1'',''2''',
    historyDate   in varchar2  default '2010-01-01 00:00:00',
    dateFormat    in varchar2  default 'yyyy-mm-dd hh24:mi:ss',
    max_nr        in number    default 10000
)
------------------------------------------------------------------------------------------
-- Name        : sp_basket_observer
-- Description : Remove all history baskets and all related like servicelineitem,
--               productlineitems, lineitemgroups... that are older than the history date.
--               Additionally this procedure removes unneeded session based baskets.
-- Owner       : The database user.
-- Input       : aDomain - The domain UUID.
--               aStatus - The basket status default ORDERED(2) or INVALID(1).
--               historyDate - The history date - delete all up to this date
--               max_nr - maximum number of rows deleted within one run of this stored
--                        procedure
--
-- Output      : none
-- Examples    : exec sp_basket_observer('domainUUID')
--             : exec sp_basket_observer(domainid('PrimeTech-PrimeTechSpecials-Anonymous'))
--
--               begin
--                  sp_basket_observer
--                  (
--                      aDomain     => 'domainUUID',
--                      aStatus     => '''1'',''2''',
--                      historyDate => '2010-01-01 00:00:00',
--                      dateFormat  => 'yyyy-mm-dd hh24:mi:ss',
--                      max_nr      => 10000
--                  );
--               end;
--               /
------------------------------------------------------------------------------------------
as

    g_sql_comment varchar2(500) := '/* sp_basket_observer('''||nvl(aDomain,'null')||''','''||replace(aStatus,'''','''''')||''','''||nvl(historyDate,'null')||''','''||dateFormat||''','||max_nr||') */';

    g_sql varchar2(2000) :=
        'update basket a set oca=-1 where domainid = :aDomain '||
        'and ('||
         '( status in (' || aStatus || ') '||
           'and historydate < to_date(:historyDate, :dateFormat)'||
         ') '||
          'or '||
         '( sessionbasedflag = 1 '||
           'and status = 0 '||
           'and lasttouched < to_date(:historyDate, :dateFormat) '||
           'and not exists (select 1 from sessioninformation si where a.sessionid like (substr(si.sessionid,3))||''%'')'||
          ')'||
        ') '||
        'and rownum < 1+'||max_nr;

    g_start number;
    g_hint  varchar2(70) := '';
    g_oca   varchar2(70) := 'case when a.oca=-1 then -1 else null end is not null';
    g_dml   varchar2(10) := 'Delete';

    function elaspsed_time_ms (p_start number) return varchar2
    is
    begin
        return 'elapsed time: '|| lpad((dbms_utility.get_time - p_start)*10, 12, ' ') || ' msec.';
    end;

    procedure log (p_sql varchar2, p_dml varchar2, p_table varchar2, p_rowcount number, p_ela varchar2)
    is
    begin
        logger.log(p_dml||' '||rpad(p_table||': ',32,' ') || lpad(p_rowcount,10,' ') || ' rows affected, ' ||p_ela);
      --logger.log(p_sql);
    end;

    procedure execute (p_sql varchar2, p_table varchar2, p_dml varchar2)
    is
        l_start number := dbms_utility.get_time;
        l_rowcount number;
    begin
        execute immediate p_sql;
        l_rowcount := sql%rowcount;
        log(p_sql, p_dml, p_table, l_rowcount, elaspsed_time_ms(l_start));
    end;

    procedure delete_po_av (p_po_table varchar2, p_po_av_table varchar2, p_fk_column_name varchar2)
    is
        l_sql varchar2(1000);
    begin
        -- av table
        l_sql := 'delete ' || g_sql_comment || ' from ' || p_po_av_table || ' c where exists (' ||
                 'select ' || g_hint        || ' 1 from ' || p_po_table || ' b join basket a on (b.' || p_fk_column_name || ' = a.uuid) ' ||
                 'where b.uuid = c.ownerid and ' || g_oca || ')';
        execute (l_sql, p_po_av_table, g_dml);
        -- po table
        l_sql := 'delete ' || g_sql_comment || ' ' || g_hint || ' from ' || p_po_table || ' b where exists (' ||
                 'select 1 from basket a where b.' || p_fk_column_name || ' = a.uuid and ' || g_oca || ')';
        execute (l_sql, p_po_table, g_dml);
    end;

    procedure delete_po_av (p_po_table varchar2, p_po_av_table varchar2)
    is
    begin
        delete_po_av(p_po_table, p_po_av_table, 'lineitemctnrid');
    end;

    -- delete a child table and its AV of a table with a basket relation 
    procedure delete_child_po_av (p_po_table varchar2, p_po_av_table varchar2, p_po_basket_related_table varchar2, p_relation_column varchar2)
    is
        l_sql varchar2(1000);
    begin
        -- child av table
        l_sql := 'delete ' || g_sql_comment || ' from ' || p_po_av_table || ' d where exists (' ||
                 'select ' || g_hint        || ' 1 from ' || p_po_table || ' c ' ||
                 'join ' || p_po_basket_related_table || ' b on (c.'|| p_relation_column || ' = b.uuid) ' ||
                 'join basket a on (b.lineitemctnrid = a.uuid) ' ||
                 'where c.uuid = d.ownerid and ' || g_oca || ')';
        execute (l_sql, p_po_av_table, g_dml);
        -- child po table
        l_sql := 'delete ' || g_sql_comment || ' ' || g_hint || ' from ' || p_po_table || ' c where exists (' ||
                 'select 1 from ' || p_po_basket_related_table || ' b ' ||
                 'join basket a on (b.lineitemctnrid = a.uuid) where c.'|| p_relation_column ||' = b.uuid and ' || g_oca || ')';
        execute (l_sql, p_po_table, g_dml);
    end;
    
begin

    --
    -- debug output
    --
    logger.log('.');
    logger.log('Update oca=-1 query:');
    logger.log('Command  : '||g_sql);
    logger.log('Parameter: [:aDomain, :historyDate, :dateFormat], ['''||aDomain||''', '''||historyDate||''', '''||dateFormat||''']');
    logger.log('Comment  : '||g_sql_comment);
    logger.log('.');

    --
    -- mark all baskets that should be deleted in order to not run into
    -- concurrency issues
    --
    g_start := dbms_utility.get_time;
    execute immediate g_sql using adomain,historydate,dateformat,historydate,dateformat;
    logger.log('Removing '||sql%rowcount||' baskets...');
    log(g_sql, 'Update', 'basket(set oca=-1)', sql%rowcount, elaspsed_time_ms(g_start));

    --
    -- basketaddress/av
    -- lineitemgroup/av
    -- servicelineitem/av
    --
    delete_po_av('basketaddress',   'basketaddress_av',  'basketid');
    delete_po_av('lineitemgroup',   'lineitemgroup_av');
    delete_po_av('servicelineitem', 'servicelineitem_av');

    --
    -- bundledproductlineit_av
    --
    g_sql := 'delete ' || g_sql_comment || ' from bundledproductlineit_av av where exists ('||
             'select 1 from bundledproductlineitem bpli where bpli.uuid = av.ownerid and exists (' ||
             'select 1 from productlineitem pli where bpli.productlineitemid = pli.uuid and exists (' ||
             'select 1 from basket a where pli.lineitemctnrid = a.uuid and ' || g_oca || ')))';
    execute(g_sql, 'bundledproductlineit_av', g_dml);

    --
    -- bundledproductlineitem
    --
    g_sql := 'delete ' || g_sql_comment || ' from bundledproductlineitem bpli where exists (' ||
             'select 1 from productlineitem pli where bpli.productlineitemid = pli.uuid and exists (' ||
             'select 1 from basket a where pli.lineitemctnrid = a.uuid and ' || g_oca || '))';
    execute(g_sql, 'bundledproductlineitem', g_dml);

    --
    -- productlineitem/av
    --
    delete_po_av('productlineitem',       'productlineitem_av');

    --
    -- paymenthistory_av (FK relation to paymenttransaction)
    --
    g_sql := 'delete ' || g_sql_comment || ' from paymenthistory_av av where exists ('||
             'select 1 from paymenthistory ph where av.ownerid = ph.uuid and exists (' ||
             'select 1 from paymenttransaction pt where ph.paymenttransactionid = pt.uuid and exists (' ||
             'select 1 from paymentinstrumentinfo pii where pt.paymentinstrumentinfoid = pii.uuid and exists (' ||
             'select 1 from basket a where pii.lineitemctnrid = a.uuid and ' || g_oca || '))))';
    execute(g_sql, 'paymenthistory_av', g_dml);

    --
    -- paymenthistory
    --
    g_sql := 'delete ' || g_sql_comment || ' from paymenthistory ph where exists (' ||
             'select 1 from paymenttransaction pt where ph.paymenttransactionid = pt.uuid and exists (' ||
             'select 1 from paymentinstrumentinfo pii where pt.paymentinstrumentinfoid = pii.uuid and exists (' ||
             'select 1 from basket a where pii.lineitemctnrid = a.uuid and ' || g_oca || ')))';
    execute(g_sql, 'paymenthistory', g_dml);

    --
    -- paymenttransaction/av (FK relation to paymentinstrumentinfo)
    -- paymentinstrumentinfo/av
    --
    delete_child_po_av('paymenttransaction', 'paymenttransaction_av', 'paymentinstrumentinfo', 'paymentinstrumentinfoid');
    delete_po_av('paymentinstrumentinfo', 'paymentinstrumentinf_av');

    --
    -- isorder - delete basketid from isorder to ensure consistency
    --
    g_sql := 'update ' || g_sql_comment || ' isorder o set o.basketid = null where exists (' ||
             'select 1 from basket a where o.basketid = a.uuid and ' || g_oca || ')';
    execute(g_sql, 'isorder(set basketid=null)', 'Update');

    --
    -- basket/basket_av
    --
    g_sql := 'delete ' || g_sql_comment || ' from basket_av av where exists (' ||
             'select 1 from basket a where av.ownerid = a.uuid and ' || g_oca || ')';
    execute(g_sql, 'basket_av', g_dml);

    g_sql := 'delete ' || g_sql_comment || ' from basket a where ' || g_oca;
    execute(g_sql, 'basket', g_dml);

  commit;

  logger.log('Removing baskets...ok!');

end sp_basket_observer;
/

show errors

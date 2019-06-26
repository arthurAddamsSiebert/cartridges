CREATE OR ALTER FUNCTION sp_basket_observer$elaspsed_time_ms
(
	@p_start DATETIME
) RETURNS VARCHAR(20)
AS
BEGIN
	RETURN CONCAT('elapsed time: ',  dbo.CORE$LPAD(DATEDIFF(second, @p_start, GETDATE())*10, 12, ' '), ' msec.');
END;
GO
CREATE OR ALTER PROCEDURE sp_basket_observer$log
(
	@p_sql NVARCHAR(3000),
	@p_dml NVARCHAR(3000),
	@p_table VARCHAR(256),
	@p_rowcount NUMERIC,
	@p_ela VARCHAR(30)
)
AS
BEGIN
	DECLARE @stmt VARCHAR(3000);
	SET @stmt = CONCAT(@p_dml, ' ', dbo.CORE$RPAD(@p_table+': ', 32, ' '), dbo.CORE$LPAD(@p_rowcount, 10, ' '), ' rows affected, ', @p_ela);
	EXEC LOGGER$log @stmt, 0 ;
END;
GO
CREATE OR ALTER PROCEDURE sp_basket_observer$execute
(
	@p_sql NVARCHAR(3000),
	@p_table VARCHAR(256),
	@p_dml NVARCHAR(3000)
)
AS
BEGIN
	DECLARE @l_start DATETIME = GETDATE(),
			@l_rowcount NUMERIC;
    EXEC sp_executesql @p_sql;
    SET @l_rowcount =@@ROWCOUNT;
	DECLARE @elapsedTime VARCHAR(3000);
	SET @elapsedTime = dbo.sp_basket_observer$elaspsed_time_ms(@l_start);
    EXEC sp_basket_observer$log @p_sql, @p_dml, @p_table, @l_rowcount, @elapsedTime;
END;
GO
CREATE OR ALTER PROCEDURE sp_basket_observer$delete_po_av
(
	@p_po_table			VARCHAR(256),
	@p_po_av_table		VARCHAR(256),
	@p_fk_column_name	VARCHAR(256),
	@g_sql_comment		NVARCHAR(3000),
	@g_oca				NVARCHAR(70),
	@g_hint				NVARCHAR(70),
	@g_dml				NVARCHAR(10)
)
AS
BEGIN
	DECLARE @l_sql NVARCHAR(4000);
    -- av table
    SET @l_sql = CONCAT('delete c ' ,  @g_sql_comment ,  ' from ' ,  @p_po_av_table ,  ' c where exists (' , 
                'select ' ,  @g_hint        ,  ' 1 from ' ,  @p_po_table ,  ' b join basket a on (b.' ,  @p_fk_column_name ,  ' = a.uuid) ' , 
                'where b.uuid = c.ownerid and ' ,  @g_oca ,  ')');
				print @l_sql
    EXEC sp_basket_observer$execute @l_sql, @p_po_av_table, @g_dml;
    -- po table
    SET @l_sql = CONCAT('delete b ',  @g_sql_comment ,  ' ' ,  @g_hint ,  ' from ' ,  @p_po_table ,  ' b where exists (' , 
                'select 1 from basket a where b.' ,  @p_fk_column_name ,  ' = a.uuid and ' ,  @g_oca ,  ')');
	print @l_sql
    EXEC sp_basket_observer$execute @l_sql, @p_po_av_table, @g_dml;
	
END;
GO
CREATE OR ALTER PROCEDURE sp_basket_observer$delete_po_av2
(
	@p_po_table		VARCHAR(256),
	@p_po_av_table	VARCHAR(256),
	@g_sql_comment	NVARCHAR(3000),
	@g_oca			NVARCHAR(70),
	@g_hint			NVARCHAR(70),
	@g_dml			NVARCHAR(10)
)
AS
BEGIN
	EXEC sp_basket_observer$delete_po_av @p_po_table, @p_po_av_table, 'lineitemctnrid', @g_sql_comment, @g_oca, @g_hint, @g_dml;
END;
GO
-- delete a child table and its AV of a table with a basket relation 
CREATE OR ALTER PROCEDURE sp_basket_observer$delete_child_po_av
(
	@p_po_table					VARCHAR(256),
	@p_po_av_table				VARCHAR(256),
	@p_po_basket_related_table	VARCHAR(256),
	@p_relation_column			VARCHAR(256),
	@g_sql_comment				NVARCHAR(3000),
	@g_oca						NVARCHAR(70),
	@g_hint						NVARCHAR(70),
	@g_dml						NVARCHAR(10)
)
AS
BEGIN
	DECLARE @l_sql NVARCHAR(MAX);
	-- child av table
	SET @l_sql = CONCAT('delete d ',  @g_sql_comment ,  ' from ',  @p_po_av_table,  ' d where exists (' , 
			'select ',  @g_hint,  ' 1 from ',  @p_po_table ,  ' c ', 
			'join ',  @p_po_basket_related_table,  ' b on (c.',  @p_relation_column,  ' = b.uuid) ' , 
			'join basket a on (b.lineitemctnrid = a.uuid) ', 
			'where c.uuid = d.ownerid and ',  @g_oca ,  ')');
	EXEC sp_basket_observer$execute @l_sql, @p_po_av_table, @g_dml;
	-- child po table
	SET @l_sql = CONCAT('delete c ' ,  @g_sql_comment ,  ' ' ,  @g_hint ,  ' from ' ,  @p_po_table ,  ' c where exists (' , 
			'select 1 from ' ,  @p_po_basket_related_table ,  ' b ' , 
			'join basket a on (b.lineitemctnrid = a.uuid) where c.',  @p_relation_column , ' = b.uuid and ',  @g_oca ,  ')');
	EXEC sp_basket_observer$execute @l_sql, @p_po_table, @g_dml;
END;
GO
CREATE OR ALTER PROCEDURE sp_basket_observer
(
    @aDomain       NVARCHAR(30),
    @aStatus       VARCHAR(20)	= '''1'',''2''',
    @historyDate   VARCHAR(30)	= '2010-01-01 00:00:00',
    @dateFormat    VARCHAR(30)	= 'yyyy-mm-dd hh:mi:ss',
    @max_nr        NUMERIC		= 10000
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
-- Examples    : exec sp_basket_observer 'domainUUID'
--             : exec sp_basket_observer (domainid('PrimeTech-PrimeTechSpecials-Anonymous'))
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
AS
BEGIN
	BEGIN TRAN
		DECLARE @comment NVARCHAR(4000);
		DECLARE @g_sql_comment NVARCHAR(500) = CONCAT('/* sp_basket_observer(''', ISNULL(@aDomain,'null'), ''',''', replace(@aStatus,'''',''''''), ''',''', ISNULL(@historyDate,'null'), ''',''', @dateFormat, ''',', @max_nr, ') */');

		DECLARE @g_sql NVARCHAR(4000) = CONCAT(
			'UPDATE a set oca = -1 FROM basket a WHERE domainid = ''', @aDomain, ''' ', 
			'AND (', 
			 '( status in (' ,  @aStatus ,  ') ', 
			   'and historydate < CONVERT(VARCHAR(30), ''', @historyDate, ''', 120)) ', 
			  'OR ', 
			 '( sessionbasedflag = 1 ', 
			   'AND status = 0 ', 
			   'AND lasttouched < CONVERT(VARCHAR(30), ''', @historyDate, ''', 120) ', 
			   'AND NOT EXISTS (SELECT 1 FROM sessioninformation si WHERE a.sessionid LIKE CONCAT((SUBSTRING(si.sessionid, 3, 256)), ''%''))', 
			  ')) ', 
			'and (SELECT ROW_NUMBER() OVER (ORDER BY DOMAINID ASC) AS ROWNUM FROM basket a WHERE DOMAINID = ''', @aDomain, ''') < ', 1+@max_nr);

		DECLARE @g_start NUMERIC,
				@g_hint  NVARCHAR(70) = '',
				@g_oca   NVARCHAR(70) = 'CASE WHEN a.oca = -1 THEN -1 ELSE null END IS NOT NULL',
				@g_dml   NVARCHAR(10) = 'Delete';  

		--
		-- debug output
		--
		EXEC LOGGER$log '.', 0;
		EXEC LOGGER$log 'Update oca=-1 query:', 0;
		SET @comment = CONCAT('Command  : ', @g_sql);
		EXEC LOGGER$log @comment, 0;
		SET @comment = CONCAT('Parameter: [:aDomain, :historyDate, :dateFormat], [''', @aDomain, ''', ''', @historyDate, ''', ''', @dateFormat, ''']');
		EXEC LOGGER$log @comment, 0;
		SET @comment = CONCAT('Comment  : ', @g_sql_comment);
		EXEC LOGGER$log @comment, 0;
		EXEC LOGGER$log '.', 0;

		--
		-- mark all baskets that should be deleted in order to not run into
		-- concurrency issues
		--

		SET @g_start = CONVERT(NUMERIC(12), GETDATE());
		EXEC SQL_UTIL$execute @g_sql, 0;
		
		COMMIT
		
		SET @comment = CONCAT('Removing ', @@ROWCOUNT, ' baskets...');
		EXEC LOGGER$log @comment, 0;
		SET @comment = CONCAT(@g_sql, 'Update', 'basket(set oca=-1)', @@ROWCOUNT, dbo.sp_basket_observer$elaspsed_time_ms(@g_start));
		EXEC sp_basket_observer$log @comment, @g_dml, '', 0, 0; -- Need to chagne
		--
		-- basketaddress/av
		-- lineitemgroup/av
		-- servicelineitem/av
		--
		EXEC sp_basket_observer$delete_po_av 'basketaddress',   'basketaddress_av',  'basketid', @g_sql_comment, @g_oca, @g_hint, @g_dml;
		EXEC sp_basket_observer$delete_po_av2 'lineitemgroup',   'lineitemgroup_av', @g_sql_comment, @g_oca, @g_hint, @g_dml;
		EXEC sp_basket_observer$delete_po_av2 'servicelineitem', 'servicelineitem_av', @g_sql_comment, @g_oca, @g_hint, @g_dml;
		
		--
		-- bundledproductlineit_av
		--
		SET @g_sql = CONCAT('delete av ' ,  @g_sql_comment ,  ' from bundledproductlineit_av av where exists (', 
				 'select 1 from bundledproductlineitem bpli where bpli.uuid = av.ownerid and exists (' , 
				 'select 1 from productlineitem pli where bpli.productlineitemid = pli.uuid and exists (' , 
				 'select 1 from basket a where pli.lineitemctnrid = a.uuid and ' ,  @g_oca ,  ')))');
		EXEC sp_basket_observer$execute @g_sql, 'bundledproductlineit_av', @g_dml;

		--
		-- bundledproductlineitem
		--
		SET @g_sql = CONCAT('delete bpli ' ,  @g_sql_comment ,  ' from bundledproductlineitem bpli where exists (' , 
				 'select 1 from productlineitem pli where bpli.productlineitemid = pli.uuid and exists (' , 
				 'select 1 from basket a where pli.lineitemctnrid = a.uuid and ' ,  @g_oca ,  '))');
		EXEC sp_basket_observer$execute @g_sql, 'bundledproductlineitem', @g_dml;

		--
		-- productlineitem/av
		--
		EXEC sp_basket_observer$delete_po_av2 'productlineitem',       'productlineitem_av', @g_sql_comment, @g_oca, @g_hint, @g_dml;

		--
		-- paymenthistory_av (FK relation to paymenttransaction)
		--
		SET @g_sql = CONCAT('delete av ',  @g_sql_comment ,  ' from paymenthistory_av av where exists (', 
				 'select 1 from paymenthistory ph where av.ownerid = ph.uuid and exists (' , 
				 'select 1 from paymenttransaction pt where ph.paymenttransactionid = pt.uuid and exists (' , 
				 'select 1 from paymentinstrumentinfo pii where pt.paymentinstrumentinfoid = pii.uuid and exists (' , 
				 'select 1 from basket a where pii.lineitemctnrid = a.uuid and ' ,  @g_oca ,  '))))');
		EXEC sp_basket_observer$execute @g_sql, 'paymenthistory_av', @g_dml;

		--
		-- paymenthistory
		--
		SET @g_sql = CONCAT('delete ph ' ,  @g_sql_comment ,  ' from paymenthistory ph where exists (' , 
				 'select 1 from paymenttransaction pt where ph.paymenttransactionid = pt.uuid and exists (' , 
				 'select 1 from paymentinstrumentinfo pii where pt.paymentinstrumentinfoid = pii.uuid and exists (' , 
				 'select 1 from basket a where pii.lineitemctnrid = a.uuid and ' ,  @g_oca ,  ')))');
		EXEC sp_basket_observer$execute @g_sql, 'paymenthistory', @g_dml;

		--
		-- paymenttransaction/av (FK relation to paymentinstrumentinfo)
		-- paymentinstrumentinfo/av
		--
		EXEC sp_basket_observer$delete_child_po_av 'paymenttransaction', 'paymenttransaction_av', 'paymentinstrumentinfo', 'paymentinstrumentinfoid', @g_sql_comment, @g_oca, @g_hint, @g_dml;
		EXEC sp_basket_observer$delete_po_av2 'paymentinstrumentinfo', 'paymentinstrumentinf_av', @g_sql_comment, @g_oca, @g_hint, @g_dml;

		--
		-- isorder - delete basketid from isorder to ensure consistency
		--
		SET @g_sql = CONCAT('update o ' ,  @g_sql_comment ,  '  set o.basketid = null FROM isorder o where exists (' , 
				 'select 1 from basket a where o.basketid = a.uuid and ' ,  @g_oca ,  ')');
		EXEC sp_basket_observer$execute @g_sql, 'isorder(set basketid=null)', 'Update';

		--
		-- basket/basket_av
		--
		SET @g_sql = CONCAT('delete av ' ,  @g_sql_comment ,  ' from basket_av av where exists (' , 
				 'select 1 from basket a where av.ownerid = a.uuid and ' ,  @g_oca ,  ')');
		EXEC sp_basket_observer$execute @g_sql, 'basket_av', @g_dml;

		SET @g_sql = CONCAT('delete a ' ,  @g_sql_comment ,  ' from basket a where ' ,  @g_oca);
		EXEC sp_basket_observer$execute @g_sql, 'basket', @g_dml;
	COMMIT
	EXEC LOGGER$log 'Removing baskets...ok!', 0;

END
GO
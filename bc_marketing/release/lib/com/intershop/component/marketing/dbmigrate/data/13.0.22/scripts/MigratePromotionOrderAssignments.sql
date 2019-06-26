DECLARE
  v_cnt number;
BEGIN
  SELECT count(*) INTO v_cnt FROM user_tab_columns WHERE column_name = 'UUID' AND Table_name = 'PROMOTIONORDERASSIGNMENT';

  IF v_cnt = 0 THEN
    -- Drop current primary key
    staging_ddl.drop_primary_key('PROMOTIONORDERASSIGNMENT');

    -- Add new columns
    staging_ddl.add_column('PROMOTIONORDERASSIGNMENT', 'uuid', 'VARCHAR2(28)');
    staging_ddl.add_column('PROMOTIONORDERASSIGNMENT', 'domainid', 'VARCHAR2(28)');
    staging_ddl.add_column('PROMOTIONORDERASSIGNMENT', 'lastmodified', 'TIMESTAMP(9)');
    staging_ddl.add_column('PROMOTIONORDERASSIGNMENT', 'orderdocumentno', 'VARCHAR2(256)');

    -- Fill columns uuid, oca and lastmodified
    staging.update_table('PROMOTIONORDERASSIGNMENT', 
      'SET ' ||
        'uuid = sf_create_uuid(),' ||
        'lastmodified = utctimestamp(),' ||
        'oca = oca + 1');
      
    -- Fill domainid
    staging.update_table('PROMOTIONORDERASSIGNMENT', 
      'SET domainid = (SELECT p.domainid FROM Promotion p WHERE promotionuuid = p.uuid) ' ||
      'WHERE domainid IS NULL');
    COMMIT;

    -- Fill orderdocumentno
    staging.update_table('PROMOTIONORDERASSIGNMENT', 
      'SET orderdocumentno = (SELECT o.documentno FROM IsOrder o WHERE orderuuid = o.uuid) ' ||
      'WHERE orderdocumentno IS NULL');
    COMMIT;

    -- Delete all rows w/o valid domainid or orderdocumentno for the case that referenced orders
    -- or promotion codes do not exist anymore. Otherwise the next statement will fail!
	staging.delete_from('PROMOTIONORDERASSIGNMENT',
      'WHERE domainid IS NULL OR orderdocumentno IS NULL');
	COMMIT;

    -- make uuid, domainid, oca, lastmodified and orderdocumentno not nullable
    staging_ddl.alter_table('PROMOTIONORDERASSIGNMENT', 
      'MODIFY ' ||
        '(uuid NOT NULL,' ||
        'domainid NOT NULL,' ||
        'lastmodified NOT NULL,' ||
        'orderdocumentno NOT NULL)');

    -- Make orderuuid optional
    staging_ddl.alter_table('PROMOTIONORDERASSIGNMENT', 'MODIFY (orderuuid NULL)');

    -- Make uuid primary key
    staging_ddl.create_primary_key('PROMOTIONORDERASSIGNMENT', '(uuid)');
  END IF;
END;
/
show errors;

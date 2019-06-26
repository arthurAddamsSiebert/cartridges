declare
  v_cnt number;
begin
  -- basket
  select count(*) into v_cnt from user_tab_columns where column_name = 'INVOICETOADDRESSID' and table_name = 'BASKET';
  if v_cnt > 0 then
    -- Copy invoiceToAddressID of basket records to new invoiceToAddressURN column
    staging.update_table('basket', 'SET invoiceToAddressURN = invoiceToAddressID');
    -- Drop invoiceToAddressID column
    staging_ddl.drop_column('basket', 'invoiceToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPTOADDRESSID' and table_name = 'BASKET';
  if v_cnt > 0 then
    -- Copy shipToAddressID of basket records to new shipToAddressURN column
    staging.update_table('basket', 'SET shipToAddressURN = shipToAddressID');
    -- Drop shipToAddressID column
    staging_ddl.drop_column('basket', 'shipToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPFROMADDRESSID' and table_name = 'BASKET';
  if v_cnt > 0 then
    -- Copy shipFromAddressID of basket records to new shipFromAddressURN column
    staging.update_table('basket', 'SET shipFromAddressURN = shipFromAddressID');
    -- Drop shipFromAddressID column
    staging_ddl.drop_column('basket', 'shipFromAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SERVICETOADDRESSID' and table_name = 'BASKET';
  if v_cnt > 0 then
    -- Copy serviceToAddressID of basket records to new serviceToAddressURN column
    staging.update_table('basket', 'SET serviceToAddressURN = serviceToAddressID');
    -- Drop serviceToAddressID column
    staging_ddl.drop_column('basket', 'serviceToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'INSTALLTOADDRESSID' and table_name = 'BASKET';
  if v_cnt > 0 then
    -- Copy installToAddressID of basket records to new installToAddressURN column
    staging.update_table('basket', 'SET installToAddressURN = installToAddressID');
    -- Drop installToAddressID column
    staging_ddl.drop_column('basket', 'installToAddressID');
  end if;

  -- isorder
  select count(*) into v_cnt from user_tab_columns where column_name = 'INVOICETOADDRESSID' and table_name = 'ISORDER';
  if v_cnt > 0 then
    -- Copy invoiceToAddressID of isorder records to new invoiceToAddressURN column
    staging.update_table('isorder', 'SET invoiceToAddressURN = invoiceToAddressID');
    -- Drop invoiceToAddressID column
    staging_ddl.drop_column('isorder', 'invoiceToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPTOADDRESSID' and table_name = 'ISORDER';
  if v_cnt > 0 then
    -- Copy shipToAddressID of isorder records to new shipToAddressURN column
    staging.update_table('isorder', 'SET shipToAddressURN = shipToAddressID');
    -- Drop shipToAddressID column
    staging_ddl.drop_column('isorder', 'shipToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPFROMADDRESSID' and table_name = 'ISORDER';
  if v_cnt > 0 then
    -- Copy shipFromAddressID of isorder records to new shipFromAddressURN column
    staging.update_table('isorder', 'SET shipFromAddressURN = shipFromAddressID');
    -- Drop shipFromAddressID column
    staging_ddl.drop_column('isorder', 'shipFromAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SERVICETOADDRESSID' and table_name = 'ISORDER';
  if v_cnt > 0 then
    -- Copy serviceToAddressID of isorder records to new serviceToAddressURN column
    staging.update_table('isorder', 'SET serviceToAddressURN = serviceToAddressID');
    -- Drop serviceToAddressID column
    staging_ddl.drop_column('isorder', 'serviceToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'INSTALLTOADDRESSID' and table_name = 'ISORDER';
  if v_cnt > 0 then
    -- Copy installToAddressID of isorder records to new installToAddressURN column
    staging.update_table('isorder', 'SET installToAddressURN = installToAddressID');
    -- Drop installToAddressID column
    staging_ddl.drop_column('isorder', 'installToAddressID');
  end if;

  -- productlineitem
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPTOADDRESSID' and table_name = 'PRODUCTLINEITEM';
  if v_cnt > 0 then
    -- Copy shipToAddressID of productlineitem records to new shipToAddressURN column
    staging.update_table('productlineitem', 'SET shipToAddressURN = shipToAddressID');
    -- Drop shipToAddressID column
    staging_ddl.drop_column('productlineitem', 'shipToAddressID');
  end if;
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPFROMADDRESSID' and table_name = 'PRODUCTLINEITEM';
  if v_cnt > 0 then
    -- Copy shipFromAddressID of productlineitem records to new shipFromAddressURN column
    staging.update_table('productlineitem', 'SET shipFromAddressURN = shipFromAddressID');
    -- Drop shipFromAddressID column
    staging_ddl.drop_column('productlineitem', 'shipFromAddressID');
  end if;

  -- servicelineitem
  select count(*) into v_cnt from user_tab_columns where column_name = 'SHIPTOADDRESSID' and table_name = 'SERVICELINEITEM';
  if v_cnt > 0 then
    -- Copy shipToAddressID of servicelineitem records to new shipToAddressURN column
    staging.update_table('servicelineitem', 'SET shipToAddressURN = shipToAddressID');
    -- Drop shipToAddressID column
    staging_ddl.drop_column('servicelineitem', 'shipToAddressID');
  end if;
end;
/
show errors;

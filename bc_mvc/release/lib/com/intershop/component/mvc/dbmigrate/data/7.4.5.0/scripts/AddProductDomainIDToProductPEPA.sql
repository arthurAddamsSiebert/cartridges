declare
  v_cnt number;
begin
  select count(*) into v_cnt from user_tab_columns where column_name = 'PRODUCTDOMAINID' and table_name = 'PRODUCT_PEPA';
  if v_cnt > 0 then
    -- Copy domainid of a pepa record to new productDomainID column
    staging.update_table('product_pepa', 'SET productDomainID = domainid' ||
    ' WHERE productDomainID is null AND domainid is not null');
  end if;
  commit;
end;
/
show errors;

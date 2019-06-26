
declare

    table_name user_tables.table_name%TYPE;

begin

    -- CATALOGCATEGORY_PEPA_CO001 (pageletentrypoint) and CO002 (domainid)
    table_name := 'CATALOGCATEGORY_PEPA';
    if ddl.is_object_exists(table_name, 'TABLE') then
        sql_util.executeDDL('ALTER TABLE '||table_name||' DROP CONSTRAINT '||table_name||'$1_CO001', -2443);
        sql_util.executeDDL('ALTER TABLE '||table_name||' DROP CONSTRAINT '||table_name||'$1_CO002', -2443);
    end if;
    staging_ddl.drop_constraint(table_name||'_CO001', table_name);
    staging_ddl.drop_constraint(table_name||'_CO002', table_name);

    -- PRODUCT_PEPA_CO001 (pageletentrypoint) and CO002 (domainid)
    table_name := 'PRODUCT_PEPA';
    if ddl.is_object_exists(table_name, 'TABLE') then
        sql_util.executeDDL('ALTER TABLE '||table_name||' DROP CONSTRAINT '||table_name||'$1_CO001', -2443);
        sql_util.executeDDL('ALTER TABLE '||table_name||' DROP CONSTRAINT '||table_name||'$1_CO002', -2443);
    end if;
    staging_ddl.drop_constraint(table_name||'_CO001', table_name);
    staging_ddl.drop_constraint(table_name||'_CO002', table_name);

end;
/

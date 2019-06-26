--EXEC staging_ddl.alter_table('CATALOGCATEGORY_PEPA', 'SET UNUSED(applyToChildrenFlag)', -904);
--EXEC staging_ddl.alter_table('CATALOGCATEGORY_PEPA', 'SET UNUSED(applyToProductsFlag)', -904);

EXEC staging_ddl.drop_index('CATALOGCATEGORY_PEPA_IE001', 'CATALOGCATEGORY_PEPA');
-- ORA-00957: duplicate column name
EXEC staging_ddl.alter_table('CATALOGCATEGORY_PEPA', 'RENAME COLUMN entryPointID TO pageletEntryPointID', -957);

EXEC staging_ddl.drop_index('PRODUCT_PEPA_IE001', 'PRODUCT_PEPA');
-- ORA-00957: duplicate column name
EXEC staging_ddl.alter_table('PRODUCT_PEPA', 'RENAME COLUMN entryPointID TO pageletEntryPointID', -957);

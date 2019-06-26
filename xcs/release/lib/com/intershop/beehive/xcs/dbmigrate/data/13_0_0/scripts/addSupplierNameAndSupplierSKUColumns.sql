BEGIN
	staging_ddl.add_column('PRODUCT', 'SUPPLIERNAME', 'VARCHAR2(256)');
	staging_ddl.add_column('PRODUCT', 'SUPPLIERSKU', 'VARCHAR2(256)');
	staging_ddl.add_column('DERIVEDPRODUCT', 'SUPPLIERNAME', 'VARCHAR2(256)');
	staging_ddl.add_column('DERIVEDPRODUCT', 'SUPPLIERSKU', 'VARCHAR2(256)');
END;
/
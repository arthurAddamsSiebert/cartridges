BEGIN
	staging_ddl.drop_column('DERIVEDPRODUCT', 'IMAGE');
	staging_ddl.drop_column('DERIVEDPRODUCT', 'THUMBNAIL');
END;
/
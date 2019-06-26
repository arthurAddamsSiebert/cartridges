BEGIN
	staging_ddl.drop_column('PRODUCT', 'IMAGE');
	staging_ddl.drop_column('PRODUCT', 'THUMBNAIL');
END;
/
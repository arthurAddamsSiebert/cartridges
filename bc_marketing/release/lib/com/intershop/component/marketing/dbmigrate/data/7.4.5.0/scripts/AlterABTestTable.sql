--fix id is null issue
BEGIN
	staging.update_table('ABTest',' SET id = ''abtest_''||uuid');
END;
/

show errors;

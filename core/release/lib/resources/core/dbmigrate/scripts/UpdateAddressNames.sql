BEGIN
	staging.update_table('BasicAddress', 'SET addressname='''||sf_create_uuid()||''' WHERE addressname is null');
END;
/
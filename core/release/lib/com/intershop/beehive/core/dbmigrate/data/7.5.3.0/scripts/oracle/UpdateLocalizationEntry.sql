DECLARE
	con_name user_objects.object_name%TYPE;
	idx_table_space user_tables.TABLESPACE_NAME%TYPE;
	
BEGIN
    staging.update_table('localizationentry', 'l set l.uuid=UTL_RAW.CAST_TO_VARCHAR2(utl_encode.base64_encode(rawtohex(DBMS_OBFUSCATION_TOOLKIT.md5(input_string=>(l.domainID || l.localeID ||l.locKey))))), l.lastmodified=sysdate where uuid is null');
    COMMIT;

 	IF staging.is_prepared('LOCALIZATIONENTRY') THEN

 		-- $1 rable
		SELECT DISTINCT
                	constraint_name into con_name
		FROM   user_constraints uc 
		WHERE table_name = 'LOCALIZATIONENTRY$1' 
		AND  constraint_type = 'P';
		
		SELECT DISTINCT
                	tablespace_name into idx_table_space
		FROM   user_indexes uidx 
		WHERE index_name = con_name;

		execute immediate 'alter table LOCALIZATIONENTRY$1 drop constraint ' ||  con_name;
		
 		-- $2 rable
		SELECT DISTINCT
                	constraint_name into con_name
		FROM   user_constraints uc 
		WHERE table_name = 'LOCALIZATIONENTRY$2' 
		AND  constraint_type = 'P';
		
		SELECT DISTINCT
                	tablespace_name into idx_table_space
		FROM   user_indexes uidx 
		WHERE index_name = con_name;

		execute immediate 'alter table LOCALIZATIONENTRY$2 drop constraint ' ||  con_name;
		
	ELSE
 		-- non-staging
		SELECT DISTINCT
                	constraint_name into con_name
		FROM   user_constraints uc 
		WHERE table_name = 'LOCALIZATIONENTRY' 
		AND  constraint_type = 'P';
		
		SELECT DISTINCT
                	tablespace_name into idx_table_space
		FROM   user_indexes uidx 
		WHERE index_name = con_name;

		execute immediate 'alter table LOCALIZATIONENTRY drop constraint ' ||  con_name;
		
 	END IF;
 	
	staging_ddl.create_index('LOCALIZATIONENTRY_AK001', 'LOCALIZATIONENTRY', '(DOMAINID, LOCALEID, LOCKEY)', idx_table_space, 'UNIQUE', 1);
	staging_ddl.add_constraint('LOCALIZATIONENTRY','PK_LOCALIZATIONENTRY','PRIMARY KEY (UUID)');
    
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.put_line ('');
	WHEN OTHERS THEN
		DBMS_OUTPUT.put_line (SQLERRM);
END;
/

show errors;

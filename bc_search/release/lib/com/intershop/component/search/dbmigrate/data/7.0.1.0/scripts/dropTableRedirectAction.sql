BEGIN

    IF NOT staging.is_staging_table('REDIRECTACTION') THEN
    
      ddl.drop_table('REDIRECTACTION');
    
    END IF;

END;
/
show errors;
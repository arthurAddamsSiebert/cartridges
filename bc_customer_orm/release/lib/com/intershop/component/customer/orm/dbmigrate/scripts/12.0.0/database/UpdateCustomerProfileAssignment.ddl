SET ECHO ON

SET SERVEROUTPUT ON SIZE 1000000

PROMPT -- Remove outdated database indexes
EXEC staging_ddl.drop_index('CUSTOMERPROFILEASSIGNMEN_AK001', 'CUSTOMERPROFILEASSIGNMENT');

PROMPT -- Update primary key
EXEC staging_ddl.drop_primary_key('CUSTOMERPROFILEASSIGNMENT');

EXEC staging_ddl.create_primary_key('CUSTOMERPROFILEASSIGNMENT', '(PROFILEID)');
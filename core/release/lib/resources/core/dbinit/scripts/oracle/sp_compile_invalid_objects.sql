CREATE OR REPLACE PROCEDURE sp_compile_invalid_objects IS
------------------------------------------------------------------------------------------
-- Name        : sp_compile_invalid_objects
-- Created     : Thomas Budich
-- Description : This procedure compiles all invalid database objects.
-- Input       : none
-- Output      : none
-- Example     : exec sp_compile_invalid_objects
------------------------------------------------------------------------------------------

    curr INTEGER := 0;
    prev INTEGER := 0;
    
BEGIN
    
    -- try max 10 times
    FOR c IN 1..10 LOOP

        SELECT count(*) INTO curr FROM user_objects WHERE status = 'INVALID' AND object_name <> 'SP_DBMONITOR';

    	  IF curr=0 THEN
            logger.log('No more invalid objects found.');
            RETURN;
        ELSIF prev=curr THEN
            logger.log('Number of invalid objects did not changed (cnt='||curr||'). Stop compiling.');	
            RETURN;
    	  END IF;

        logger.log('('||c||') Start compiling '||curr||' invalid objects...');

        prev := curr;
        
        -- select all invalid objects
        FOR i IN (SELECT object_type, object_name FROM user_objects WHERE status = 'INVALID' AND object_name <> 'SP_DBMONITOR')
        LOOP
            sp_compile_object(i.object_type, i.object_name);
        END LOOP;
    
    END LOOP;

END sp_compile_invalid_objects;
/

show errors;

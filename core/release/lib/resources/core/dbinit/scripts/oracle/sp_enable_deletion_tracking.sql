CREATE OR REPLACE PROCEDURE sp_enable_deletion_tracking (staging_table_name IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_enable_deletion_tracking
-- History     : user             date       - desc
--             : ...
-- Created     : Frank Koch
-- Description : This procedure is used to enable deletion tracking behaviour
--               (deletion triggers) of a given staging table. 
--               Transactional staging processors need deletion tracking. Therefor, 
--               all deletion triggers of staging tables, that are handled by a
--               TransactionalStagingProcessor (or any sub-class of it), need to be enabled. 
--               The TransactionalSP will enable the deletion triggers of all tables, which are
--               involved in a staging process, table by table. Tables, which are not involved in 
--               a staging process, will not get their according deletion triggers enabled.
-- Input       : deletion_tracking_processor the staging processor, which
--                                           needs the deletion tracking mechanism
-- Output      : none
-- Examples    : exec sp_enable_deletion_tracking('BASICPROFILE')
------------------------------------------------------------------------------------------

    suffix        VARCHAR2(2);

BEGIN

     FOR i IN (SELECT tr.trigger_name, tr.table_name, s.synonym_name
                 FROM user_triggers tr, user_synonyms s, stagingtable t
                WHERE tr.table_name=s.table_name
                  AND s.synonym_name=t.tablename
                  AND t.tablename=staging_table_name)
     LOOP

--        IF i.stagingprocessorname=deletion_tracking_processor THEN

            dbms_output.put_line('Enable deletion tracking for '||i.synonym_name);

            sql_util.execute('ALTER TRIGGER '||i.trigger_name||' ENABLE');
            suffix := SUBSTR(i.trigger_name, -2, LENGTH(i.trigger_name));
            IF suffix='$1' THEN
                suffix:='$2';
            ELSE
                suffix:='$1';
            END IF;
            sql_util.execute('ALTER TRIGGER  '||
                SUBSTR(i.trigger_name, 1, LENGTH(i.trigger_name)-2)||suffix||' ENABLE');
--        END IF;

    END LOOP;
END;
/

show errors;

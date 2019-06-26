CREATE OR REPLACE PROCEDURE sp_update_deletion_tracking (deletion_tracking_processor IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_update_deletion_tracking
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Thomas Budich
-- Description : This procedure is used to update deletion tracking behaviour
--               of staging environment. Some staging processors needs deletion tracking
--               some one not. The given staging processor is the one, who needs
--               the deletion tracking mechanism. So, all deletion triggers of staging
--               tables, that are handled by this processor, are enabled. All other
--               deletion trigger are disabled. Further, the according deletion tables
--               are truncated.
-- Input       : deletion_tracking_processor the staging processor, which
--                                           needs the deletion tracking mechanism
-- Output      : none
-- Examples    : exec sp_update_deletion_tracking('DeltaDomainSpecificStagingProcessor')
------------------------------------------------------------------------------------------

    suffix        VARCHAR2(2);

BEGIN

     FOR i IN (SELECT t.trigger_name, t.table_name, s.synonym_name, g.stagingprocessorname
                 FROM user_triggers t, user_synonyms s, staginggroup g, stagingtable t
                WHERE t.table_name=s.table_name
                  AND s.synonym_name=t.tablename
                  AND t.staginggroupid=g.uuid)
     LOOP

        IF i.stagingprocessorname=deletion_tracking_processor THEN

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
        END IF;

    END LOOP;
END;
/

show errors;

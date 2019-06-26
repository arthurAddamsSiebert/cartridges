CREATE OR REPLACE PROCEDURE sp_deleteJobsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteJobsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     04/02/2014 - #IS-2278 ORA-00942 for table process$1/$2 (is not configured staging entity)
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Budich    10/24/2005 - #5340 use locking framework instead of jobmonitor
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
--                                             and correct deletion with foreign key
--                                             constraints
-- Created     : Dirk Kassner
-- Description : This procedure DELETEs Job tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteJobsByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

            --
            -- Process
            --
            -- Handle FK constraint: Process.jobuuid -> JobConfiguration.uuid
            -- Update process.jobuuid = NULL
            -- Avoid integrity constraint violation: child record found
            --
            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('Process', null)||' SET jobuuid = NULL '||
                ' WHERE jobuuid IN (SELECT uuid FROM '|| staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE domainid = :domainid)' USING in_domainid;

            --
            -- JobIntermittentTimeCondition
            --
            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobConfiguration_AV',suffix)||
                ' WHERE ownerid IN (SELECT uuid FROM '|| staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE conditionid IN (SELECT uuid FROM '|| staging.get_table_name('JobIntermittentTimeCondition',suffix)||
                ' WHERE domainid = :domainid))' USING in_domainid;

            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobResourceAssignment',suffix)||
                ' WHERE jobid IN (SELECT uuid FROM '|| staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE conditionid IN (SELECT uuid FROM '|| staging.get_table_name('JobIntermittentTimeCondition',suffix)||
                ' WHERE domainid = :domainid))' USING in_domainid;

            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE conditionid IN (SELECT uuid FROM '|| staging.get_table_name('JobIntermittentTimeCondition',suffix)||
                ' WHERE domainid = :domainid)' USING in_domainid;

            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobIntermittentTimeCondition',suffix)||
                ' WHERE domainid = :domainid' USING in_domainid;

            --
            -- JobRelativeTimeCondition
            --
            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobConfiguration_AV',suffix)||
                ' WHERE ownerid IN (SELECT uuid FROM '|| staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE conditionid IN (SELECT uuid FROM '|| staging.get_table_name('JobRelativeTimeCondition',suffix)||
                ' WHERE domainid = :domainid))' USING in_domainid;

            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobResourceAssignment',suffix)||
                ' WHERE jobid IN (SELECT uuid FROM '|| staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE conditionid IN (SELECT uuid FROM '|| staging.get_table_name('JobRelativeTimeCondition',suffix)||
                ' WHERE domainid = :domainid))' USING in_domainid;

            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE conditionid IN (SELECT uuid FROM '|| staging.get_table_name('JobRelativeTimeCondition',suffix)||
                ' WHERE domainid = :domainid)' USING in_domainid;

            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobRelativeTimeCondition',suffix)||
                ' WHERE domainid = :domainid' USING in_domainid;

            --
            -- JobResourceAssignment
            --
            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobResourceAssignment',suffix)||
                ' WHERE jobid IN (SELECT uuid FROM '|| staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE domainid = :domainid)' USING in_domainid;

            --
            -- JobConfiguration
            --
            sp_genericPoAvDeleteByDomain('JobConfiguration', 'JobConfiguration_AV', suffix, in_domainid, 'domainid');

            COMMIT;

    END;

BEGIN

        IF sf_is_staging_table('JobConfiguration') THEN
            --
            -- try to clean up staging tables ($1 resp. $2 tables)
            --
            deleteFromStagingTables(domainID, '$1');
            deleteFromStagingTables(domainID, '$2');
        ELSE
            --
            -- staging tables do not exist -> try to delete from
            -- original table
            --
            deleteFromStagingTables(domainID, null);
    END IF;

END sp_deleteJobsByDomain;
/

show errors

CREATE OR REPLACE PROCEDURE sp_deleteApplicationByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteApplicationByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     07/08/2011 - #ENFINITY-11193: misses to delete application
--                                              objects if the domain is the site
--             : Leopold Stephan  01/31/2012 - #ENFINITY-17791: some app related stuff wasn't
--                                              removed during domain references deletion
--             : Falko Krische    04/04/2012 - #ENFINITY-19681: added deletion of job configurations
--                                              by a given application id
-- Created     : Thomas Kober
-- Description : This procedure DELETEs Application tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteApplicationByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    ---
    -- delete job configurations by application id
    ---
    PROCEDURE deleteJobsByApplicationID(in_applicationid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
            ---
            -- delete from JobIntermittentTimeCondition
            ---
            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobIntermittentTimeCondition',suffix)||
                ' WHERE uuid IN (SELECT conditionid FROM ' || staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE applicationid = :applicationid)' USING in_applicationid;

            ---
            -- delete from JobRelativeTimeCondition
            ---
            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobRelativeTimeCondition',suffix)||
                ' WHERE uuid IN (SELECT conditionid FROM ' || staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE applicationid = :applicationid)' USING in_applicationid;

            ---
            -- delete from JobResourceAssignment
            ---
            EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('JobResourceAssignment',suffix)||
                ' WHERE jobid IN (SELECT uuid FROM ' || staging.get_table_name('JobConfiguration',suffix)||
                ' WHERE applicationid = :applicationid)' USING in_applicationid;

            ---
            -- use generic function to delete JobConfiguration and its AV
            -- 'domainid' is replaced by 'applicationuuid'
            ---
            sp_genStagPoAvDeleteByDomain('JobConfiguration', 'JobConfiguration_AV', in_applicationid, 'applicationid');
    END;

    ---
    -- delete application domain relation by application id
    ---
    PROCEDURE deleteApplicationRelations(in_applicationid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ApplicationDomainRelation', suffix)||
            ' WHERE applicationuuid = :applicationid' USING in_applicationid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Localization_AA', suffix)||
            ' WHERE applicationid = :applicationid' USING in_applicationid;
    END;

    ---
    --
    ---
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        ---
        -- create a curser to "loop" over all application ids we can find for the given domain id
        ---
        TYPE cur_typ IS REF CURSOR;
        cur     cur_typ;
        query   VARCHAR2(1000) := 'SELECT uuid FROM ' || staging.get_table_name('Application', suffix) || ' WHERE domainid = :domainid OR siteid = :domainid';
        uuid    application.uuid%TYPE;
    BEGIN

        OPEN cur FOR query USING in_domainid, in_domainid;

        ---
        -- use the cursor to loop over all application ids
        ---
        LOOP
            FETCH cur INTO uuid;
            EXIT WHEN cur%NOTFOUND;
                deleteJobsByApplicationID(uuid, suffix);
                deleteApplicationRelations(uuid, suffix);
            END LOOP;
        CLOSE cur;

        ---
        -- at least delete application and application av
        ---
        sp_genStagPoAvDeleteByDomain('Application', 'Application_AV', domainID, 'domainid');
        sp_genStagPoAvDeleteByDomain('Application', 'Application_AV', domainID, 'siteid');

        COMMIT;

    END;

BEGIN
    IF sf_is_staging_table('ApplicationDomainRelation') THEN
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

END sp_deleteApplicationByDomain;
/

show errors


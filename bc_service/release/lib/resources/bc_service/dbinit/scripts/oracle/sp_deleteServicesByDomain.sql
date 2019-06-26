CREATE OR REPLACE PROCEDURE sp_deleteServicesByDomain (domainID IN VARCHAR2)
 
------------------------------------------------------------------------------------------
-- Name        : sp_deleteServices
-- History     : user             date       - desc
--             : ...
--             : Ronny Wilms      07/18/2012 - #ENFINITY-23961: misses to delete service assignments,
--                                              configurations and permissions
-- Created     : Ronny Wilms
-- Description : This procedure DELETEs the configured services from the tables SERVICECONFIGURATION,
--               SERVICEASSIGNMENT, SERVICEPERMISSION
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteServices('domainid')
------------------------------------------------------------------------------------------
 
AS
 
    ---
    -- delete service assignments by domain id
    ---
    PROCEDURE deleteServiceAssignments(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SERVICEASSIGNMENT', suffix)||
            ' WHERE domainid = :domainid' USING in_domainid;
    END;
    
    ---
    -- delete service repositories by domain id
    ---
    PROCEDURE deleteServiceRepositories(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SERVICEREPOSITORY', suffix)||
            ' WHERE domainid = :domainid' USING in_domainid;
    END;
    
    ---
    -- delete service permissions by domain id
    ---
    PROCEDURE deleteServicePermissions(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SERVICEPERMISSION', suffix)||
            ' WHERE domainid = :domainid' USING in_domainid;
    END;
    
    ---
    --
    ---
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
 
        deleteServiceAssignments(in_domainid, suffix);
        deleteServicePermissions(in_domainid, suffix);
        deleteServiceRepositories(in_domainid, suffix);
        sp_genStagPoAvDeleteByDomain('SERVICECONFIGURATION', 'SERVICECONFIGURATION_AV', in_domainid, 'domainid');
 
        COMMIT;
        
    END;
 
BEGIN
    IF sf_is_staging_table('SERVICECONFIGURATION') THEN
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
 
END sp_deleteServicesByDomain;
/
 
show errors
 

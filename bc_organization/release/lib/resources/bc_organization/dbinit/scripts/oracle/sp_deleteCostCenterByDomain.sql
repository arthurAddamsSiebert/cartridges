CREATE OR REPLACE PROCEDURE sp_deleteCostCenterByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteCostCenterByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * CostCenter
-- * CostCenterAttributeValue
-- * CostCenterRoleAssignment
-- * OrganizationUserGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCostCenterByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS

    BEGIN
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('OrganizationGroupAssi', suffix) || 
				' WHERE ao_uuid IN (SELECT uuid FROM ' || staging.get_table_name('CostCenter', suffix) || 
						' WHERE domainid = :in_domainid)'
				USING in_domainid;
				
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('CostCenter_RA', suffix) || 
				' WHERE objectuuid IN (SELECT uuid FROM ' || staging.get_table_name('CostCenter', suffix) || 
						' WHERE domainid = :in_domainid)'
				USING in_domainid;
		
		sp_genericPoAvDeleteByDomain('CostCenter','CostCenter_AV', suffix, in_domainid, 'domainid');	
		
		COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('OrganizationGroupAssi', suffix) ||
			' WHERE usergroupdomainid = :domainid' USING in_domainid;
        COMMIT;

    END;

    -- clean up tables in original scenario
    PROCEDURE deleteFromOriginalTables(in_domainid IN VARCHAR2)
    AS
    BEGIN

       -- REWORK: remove this 'if'-branch if CostCenters are staged!!!
       -- but keep the 'else'-branch!!!
        IF sf_is_staging_table('OrganizationGroupAssignment') THEN
            EXECUTE IMMEDIATE 'DELETE FROM OrganizationGroupAssi$1 WHERE objectuuid IN (SELECT uuid FROM CostCenter WHERE domainid = :domainid)' USING in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM OrganizationGroupAssi$2 WHERE objectuuid IN (SELECT uuid FROM CostCenter WHERE domainid = :domainid)' USING in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM OrganizationGroupAssi$1 WHERE usergroupdomainid = :domainid' USING in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM OrganizationGroupAssi$2 WHERE usergroupdomainid = :domainid' USING in_domainid;
        ELSE
            DELETE FROM OrganizationGroupAssignment WHERE objectuuid IN (SELECT uuid FROM CostCenter WHERE domainid = in_domainid);
            DELETE FROM OrganizationGroupAssignment WHERE usergroupdomainid = in_domainid;
        END IF;
        COMMIT;

        FOR i IN (SELECT uuid FROM CostCenter WHERE domainid = in_domainid)
        LOOP
            DELETE FROM CostCenter_RA WHERE ao_uuid = i.uuid;
        END LOOP;
		
		sp_genericPoAvDeleteByDomain('CostCenter', 'CostCenter_AV', null, in_domainid, 'domainid');
		
        COMMIT;


    END;

BEGIN

    IF sf_is_staging_table('CostCenter') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        deleteFromOriginalTables(domainID);
    END IF;

END sp_deleteCostCenterByDomain;
/

show errors;
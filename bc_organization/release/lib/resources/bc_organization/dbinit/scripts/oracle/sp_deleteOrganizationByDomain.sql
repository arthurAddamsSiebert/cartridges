CREATE OR REPLACE PROCEDURE sp_deleteOrganizationByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteOrganizationByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * Organization
-- * OrganizationAttributeValue
-- * OrganizationRoleAssignment
-- * OrganizationUserGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteOrganizationByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN


        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('OrganizationGroupAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Organization', suffix)||' po
                                           WHERE a.objectuuid = po.uuid
                                             AND (po.domainid = :domainid OR po.organizationdomainid = :organizationdomainid))'
                    USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Organization_RA', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Organization', suffix)||' po
                                           WHERE av.ao_uuid = po.uuid
                                             AND (po.domainid = :domainid OR po.organizationdomainid = :organizationdomainid))'
                    USING in_domainid, in_domainid;
					
		sp_genericPoAvDeleteByDomain('Organization','Organization_AV', suffix, in_domainid, 'domainid');	
		sp_genericPoAvDeleteByDomain('Organization','Organization_AV', suffix, in_domainid, 'organizationdomainid');

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('OrganizationGroupAssignment', suffix)||' oga
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('UserGroup', suffix)||' ug
                                           WHERE oga.usergroupid = ug.id AND oga.usergroupdomainid = :domainid)'
                    USING in_domainid;

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('Organization') THEN
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
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deleteOrganizationByDomain;
/

show errors;
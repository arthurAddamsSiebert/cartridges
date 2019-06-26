CREATE OR REPLACE PROCEDURE sp_deleteProductSetsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductSetsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     : Thomas Budich
-- Description : This procedure deletes product sets releated stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteProductSetsByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2) AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductSetAssignment', suffix)||
            ' WHERE productsetuuid IN (SELECT uuid FROM '||staging.get_table_name('ProductSet', suffix)||
            ' WHERE domainid = :domainid)' USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductSetDomainAssignment', suffix)||
            ' WHERE domainid = :domainid1 OR productsetuuid IN (SELECT uuid FROM '||staging.get_table_name('ProductSet', suffix)||
            ' WHERE domainid = :domainid2)' USING in_domainid, in_domainid;

		sp_genericPoAvDeleteByDomain('ProductSet', 'ProductSet_AV', suffix, in_domainid, 'domainid');
			
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('ProductSet') THEN
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

END;
/

show errors

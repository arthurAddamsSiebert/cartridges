CREATE OR REPLACE PROCEDURE sp_deletePEPAByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deletePEPAByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Thomas Kober
-- Description : This procedure deletes
--
-- * Product_PEPA
-- * CatalogCategory_PEPA
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePEPAByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Product_PEPA',            suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategory_PEPA',    suffix)||' WHERE domainid = :domainid' USING in_domainid;
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('PageletEntryPoint') THEN
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

END sp_deletePEPAByDomain;
/

show errors

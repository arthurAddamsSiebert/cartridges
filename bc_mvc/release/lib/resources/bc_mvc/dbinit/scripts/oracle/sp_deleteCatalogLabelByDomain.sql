CREATE OR REPLACE PROCEDURE sp_deleteCatalogLabelByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteCatalogLabelByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     11/03/2009 - #13215 ORA-00972 and ORA-00942
-- Created     : Steffen Moldenhauer
-- Description : This procedure deletes
--
-- * CatalogCategoryLabelAssignment
-- * ProductLabelAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCatalogLabelByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategoryLabelAssignment', suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductLabelAssignment', suffix)||' WHERE domainid = :domainid' USING in_domainid;
        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('CatalogCategoryLabelAssignment') THEN
        -- try to clean up staging tables ($1 resp. $2 tables)
        deleteFromStagingTables(domainID,'$1');
        deleteFromStagingTables(domainID,'$2');
    ELSE
        -- staging tables do not exist -> try to DELETE FROM original table
        deleteFromStagingTables(domainID,null);
    END IF;

END sp_deleteCatalogLabelByDomain;
/

show errors;
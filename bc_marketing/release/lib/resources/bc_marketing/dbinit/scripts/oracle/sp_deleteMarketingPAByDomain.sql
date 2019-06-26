CREATE OR REPLACE PROCEDURE sp_deleteMarketingPAByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteMarketingPAByDomain
-- Description : This procedure deletes all marketing relevant content artifacts
--
-- * Promotion_PA
-- * ABTestGroup_PA
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteMarketingPAByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, in_table_name IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name(in_table_name, suffix)||' WHERE domainid = :domainid' USING in_domainid;
        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('Promotion_PA') THEN
        deleteFromStagingTables(domainID, 'Promotion_PA', '$1');
        deleteFromStagingTables(domainID, 'Promotion_PA', '$2');
    ELSE
        deleteFromStagingTables(domainID, 'Promotion_PA', null);
    END IF;

    IF sf_is_staging_table('ABTestGroup_PA') THEN
        deleteFromStagingTables(domainID, 'ABTestGroup_PA', '$1');
        deleteFromStagingTables(domainID, 'ABTestGroup_PA', '$2');
    ELSE
        deleteFromStagingTables(domainID, 'ABTestGroup_PA', null);
    END IF;


END sp_deleteMarketingPAByDomain;
/

show errors

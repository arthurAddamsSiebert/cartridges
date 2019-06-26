CREATE OR REPLACE PROCEDURE sp_deletePriceEventByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceEventByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     : Marcus Lenzner
-- Description : This procedure deletes product price change events.
-- Input       : in_domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deletePriceEventByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2) AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('ProductPriceChangeEvent',suffix)|| ' WHERE domainid = :in_domainID' USING in_domainid;
        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('ProductPriceChangeEvent') THEN
         deleteFromStagingTables(domainID, '$1');
         deleteFromStagingTables(domainID, '$2');
    ELSE
         deleteFromStagingTables(domainID, null);
    END IF;

END sp_deletePriceEventByDomain;
/

show errors

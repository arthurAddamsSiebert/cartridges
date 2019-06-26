CREATE OR REPLACE PROCEDURE sp_deletePriceListsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceListsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     : Thomas Budich
-- Description : This procedure deletes
--
-- * PriceLists
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePriceListsByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceScaleTableAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceList', suffix)||' po
                                           WHERE a.pricelistuuid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceListUsergroupAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceList', suffix)||' po
                                           WHERE a.pricelistuuid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;

		sp_genericPoAvDeleteByDomain('PriceList','PriceList_AV', suffix, in_domainid, 'domainid');	
					
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('PriceList') THEN
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

END sp_deletePriceListsByDomain;
/

show errors;

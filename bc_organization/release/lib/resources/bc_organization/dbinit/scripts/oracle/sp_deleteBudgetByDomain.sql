CREATE OR REPLACE PROCEDURE sp_deleteBudgetByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteBudgetByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * Budget
-- * BudgetAttributeValue
-- * BudgetPeriod
-- * BudgetPeriodAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteBudgetByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        -- BudgetPeriod
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('BudgetPeriod_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('BudgetPeriod', suffix)||' po
                                           WHERE av.ownerid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Budget', suffix)||' p
                                                          WHERE po.budgetid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('BudgetPeriod', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Budget', suffix)||' p
                                           WHERE po.budgetid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        -- Budget
					
		sp_genericPoAvDeleteByDomain('Budget','Budget_AV', suffix, in_domainid, 'domainid');	

        -- BudgetPeriod
 					
		sp_genericPoAvDeleteByDomain('BudgetPeriod','BudgetPeriod_AV', suffix, in_domainid, 'domainid');	

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('Budget') THEN
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

END sp_deleteBudgetByDomain;
/

show errors;
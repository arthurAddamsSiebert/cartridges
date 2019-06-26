CREATE OR REPLACE PROCEDURE sp_delProdRatingAsgmtByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteProductRatingAssignmentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Martin Bonev
-- Description : This procedure deletes
--
-- * ProductRatingAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_delProdRatingAsgmtByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        --
        -- ProductRatingAssignment
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductRatingAssignment', suffix)||' po
                            WHERE po.domainid = :domainid'
                    USING in_domainid;

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('ProductRatingAssignment') THEN
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

END sp_delProdRatingAsgmtByDomain;
/

show errors;

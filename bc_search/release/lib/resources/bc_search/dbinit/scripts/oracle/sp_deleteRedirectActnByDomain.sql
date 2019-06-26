CREATE OR REPLACE PROCEDURE sp_deleteRedirectActnByDomain (domainID IN VARCHAR2)


------------------------------------------------------------------------------------------
-- Name        : sp_deleteRedirectActionByDomain
-- History     : user             date       - desc
--             : ...
-- Description : This procedure deletes
-- * RedirectAction
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRedirectActionByDomain('wvAKAB2ZWz4AAAEu.zggFNzi')
------------------------------------------------------------------------------------------

AS

    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS

    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RedirectAction', suffix)||' WHERE domainid = :in_domainid' USING in_domainid;
        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('RedirectAction') THEN
        --
        -- clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- no staging tables DELETE FROM
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;
	
END sp_deleteRedirectActnByDomain;
/

show errors;


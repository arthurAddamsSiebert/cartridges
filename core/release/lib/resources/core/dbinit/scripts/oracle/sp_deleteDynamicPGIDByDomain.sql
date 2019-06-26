create or replace PROCEDURE sp_deleteDynamicPGIDByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteDynamicPGIDByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Daniel Reinhardt
-- Description : This procedure deletes
--
-- * DynamicPGID
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteDynamicPGIDByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('dynamicpgid',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('DynamicPGID') THEN
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

END sp_deleteDynamicPGIDByDomain;
/
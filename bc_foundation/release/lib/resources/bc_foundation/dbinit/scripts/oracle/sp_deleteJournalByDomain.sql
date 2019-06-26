CREATE OR REPLACE PROCEDURE sp_deleteJournalByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteJournalByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * JournalEntry
-- * JournalEntryAttributeValue
-- * SnapshotData
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteJournalByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS

    BEGIN

        sp_genericPoAvDeleteByDomain('JournalEntry', 'JournalEntry_AV', suffix, in_domainid, 'domainid');

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SnapShotData', suffix)||' WHERE domainid = :in_domainid' USING in_domainid;

        commit;

    END;

BEGIN

    IF sf_is_staging_table('JournalEntry') THEN
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

END sp_deleteJournalByDomain;
/

show errors;

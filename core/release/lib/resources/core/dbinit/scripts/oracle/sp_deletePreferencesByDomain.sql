CREATE OR REPLACE PROCEDURE sp_deletePreferencesByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deletePreferencesByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner, Thomas Budich
-- Description : This procedure deletes preferences.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deletePreferencesByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Preference', suffix)||' WHERE domainid = :in_domainid' USING IN in_domainid;
        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('Preference') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainid, '$1');
        deleteFromStagingTables(domainid, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromStagingTables(domainid, null);
    END IF;

END sp_deletePreferencesByDomain;
/

show errors

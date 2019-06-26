CREATE OR REPLACE PROCEDURE sp_deleteEventsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteEventsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     : Dirk Kassner
-- Description : This procedure deletes business event infos.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteEventsByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2) AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('businesseventpipelineinfo',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        COMMIT;
    END;

BEGIN

    --
    --  Delete only pipeline info. Business event infos are always in system domain.
    --
    IF sf_is_staging_table('businesseventpipelineinfo') THEN
        deleteFromStagingTables(domainid, '$1');
        deleteFromStagingTables(domainid, '$2');
    ELSE
        deleteFromStagingTables(domainid, null);
    END IF;

END sp_deleteEventsByDomain;
/

show errors

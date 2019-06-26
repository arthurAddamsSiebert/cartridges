CREATE OR REPLACE PROCEDURE sp_deleteLocalizationByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteLocalizationByDomain
-- History     : user             date       - desc
--             : ...
--             : tkober           06/12/2014 - IS-1956: fix domain cleanup for LOCALIZATIONENTRY
--             : Leopold Stephan  01/31/2012 - #ENFINITY-17791: some app related stuff wasn't
--                                              removed during domain references deletion
--             : Martin Bonev     07/08/2011 - #ENFINITY-13262: Localization application
--                                              assignments are not deleted from the database
--                                              when running Delete Domain References job
-- Created     : Martin Bonev
-- Description : This procedure DELETEs Localization tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteLocalizationByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('Localization_AA', suffix) ||
            ' WHERE domainid in (SELECT repositoryDomainID FROM ' || staging.get_table_name('LocalizationRepository',suffix) ||
            ' WHERE domainid = :in_domainid)' USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('Localization_AA', suffix) ||
            ' WHERE applicationid in (SELECT uuid FROM ' || staging.get_table_name('Application',suffix) ||
            ' WHERE siteid = :in_domainid)' USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('LocalizationEntry', suffix) ||
            ' WHERE domainid in (SELECT repositoryDomainID FROM ' || staging.get_table_name('LocalizationRepository',suffix) ||
            ' WHERE domainid = :in_domainid)' USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('LocalizationEntry', suffix) ||
            ' WHERE domainid = :in_domainid' USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('LocalizationRepository', suffix) ||
            ' WHERE domainid = :in_domainid' USING in_domainid;

        commit;

    END;

BEGIN

    IF sf_is_staging_table('Localization_AA') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deleteLocalizationByDomain;
/

show errors

CREATE OR REPLACE PROCEDURE sp_deleteImageRefsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteImageRefsByDomain
-- History     : user             date(MM/DD/YYYY)       - desc
--             : ...
--             : Thomas Kober     02/04/2011   - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Andreas Beyer    03/04/2013   - #ENFINITY-30406 use modified 'sp_genericPoAvDeleteByDomain' avTable='null' option
--             :
-- Created     : Valeska Dressler
-- Description : This procedure deletes image references of the
--               domain with given domainid, references to these tables from the xcs tables need to be removed first!
-- Tables:
-- IMAGEREFERENCE, IMAGECATEGORYASSIGNMENT, IMAGEPRODUCTASSIGNMENT
--
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteImageRefsByDomain(domainid)
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario (ImageReference, ImageProductAssignment, ImageCategoryAssignment)
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2) AS
    BEGIN
        -- clean up ImageProductAssignment based on imagereferenceuuid of ImageReference based on given domainid
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageProductAssignment', suffix)||' WHERE imagereferenceuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageReference', suffix)||' WHERE domainid = :domainid)'
            USING in_domainid;
        -- clean up ImageCategoryAssignment based on imagereferenceuuid of ImageReference based on given domainid
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageCategoryAssignment', suffix)||' WHERE imagereferenceuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageReference', suffix)||' WHERE domainid = :domainid)'
            USING in_domainid;
    END;

BEGIN

    IF sf_is_staging_table('ImageReference') THEN
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

    -- clean up ImageReference related Assignment tables; (ImageProductAssignment, ImageCategoryAssignment)
    sp_genStagPoAvDeleteByDomain('ImageProductAssignment', null, domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('ImageCategoryAssignment', null, domainID, 'domainid');
    -- clean up ImageReference table; second parameter 'null' means NO ImageReference_av table exist
    sp_genStagPoAvDeleteByDomain('ImageReference', null, domainID, 'domainid');

    COMMIT;

END sp_deleteImageRefsByDomain;
/

show errors;

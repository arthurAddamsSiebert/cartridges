CREATE OR REPLACE PROCEDURE sp_deleteImageDefsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteImageDefsByDomain
-- History     : user             date       - desc
--             : ...
--             : Ronny Wilms      06/20/2013 - #ENFINITY-33723 Fixing constraint voilation on domain delete
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             :
-- Created     : Valeska Dressler
-- Description : This procedure deletes image types, views, references, sets and assignments between them  to the
--               domain with given domainid, references to these tables from the xcs tables need to be removed first!
-- Tables:
-- IMAGETYPEVIEWASSIGNM_AV
-- IMAGETYPEVIEWASSIGNMENT
--
-- IMAGESETASSIGNMENT_AV
-- IMAGESETASSIGNMENT
--
-- IMAGESET_AV
-- IMAGESET
--
-- IMAGETYPE_AV
-- IMAGETYPE
--
-- IMAGEVIEWPRIMARY
--
-- IMAGEVIEW_AV
-- IMAGEVIEW
--
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteImageDefsByDomain(domainid)
------------------------------------------------------------------------------------------

AS

-- clean up tables in staging scenario (ImageReference, ImageProductAssignment, ImageCategoryAssignment)
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2) AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageProductAssignment', suffix)||' WHERE imagereferenceuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageReference', suffix)||' WHERE imageviewuuid IN
                (SELECT uuid FROM '||staging.get_table_name('ImageView', suffix)||' WHERE domainid = :domainid)
                OR imagetypeuuid IN
                (SELECT uuid FROM '||staging.get_table_name('ImageType', suffix)||' WHERE domainid = :domainid)
            )'
        USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageCategoryAssignment', suffix)||' WHERE imagereferenceuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageReference', suffix)||' WHERE imageviewuuid IN
                (SELECT uuid FROM '||staging.get_table_name('ImageView', suffix)||' WHERE domainid = :domainid)
                OR imagetypeuuid IN
                (SELECT uuid FROM '||staging.get_table_name('ImageType', suffix)||' WHERE domainid = :domainid)
            )'
        USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageReference', suffix)||' WHERE imageviewuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageView', suffix)||' WHERE domainid = :domainid)
            OR imagetypeuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageType', suffix)||' WHERE domainid = :domainid)'
        USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageSetCategoryAssignment', suffix)||' WHERE imagesetdefinitionuuid IN
            (SELECT uuid FROM '||staging.get_table_name('ImageSet', suffix)||' WHERE domainid = :domainid)'
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

    sp_genStagPoAvDeleteByDomain('imagetypeviewassignment', 'imagetypeviewassignm_av', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('imagesetassignment', 'imagesetassignment_av', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('imageset', 'imageset_av', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('imagetype', 'imagetype_av', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('imageviewprimary', null, domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('imageview', 'imageview_av', domainID, 'domainid');

    commit;

END sp_deleteImageDefsByDomain;
/

show errors

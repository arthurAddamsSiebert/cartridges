CREATE OR ALTER PROCEDURE sp_deleteImageDefsByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteImageDefsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in staging scenario (ImageReference, ImageProductAssignment, ImageCategoryAssignment)
--				 and used by sp_deleteImageDefsByDomain
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteImageDefsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageProductAssignment', @suffix), ' WHERE imagereferenceuuid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageReference', @suffix), ' WHERE imageviewuuid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageView', @suffix), ' WHERE domainid = ''', @in_domainid, ''')
		OR imagetypeuuid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageType', @suffix), ' WHERE domainid = ''', @in_domainid, ''')
		)');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageCategoryAssignment', @suffix), ' WHERE imagereferenceuuid IN
	(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageReference', @suffix), ' WHERE imageviewuuid IN
	(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageView', @suffix), ' WHERE domainid = ''', @in_domainid, ''')
	OR imagetypeuuid IN
	(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageType', @suffix), ' WHERE domainid = ''', @in_domainid, ''')
	)');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageReference', @suffix), ' WHERE imageviewuuid IN
	(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageView', @suffix), ' WHERE domainid = ''', @in_domainid, ''')
	OR imagetypeuuid IN
	(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageType', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageSetCategoryAssignment', @suffix), ' WHERE imagesetdefinitionuuid IN
	(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageSet', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteImageDefsByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteImageDefsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
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
-- Example     : exec sp_deleteImageDefsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRAN
		IF dbo.sf_is_staging_table('ImageReference') = 1
		BEGIN
			--
			-- try to clean up staging tables ($1 resp. $2 tables)
			--
			EXEC sp_deleteImageDefsByDomain$deleteFromStagingTables @domainID, '$1';
			EXEC sp_deleteImageDefsByDomain$deleteFromStagingTables @domainID, '$2';
		END
		ELSE
			--
			-- staging tables do not exist -> try to DELETE FROM
			-- original table
			--
		EXEC sp_deleteImageDefsByDomain$deleteFromStagingTables @domainID, NULL;

		EXEC sp_genStagPoAvDeleteByDomain 'imagetypeviewassignment', 'imagetypeviewassignm_av', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'imagesetassignment', 'imagesetassignment_av', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'imageset', 'imageset_av', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'imagetype', 'imagetype_av', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'imageviewprimary', null, @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'imageview', 'imageview_av', @domainID, 'domainid';
	COMMIT;
END
GO
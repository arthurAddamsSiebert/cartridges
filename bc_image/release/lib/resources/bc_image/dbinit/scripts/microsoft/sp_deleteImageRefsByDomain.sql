------------------------------------------------------------------------------------------
-- Name        : sp_deleteImageRefsByDomain$deleteFromStagingTables
-- Description : -- clean up tables in staging scenario (ImageReference, ImageProductAssignment, ImageCategoryAssignment)
-- Input       : in_domainid and suffix
-- Output      : 
-- example		: exec  sp_deleteImageRefsByDomain$deleteFromStagingTables  'PrMKgzxpzCQAAAFdZ4UdBFA8',null
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteImageRefsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);

	-- clean up ImageProductAssignment based on imagereferenceuuid of ImageReference based on given domainid
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageProductAssignment', @suffix), ' WHERE imagereferenceuuid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageReference', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
	
	-- clean up ImageCategoryAssignment based on imagereferenceuuid of ImageReference based on given domainid
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageCategoryAssignment', @suffix), ' WHERE imagereferenceuuid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('ImageReference', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
END;
GO

------------------------------------------------------------------------------------------
-- Name        : sp_deleteImageRefsByDomain
-- History     : user             date(MM/DD/YYYY)       - desc
--             : ...
--             :
-- Created     : Anand Singh
-- Description : This procedure deletes image references of the
--               domain with given domainid, references to these tables from the xcs tables need to be removed first!
-- Tables:
-- IMAGEREFERENCE, IMAGECATEGORYASSIGNMENT, IMAGEPRODUCTASSIGNMENT
--
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteImageRefsByDomain 'PrMKgzxpzCQAAAFdZ4UdBFA8'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteImageRefsByDomain 
(
	@domainID VARCHAR(4000)
)
AS  
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('ImageReference')=1 
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC  sp_deleteImageRefsByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC  sp_deleteImageRefsByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC  sp_deleteImageRefsByDomain$deleteFromStagingTables @domainID, null;
	END
	-- clean up ImageReference related Assignment tables; (ImageProductAssignment, ImageCategoryAssignment)
	EXEC sp_genStagPoAvDeleteByDomain 'ImageProductAssignment', null, @domainID, 'domainid';
	EXEC sp_genStagPoAvDeleteByDomain 'ImageCategoryAssignment', null, @domainID, 'domainid';
	-- clean up ImageReference table; second parameter 'null' means NO ImageReference_av table exist
	EXEC sp_genStagPoAvDeleteByDomain 'ImageReference', null, @domainID, 'domainid';
END 
GO
CREATE OR ALTER PROCEDURE sp_deleteCatalogObjects$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteCatalogObjects$deleteFromStagingTables
-- History     : user              date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure This procedure removes all rows belonging to domain with given uuid from staging tables.
--				 and this is used by sp_deleteCatalogObjects.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @uuid		NVARCHAR(30),
			@count		INT,
			@counter	INT = 1,
			@sqlQuery	NVARCHAR(MAX),
			@sqlCQuery	NVARCHAR(3000);
	DECLARE @uuidTable TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);

	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('imagesetcategoryassignment', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @uuidTable
		EXEC sp_executesql @sqlQuery
	SELECT @count = COUNT(1) FROM @uuidTable
	-- IMAGESETCATEGORYASSI_AV
	-- IMAGESETCATEGORYASSIGNMENT
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('imagesetcategoryassi_av', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('imagesetcategoryassignment', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END
	COMMIT;
	
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('CatalogCategory', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	DELETE FROM @uuidTable
	SELECT @count = 0, @counter = 1;
	INSERT INTO @uuidTable
		EXEC sp_executesql @sqlQuery
	SELECT @count = COUNT(1) FROM @uuidTable
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('CatalogCategory', @suffix), ' SET parentcategoryid = NULL WHERE parentcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('Product', @suffix), ' SET defaultcatalogcategoryid = NULL WHERE defaultcatalogcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('ProductLink', @suffix), ' SET linkedcatalogcategoryid = NULL WHERE linkedcatalogcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('DerivedProduct', @suffix), ' SET defaultcatalogcategoryid = NULL WHERE defaultcatalogcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;

			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageCategoryAssignment', @suffix), ' WHERE catalogcategoryuuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductCategoryAssignment', @suffix), ' WHERE catalogcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategoryLabelAssignment', @suffix), ' WHERE catalogcategoryuuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductMappingRule_AV', @suffix), ' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductMappingRule', @suffix), ' WHERE catalogcategoryid = ''', @uuid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductMappingRule', @suffix), ' WHERE catalogcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('TYPEDPRODUCTCATEGORYASSM', @suffix), ' WHERE catalogcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategoryLink_AV', @suffix), ' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('CatalogCategoryLink', @suffix), ' WHERE sourcecategoryid = ''', @uuid, ''' OR targetcategoryid = ''', @uuid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategoryLink', @suffix), ' WHERE sourcecategoryid = ''', @uuid, ''' OR targetcategoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategory_AV', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategory_RA', @suffix), ' WHERE ao_uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategory_PEPA', @suffix), ' WHERE categoryid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			
			SET @sqlCQuery = CONCAT('WITH abc(uuid) AS (SELECT UUID FROM ' , dbo.STAGING$get_table_name('CatalogCategory', @suffix),  ' WHERE UUID = ''', @uuid, ''' UNION ALL ',
			'SELECT cc.UUID FROM ', dbo.STAGING$get_table_name('CatalogCategory', @suffix), ' cc INNER JOIN abc a ON a.uuid = cc.PARENTCATEGORYID) ');
			SET @sqlQuery = CONCAT(@sqlCQuery, ' DELETE FROM ', dbo.STAGING$get_table_name('imagesetcategoryassi_av', @suffix), ' WHERE ownerid IN (SELECT uuid FROM ',
			dbo.STAGING$get_table_name('imagesetcategoryassignment', @suffix), ' WHERE catalogcategoryuuid IN (SELECT UUID FROM abc)');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT(@sqlCQuery, ' DELETE FROM ', dbo.STAGING$get_table_name('imagesetcategoryassignment', @suffix), ' WHERE catalogcategoryuuid IN (SELECT UUID FROM abc)');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategory', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END;
	COMMIT;

	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategory_RA', @suffix), ' WHERE usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategoryLink_AV', @suffix), ' WHERE ownerid IN (SELECT uuid FROM ',
								dbo.STAGING$get_table_name('CatalogCategoryLink', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategoryLink', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductCategoryAssignment', @suffix), ' WHERE domainid = ''', @in_domainid, ''' OR repdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteCatalogObjects
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletecatalogobjectsbydomain
-- History     : user              date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--               (a). ProductCategoryAssignment's  owned by a given domain
--               (b). catalogCategoryLink's owned by a given domain
--               (c). catalogCategory_AV's owned by a given domain
--               (d). catalogCategory_RA's owned by a given domain
--               (e). catalogCategory's owned by a given domain
-- Owner       : The special XCS Beehive/PowerTier user.
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletecatalogobjects 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('CatalogCategory') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteCatalogObjects$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteCatalogObjects$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deleteCatalogObjects$deleteFromStagingTables @domainID, NULL;
	END;
END
GO
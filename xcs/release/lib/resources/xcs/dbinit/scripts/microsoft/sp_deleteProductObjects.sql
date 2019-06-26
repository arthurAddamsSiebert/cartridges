CREATE OR ALTER PROCEDURE sp_deleteProductObjects$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductObjects$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure removes all rows belonging to domain with given uuid from staging tables.
--				 and used by sp_deleteProductObjects
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @uuid		NVARCHAR(30),
			@sku		NVARCHAR(256),
			@domainName NVARCHAR(256),
			@sqlQuery	NVARCHAR(3000),
			@count		INT,
			@counter	INT = 1;
	DECLARE @Product TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30),
		sku		NVARCHAR(256)
	);
	--SET @sqlQuery = CONCAT('SELECT domainname FROM domaininformation WHERE domainid = :d' INTO domainName USING in_domainid;
	SET @sqlQuery = CONCAT('SELECT uuid, sku FROM ', dbo.STAGING$get_table_name('Product', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	BEGIN TRAN
		INSERT INTO @Product
			EXEC sp_executesql @sqlQuery
		SELECT @count = COUNT(1) FROM @Product
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid, @sku = sku FROM @Product WHERE ID = @counter;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Product_RA' , @suffix), ' WHERE AO_uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('BundleAssignment' , @suffix), ' WHERE productid = ''', @uuid, ''' OR bundleid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('VariableVariationAttribute' , @suffix), ' WHERE productmasterid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductListPrice' , @suffix), ' WHERE productid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('DerivedProductListPrice' , @suffix), ' WHERE productid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductCategoryAssignment', @suffix), ' WHERE productid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('TypedProductCategoryAssm', @suffix), ' WHERE productid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Product', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
            
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductCostPrice', @suffix), ' WHERE productid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('DerivedProductCostPrice', @suffix), ' WHERE productid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductLink_AV', @suffix), ' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductLink', @suffix), ' WHERE targetid = ''', @uuid, ''' OR sourceid = ''', @uuid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
            
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductLink', @suffix), ' WHERE targetid = ''', @uuid, ''' OR sourceid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductSetAssignment', @suffix), ' WHERE productuuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;

			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageProductAssignment', @suffix), ' WHERE productuuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;

			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('Product', @suffix), ' SET offeredProductID=NULL WHERE offeredProductID = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END;
	COMMIT
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('DerivedProduct', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductLink_AV', @suffix), ' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductLink', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductLink', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Product_RA', @suffix), ' WHERE usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ImageProductAssignment', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteProductObjects
(
	@in_domainid NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteproductobjects
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
--? ProductAttribute
--? ProductAttribute_AV
--? ProductLink
--? Product_RA
--. ProductVariation
--. BundleAssignment
--. VariableVariationAttribute
--. ProductListPrice
--. ProductCostPrice
--. ProductLink
--? Product

--? PRODUCT_PRODUCTTYPE_TREE not yet
--? PRODUCT_CATALOG_TREE     not yet
--
--  owned by a given domain
--
-- Input       : in_domainid   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : EXEC sp_deleteproductobjects 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('PRODUCT') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteProductObjects$deleteFromStagingTables @in_domainid, '$1';
		EXEC sp_deleteProductObjects$deleteFromStagingTables @in_domainid, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deleteProductObjects$deleteFromStagingTables @in_domainid, NULL;
	END
END
GO
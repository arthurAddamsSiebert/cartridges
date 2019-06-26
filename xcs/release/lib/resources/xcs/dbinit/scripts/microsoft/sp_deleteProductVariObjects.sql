CREATE OR ALTER PROCEDURE sp_deleteProductVariObjects$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductVariObjects$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure removes all rows belonging to domain with given uuid from staging tables and used by sp_deleteProductVariObjects.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @uuid		NVARCHAR(30),
			@sqlQuery	NVARCHAR(3000),
			@count		INT,
			@counter	INT = 1;
	DECLARE @PVuuid	TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);

	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductVariation', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @PVuuid
		EXEC sp_executesql @sqlQuery
			SELECT @count=COUNT(1) FROM @PVuuid
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @PVuuid WHERE ID = @counter;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductVariation_AV', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductVariationAssignment', @suffix), ' WHERE productvariationid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('Product', @suffix), ' SET defaultproductvariationid = NULL WHERE defaultproductvariationid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductVariation', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END;
	COMMIT;
	
	DELETE FROM @PVuuid
	SELECT @count = 0, @counter = 1;
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductVariationValue', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @PVuuid
		EXEC sp_executesql @sqlQuery
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @PVuuid WHERE ID = @counter;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductVariationValu_AV', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductVariationAssignment', @suffix), ' WHERE productvariationvalueid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductVariationValue', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END
	COMMIT

	DELETE FROM @PVuuid
	SELECT @count = 0, @counter = 1;
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('VariableVariationAttribute', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @PVuuid
		EXEC sp_executesql @sqlQuery
			SELECT @count=COUNT(1) FROM @PVuuid
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @PVuuid WHERE ID = @counter;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('VariableVariationAtt_AV', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('VariableVariationAttribute', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END
	COMMIT

	DELETE FROM @PVuuid
	SELECT @count = 0, @counter = 1;
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('VariationType', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @PVuuid
		EXEC sp_executesql @sqlQuery
			SELECT @count=COUNT(1) FROM @PVuuid
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @PVuuid WHERE ID = @counter;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('VariationType_av', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('VariationType', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END
	COMMIT
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteProductVariObjects
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteproductvariobjects
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--               (a). ProductVariation_AV's  owned by a given domain
--               (b). ProductVariationAssignment's owned by a given domain
--               (c). ProductVariation's owned by a given domain
--               (d). ProductVariationValue's owned by a given domain
--               (e). ProductVariationAssignment's owned by a given domain
--               (f). productvariationvalue's owned by a given domain
--               (g). ProductVariationAssignment's owned by a given domain
--               (h). variablevariationattribute's owned by a given domain
--               (i). variationtype 's owned by a given domain
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteproductvariobjects 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
    IF dbo.sf_is_staging_table('ProductVariation') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteProductVariObjects$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteProductVariObjects$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deleteProductVariObjects$deleteFromStagingTables @domainID, NULL;
    END;
END
GO
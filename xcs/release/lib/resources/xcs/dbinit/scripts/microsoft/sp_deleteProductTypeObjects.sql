CREATE OR ALTER PROCEDURE sp_deleteProductTypeObjects$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductTypeObjects$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure removes all rows belonging to domain with given uuid from staging tables and used by sp_deleteProductTypeobjects
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @uuid		NVARCHAR(30),
			@uuid1		NVARCHAR(30),
			@count1		INT,
			@counter1	INT = 1,
			@attrid		NVARCHAR(30),
			@count		INT,
			@counter	INT = 1,
			@sqlQuery	NVARCHAR(3000);
	DECLARE @ProductType TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	DECLARE @ProductAttribute TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductType', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @ProductType
		EXEC sp_executesql @sqlQuery
	SELECT @count = COUNT(1) FROM @ProductType
	SELECT @count
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @ProductType WHERE ID = @counter
			DELETE FROM @ProductAttribute
			SELECT @count1 = 0, @counter1 = 1;
			SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductAttribute', @suffix), ' WHERE producttypeid = ''', @uuid, '''');
			INSERT INTO @ProductAttribute
				EXEC sp_executesql @sqlQuery
			SELECT @count1 = COUNT(1) FROM @ProductAttribute
			WHILE @counter1 <= @count1
			BEGIN
				SELECT @uuid1 = uuid FROM @ProductAttribute WHERE ID = @counter1
				SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductAttribute_AV', @suffix), ' WHERE ownerid = ''', @uuid1, '''');
				--EXEC SQL_UTIL$execute @sqlQuery, 0;
				 EXEC sp_executesql @sqlQuery
				 PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
				SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductAttribute', @suffix), ' WHERE uuid= ''', @uuid1, '''');
				--EXEC SQL_UTIL$execute @sqlQuery, 0;
				 EXEC sp_executesql @sqlQuery
				PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
				SET @counter1 = @counter1 + 1;
			END

			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductType_AV', @suffix), ' WHERE OWNERID = ''', @uuid, '''');
			--EXEC SQL_UTIL$execute @sqlQuery, 0;
			 EXEC sp_executesql @sqlQuery
			 PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductType', @suffix), ' WHERE uuid = ''', @uuid, '''');
		--	EXEC SQL_UTIL$execute @sqlQuery, 0;
			 EXEC sp_executesql @sqlQuery
			 PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
			SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('ProductType', @suffix), 
			' SET parentproducttypeid = NULL, lastmodified = GETUTCDATE()', 
			' WHERE parentproducttypeid = ''', @uuid, '''');
		--	EXEC SQL_UTIL$execute @sqlQuery, 0;
			 EXEC sp_executesql @sqlQuery
			 PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
			SET @counter = @counter + 1;
			SELECT @counter
		END;
	COMMIT;
	BEGIN TRAN
		DELETE FROM @ProductAttribute
		SELECT @count1 = 0, @counter1 = 1;
		SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductAttribute', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		INSERT INTO @ProductAttribute
			EXEC sp_executesql @sqlQuery
		SELECT @count1 = COUNT(1) FROM @ProductAttribute
		WHILE @counter1 <= @count1
		BEGIN
			SELECT @uuid = uuid FROM @ProductAttribute WHERE ID = @counter1;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductAttribute_AV', @suffix), ' WHERE ownerid = ''', @uuid, '''');
		--	EXEC SQL_UTIL$execute @sqlQuery, 0;
		 EXEC sp_executesql @sqlQuery
		 PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductAttribute', @suffix),  ' WHERE uuid = ''', @uuid, '''');
		--	EXEC SQL_UTIL$execute @sqlQuery, 0;
		 EXEC sp_executesql @sqlQuery
		 PRINT @sqlQuery+'--'+ CAST(@@ROWCOUNT AS VARCHAR(25))
			SET @counter1 = @counter1 + 1;
		END
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteProductTypeObjects
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteproducttypeobjects
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--               (a). ProductAttribute_AV's owned by a given domain
--               (b). ProductType_AV's owned by a given domain
--               (c). ProductAttributes's owned by a given domain
--               (d). ProductType's owned by a given domain
--
-- Owner       : The special XCS Beehive/PowerTier user.
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteProductTypeobjects 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN

	IF dbo.sf_is_staging_table('PRODUCTTYPE') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteProductTypeObjects$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteProductTypeObjects$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deleteProductTypeObjects$deleteFromStagingTables @domainID, NULL;
	END;
END
GO

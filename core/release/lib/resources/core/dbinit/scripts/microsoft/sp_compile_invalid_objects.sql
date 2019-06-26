------------------------------------------------------------------------------------------
-- Name        : sp_compile_invalid_objects
-- Created     : Thomas Budich
-- Description : This procedure compiles all invalid database objects.
-- Input       : none
-- Output      : none
-- Example     : exec sp_compile_invalid_objects
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_compile_invalid_objects
AS
BEGIN
	SET NOCOUNT ON;
	SET ANSI_WARNINGS ON;
	DECLARE @logMessage		VARCHAR(4000),
			@aType			VARCHAR(256),
			@anObject		VARCHAR(256),
			@compileObject	NVARCHAR(256),
			@counter		INT,
			@count			INT = 1;
	DECLARE @Dependency TABLE
	(
		ID INT IDENTITY,
		objectName VARCHAR(256),
		objectType VARCHAR(10)
	);

	INSERT INTO @Dependency
	SELECT QUOTENAME(obs.name) as objectName ,
		obs.type
		FROM sys.objects obs
		INNER JOIN sys.sql_modules mods ON obs.OBJECT_ID = mods.OBJECT_ID
		WHERE obs.is_ms_shipped = 0
		AND obs.type_desc IN('SQL_STORED_PROCEDURE','AGGREGATE_FUNCTION','SQL_INLINE_TABLE_VALUED_FUNCTION','SQL_TABLE_VALUED_FUNCTION','SQL_SCALAR_FUNCTION')
		AND obs.name <> 'SP_DBMONITOR'
	UNION ALL
	SELECT 
		QUOTENAME(v.name)as objectName ,type 
		FROM sys.views v
  	
	SELECT @counter = COUNT(1) FROM @Dependency

	WHILE @count < @counter
	BEGIN
		SELECT @aType = objectType, @compileObject = objectName FROM @Dependency WHERE ID = @count
		IF @anObject = UPPER('sp_monitor')
		BEGIN
			SET @logMessage = CONCAT('Ignore ', @aType, ' ', @anObject)
			EXEC LOGGER$log @logMessage,0;
			RETURN;
		END
		ELSE IF @aType IN ('TR','P', 'FN', 'IF')
		BEGIN
			SET @logMessage = CONCAT('Compile ', @aType, ' ', @anObject)
			EXEC LOGGER$log @logMessage,0;
			EXEC sp_recompile @compileObject;
		END
		ELSE IF @aType IN ('V')
		BEGIN
			SET @logMessage = CONCAT('Refresh ', @aType, ' ', @anObject)
			EXEC LOGGER$log @logMessage,0;
			EXEC sp_refreshview @compileObject;
		END
		SET @count = @count + 1;
	END
	SET NOCOUNT OFF;
	SET ANSI_WARNINGS OFF;
END
GO
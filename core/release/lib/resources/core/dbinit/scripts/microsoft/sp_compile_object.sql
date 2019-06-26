------------------------------------------------------------------------------------------
-- Name        : sp_compile_object
-- Created     :Anand singh
-- Description : This procedure compiles given database object.
-- Input       : object_type - the object type
--               object_name - the object name
-- Output      : none
-- Example     : exec sp_compile_object 'VIEW', 'PRODUCT$S'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_compile_object
(
	@object_type VARCHAR(256),
	@object_name VARCHAR(256)
)
	 AS
BEGIN

	SET NOCOUNT ON;
	SET ANSI_WARNINGS ON;
	DECLARE @logMessage VARCHAR(4000),
			@compileObject NVARCHAR(256) = @object_name,
			@counter INT,
			@count INT = 1;
	DECLARE @Dependency TABLE
	(
		ID INT IDENTITY,
		objectName VARCHAR(256),
		objectType VARCHAR(10)
	);

	INSERT INTO @Dependency
		EXEC FindDependency ' ', @object_name;
	
	SELECT @counter = COUNT(1) FROM @Dependency
	
	WHILE @count < @counter
	BEGIN
		SELECT @object_type = objectType, @compileObject = objectName FROM @Dependency WHERE ID = @count
		IF @object_name = UPPER('sp_monitor')
		BEGIN
			SET @logMessage = CONCAT('Ignore ', @object_type, ' ', @object_name)
			EXEC LOGGER$log @logMessage,0;
			RETURN;
		END
		ELSE IF @object_type IN ('TR','P', 'FN', 'IF')
		BEGIN
			SET @logMessage = CONCAT('Compile ', @object_type, ' ', @object_name)
		EXEC LOGGER$log @logMessage,0;
			EXEC sp_recompile @compileObject;
		END
		ELSE IF @object_type IN ('V')
		BEGIN
			SET @logMessage = CONCAT('Refresh ', @object_type, ' ', @object_name)
			EXEC LOGGER$log @logMessage,0;
			EXEC sp_refreshview @compileObject;
		END
		SET @count = @count + 1;
	END
	SET NOCOUNT OFF;
	SET ANSI_WARNINGS OFF;
END
GO
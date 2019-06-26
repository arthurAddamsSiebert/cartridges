CREATE OR ALTER PROCEDURE sp_drop_constraints
(
	@tableName VARCHAR(256)
) AS
------------------------------------------------------------------------------------------
-- Name        : sp_drop_constraints
-- Created     : Surender Singh
-- Description : This procedure is used to drop all constraints for a given table.
-- Input       : tableName		The table name
-- Output      : none
-- Example     : exec sp_drop_constraints 'DOMAIN'
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @count				INT,
			@counter			INT = 1,
			@dcount				INT,
			@dcounter			INT = 1,
			@sqlQuery			NVARCHAR(3000),
			@dtableName			VARCHAR(256),
			@constraintName		VARCHAR(256);
	DECLARE @ConstraintType TABLE
	(
		ID				INT IDENTITY,
		ConstraintName	VARCHAR(256),
		TableName		VARCHAR(256)
	);
	DECLARE @DConstraintType TABLE
	(
		ID				INT IDENTITY,
		ConstraintName	VARCHAR(256),
		TableName		VARCHAR(256)
	);

	INSERT INTO @ConstraintType
		SELECT name, OBJECT_NAME(parent_object_id) FROM SYS.foreign_keys WHERE OBJECT_NAME(parent_object_id)= @tableName

	SELECT @count = COUNT(1) FROM @ConstraintType
	WHILE @counter <= @count
	BEGIN
		SELECT @constraintName = ConstraintName FROM @ConstraintType WHERE ID = @counter
		SET @sqlQuery = CONCAT('ALTER TABLE ', @tableName, ' DROP CONSTRAINT ', @constraintName);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @counter = @counter + 1;
	END

	INSERT INTO @DConstraintType
		SELECT name, OBJECT_NAME(parent_object_id) FROM SYS.foreign_keys WHERE OBJECT_NAME(referenced_object_id)= @tableName
	SELECT @dcount = COUNT(1) FROM @DConstraintType
	WHILE @dcounter <= @dcount
	BEGIN
		SELECT @constraintName = ConstraintName, @dtableName = TableName FROM @DConstraintType WHERE ID = @dcounter
		SET @sqlQuery = CONCAT('ALTER TABLE ', @dtableName, ' DROP CONSTRAINT ', @constraintName);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @dcounter = @dcounter + 1;
	END
END
GO


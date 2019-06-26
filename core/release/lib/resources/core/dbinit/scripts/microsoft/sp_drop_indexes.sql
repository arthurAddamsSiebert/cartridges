CREATE OR ALTER PROCEDURE sp_drop_indexes
(
	@suffix VARCHAR(256)
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_drop_indexes
-- Created     : Surender Singh
-- Description : This procedure is used to drop all indexes with given suffix.
-- Input       : suffix      The suffix of index name
-- Output      : none
-- Example     : exec sp_drop_indexes '_IE500'
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @count		INT,
			@counter	INT = 1,
			@index_name	VARCHAR(256),
			@tableName	VARCHAR(256),
			@sqlQuery	NVARCHAR(3000);
	DECLARE @IndexTable TABLE
	(
		ID			INT IDENTITY,
		IndexName	VARCHAR(256),
		TableName	VARCHAR(256)
	)
	INSERT INTO @IndexTable
		SELECT name, OBJECT_NAME(object_id) FROM sys.indexes
			WHERE (OBJECT_NAME(object_id) LIKE '%$1' OR OBJECT_NAME(object_id)  LIKE '%$2') AND name LIKE ('%' + @suffix)
	SELECT @count = COUNT(1) FROM @IndexTable
	WHILE @counter <= @count
	BEGIN
		SELECT @index_name = IndexName, @tableName = TableName FROM @IndexTable WHERE ID = @counter
		SET @sqlQuery = CONCAT('DROP INDEX IF EXISTS ', @index_name , ' ON ', @tableName);
		PRINT @sqlQuery
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @counter = @counter + 1;
	END
END
GO

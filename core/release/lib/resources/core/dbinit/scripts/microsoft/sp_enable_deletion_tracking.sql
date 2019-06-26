CREATE OR ALTER PROCEDURE sp_enable_deletion_tracking
(
	@staging_table_name VARCHAR(256)
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_enable_deletion_tracking
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure is used to enable deletion tracking behaviour
--               (deletion triggers) of a given staging table. 
--               Transactional staging processors need deletion tracking. Therefor, 
--               all deletion triggers of staging tables, that are handled by a
--               TransactionalStagingProcessor (or any sub-class of it), need to be enabled. 
--               The TransactionalSP will enable the deletion triggers of all tables, which are
--               involved in a staging process, table by table. Tables, which are not involved in 
--               a staging process, will not get their according deletion triggers enabled.
-- Input       : deletion_tracking_processor the staging processor, which
--                                           needs the deletion tracking mechanism
-- Output      : none
-- Examples    : exec sp_enable_deletion_tracking 'BASICPROFILE'
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @suffix			VARCHAR(2),
			@counter		INT = 1,
			@count			INT = 0,
			@tableName		VARCHAR(256),
			@triggerName	VARCHAR(256),
			@synonymName	VARCHAR(256);

	DECLARE @TriggerDetail TABLE
	(
		ID				INT IDENTITY,
		TriggerName		VARCHAR(256),
		TableName		VARCHAR(256),
		SynonymName	VARCHAR(256)
	);
	INSERT INTO @TriggerDetail
                SELECT tr.name, OBJECT_NAME(tr.parent_id), ss.name AS synonym_name FROM sys.triggers tr
                INNER JOIN sys.synonyms ss ON PARSENAME(ss.base_object_name, 2) COLLATE DATABASE_DEFAULT = OBJECT_NAME(parent_id) COLLATE DATABASE_DEFAULT
                INNER JOIN stagingtable st ON st.TABLENAME COLLATE DATABASE_DEFAULT = OBJECT_NAME(tr.parent_id) COLLATE DATABASE_DEFAULT
                WHERE st.tablename COLLATE DATABASE_DEFAULT = @staging_table_name COLLATE DATABASE_DEFAULT
	
	SELECT @count = COUNT(1) FROM @TriggerDetail
	WHILE @counter <= @count
	BEGIN
		DECLARE @sqlQuery NVARCHAR(3000);
		SELECT @synonymName = SynonymName, @triggerName = TriggerName, @tableName = TableName FROM @TriggerDetail WHERE ID = @counter;
		SET @sqlQuery = CONCAT('ENABLE TRIGGER ', @triggerName, ' ON ', @tableName)
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @suffix = SUBSTRING(@triggerName, LEN(@triggerName)-1, 2);
		IF @suffix='$1'
			SET @suffix = '$2';
		ELSE
			SET @suffix ='$1';
		SET @sqlQuery = CONCAT('ENABLE TRIGGER ', SUBSTRING(@triggerName, 1, LEN(@triggerName) -1), @suffix, ' ON ', @tableName);
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		PRINT CONCAT('Enable deletion tracking for ', @synonymName);
		SET @counter = @counter + 1;
	END
END;
GO
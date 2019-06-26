CREATE OR ALTER PROCEDURE sp_update_deletion_tracking
(
	@deletion_tracking_processor VARCHAR(255)
) AS
------------------------------------------------------------------------------------------
-- Name        : sp_update_deletion_tracking
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure is used to update deletion tracking behaviour
--               of staging environment. Some staging processors needs deletion tracking
--               some one not. The given staging processor is the one, who needs
--               the deletion tracking mechanism. So, all deletion triggers of staging
--               tables, that are handled by this processor, are enabled. All other
--               deletion trigger are disabled. Further, the according deletion tables
--               are truncated.
-- Input       : deletion_tracking_processor the staging processor, which
--                                           needs the deletion tracking mechanism
-- Output      : none
-- Examples    : exec sp_update_deletion_tracking 'DeltaDomainSpecificStagingProcessor'
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @suffix			VARCHAR(2),
			@count			INT,
			@counter		INT = 0,
			@stmt			VARCHAR(3000),
			@triggerName	VARCHAR(255),
			@tableName		VARCHAR(255),
			@synonymName	VARCHAR(255),
			@sqlQuery		NVARCHAR(3000);
	DECLARE @triggerInfo TABLE
	(
		ID						INT IDENTITY,
		TriggerName				VARCHAR(255),
		TableName				VARCHAR(255),
		SynonymName				VARCHAR(255),
		StagingProcessorName	NVARCHAR(1000)
	)

	INSERT INTO @triggerInfo
				SELECT t.name, OBJECT_NAME(t.parent_id), PARSENAME(s.base_object_name, 1), g.stagingprocessorname
                 FROM sys.triggers t, sys.synonyms s, staginggroup g, stagingtable st
                WHERE t.name = PARSENAME(s.base_object_name, 1)
                  AND PARSENAME(s.base_object_name, 1)= st.tablename
                  AND st.staginggroupid=g.uuid
				  AND g.stagingprocessorname = @deletion_tracking_processor

	SELECT @count = COUNT(1) FROM @triggerInfo
	WHILE @counter <= @count
	BEGIN
		SELECT @tableName = TableName, @triggerName = TriggerName, @synonymName = SynonymName FROM @triggerInfo	WHERE ID = @counter;
		SET @stmt= CONCAT('Enable deletion tracking for ', @synonymName);
		PRINT @stmt;
		SET @sqlQuery = CONCAT('ENABLE TRIGGER ', @triggerName,' ON ', @tableName);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @suffix = SUBSTRING(@triggerName, LEN(@triggerName) - 1, 2);
		IF @suffix = '$1' 
			SET @suffix ='$2';
		ELSE
			SET @suffix ='$1';
		SET @sqlQuery = CONCAT('ENABLE TRIGGER ', SUBSTRING(@triggerName, 1, LEN(@triggerName)-2), @suffix,' ON ', @tableName);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @counter = @counter + 1;
	END
END
GO
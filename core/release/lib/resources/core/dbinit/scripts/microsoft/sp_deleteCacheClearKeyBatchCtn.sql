CREATE OR ALTER PROCEDURE sp_deleteCacheClearKeyBatchCtn
(
  @olderThan NUMERIC         -- the number of days afterwards the syncmessageresponses expire
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteCacheClearKeyBatchCtn
-- History     : user             date       - desc
--             : ...
-- Created     : Anand singh
-- Description : This procedure deletes all cacheclearkeybatchcontainers which don't have a
--               desiredcachecleardate and are older than given number
--               of days
-- Input       : olderThan - the number of days afterwards the cacheclearkeybatchcontainers expire
-- Output      : none
-- Example     : exec sp_deleteCacheClearKeyBatchCtn 14
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @stmt_comment	VARCHAR(500) = CONCAT(' /* sp_deleteCacheClearKeyBatchCtn(', @olderThan, ') */ '),
			@sqlQuery		NVARCHAR(3000),
			@rowCount		INT;
	BEGIN TRAN
		--
		-- delete cacheclearkeybatchcontainers
		--
		SET @sqlQuery = CONCAT('DELETE cckbc' , @stmt_comment, 'FROM cacheclearkeybatchcontainer cckbc ','WHERE cckbc.desiredcachecleardate IS NULL AND ','cckbc.creationdate < (GETUTCDATE() - ', @olderThan, ')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @rowCount = @@ROWCOUNT
		SET @stmt_comment = CONCAT(RIGHT(REPLICATE(' ', 32)+ 'syncmessageresponse: ',32), LEFT(CAST(@rowCount AS INT) + REPLICATE(' ', 10), 10), ' rows deleted.')
		EXEC LOGGER$log @stmt_comment, 0;
	COMMIT;
END
GO
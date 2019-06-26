CREATE OR ALTER PROCEDURE sp_deleteSyncMessageResponses
(
    @olderThan NUMERIC         -- the number of days afterwards the syncmessageresponses expire
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteSyncMessageResponses
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes all syncmessageresponses which are older than 
--               given number of days
-- Input       : olderThan - the number of days afterwards the syncmessageresponses expire
-- Output      : none
-- Example     : exec sp_deleteSyncMessageResponses 14
------------------------------------------------------------------------------------------
BEGIN
	SET NOCOUNT ON;
	DECLARE @stmt_comment	VARCHAR(500) = CONCAT(' /* sp_deleteSyncMessageResponses(', @olderThan, ') */ '),
			@sqlQuery		NVARCHAR(3000),
			@rowCount		INT;
	--
	-- delete syncmessageresponses
	--
	BEGIN TRAN
		SET @sqlQuery = CONCAT(
			'DELETE smr ', @stmt_comment, 'FROM syncmessageresponse smr ',
			'WHERE smr.lastmodified IS NULL ',
			'OR smr.lastmodified < (GETUTCDATE() - ', @olderThan, ')');
		EXEC SP_EXECUTESQL  @sqlQuery
		SET @rowCount = @@ROWCOUNT
		SET @stmt_comment = CONCAT(RIGHT(REPLICATE(' ', 32)+ 'syncmessageresponse: ',32), LEFT(CAST(@rowCount AS INT) + REPLICATE(' ', 10), 10), ' rows deleted.')
		EXEC LOGGER$log @stmt_comment, 0;
	COMMIT;
END
GO


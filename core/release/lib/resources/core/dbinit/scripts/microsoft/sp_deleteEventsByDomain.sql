------------------------------------------------------------------------------------------
-- Name        : sp_deleteEventsByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
--             :
-- Created     : Anand Singh
-- Description : This procedure deletes business pipeline event infos.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteEventsByDomain$deleteFromStagingTables 'domainid'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteEventsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('businesseventpipelineinfo', @suffix),' WHERE domainid = ''', @in_domainid, '''' );
    EXEC SQL_UTIL$execute @sqlQuery, 0
END;
GO

------------------------------------------------------------------------------------------
-- Name        : sp_deleteEventsByDomain
-- History     : user             date       - desc
--             : ...
--             : 
-- Created     : Anand Singh
-- Description : This procedure deletes business event infos.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteEventsByDomain '00534'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteEventsByDomain 
(
	@domainID NVARCHAR(30)
)
AS
BEGIN
	--
	--  Delete only pipeline info. Business event infos are always in system domain.
	--
	IF dbo.sf_is_staging_table('businesseventpipelineinfo') =1
	BEGIN
		EXEC sp_deleteEventsByDomain$deleteFromStagingTables @domainid, '$1';
		EXEC sp_deleteEventsByDomain$deleteFromStagingTables @domainid, '$2';
	END
	ELSE
		EXEC sp_deleteEventsByDomain$deleteFromStagingTables @domainid, null;
END 
GO

CREATE OR ALTER PROCEDURE sp_deletePriceEventByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('ProductPriceChangeEvent', @suffix), ' WHERE domainid = ''', @in_domainID, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deletePriceEventByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceEventByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes product price change events.
-- Input       : in_domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deletePriceEventByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('ProductPriceChangeEvent') = 1
	BEGIN
		EXEC sp_deletePriceEventByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deletePriceEventByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		EXEC sp_deletePriceEventByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
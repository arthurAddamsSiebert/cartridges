CREATE OR ALTER PROCEDURE sp_deletePreferencesByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
------------------------------------------------------------------------------------------
-- Name        : sp_deletePreferencesByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes preferences and used by sp_deletePreferencesByDomain.
-- Input       : domainID   The domain id of the deleted domain.
--				 suffix     for the table, if any.
-- Output      : none
-- Example     : exec sp_deletePreferencesByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Preference', @suffix), ' WHERE domainid = ''', @in_domainid,'''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
    COMMIT;
END
GO

CREATE OR ALTER PROCEDURE sp_deletePreferencesByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deletePreferencesByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes preferences.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deletePreferencesByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('Preference') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deletePreferencesByDomain$deleteFromStagingTables @domainid, '$1';
		EXEC sp_deletePreferencesByDomain$deleteFromStagingTables @domainid, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deletePreferencesByDomain$deleteFromStagingTables @domainid, NULL;
	END
END
GO

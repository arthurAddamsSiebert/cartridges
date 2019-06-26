CREATE OR ALTER PROCEDURE sp_deleteLabelByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteLabelByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in staging scenario
-- Input       : domainID - The domain ID of the "to be removed" Domain.
--				 suffix   - suffix for the table.
-- Output      : none
-- Example     : exec sp_deleteLabelByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('LabelLabelAssignment', @suffix), ' WHERE domainid = ''', @in_domainid, '''')
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'Label', 'Label_AV', @suffix, @in_domainid, 'domainid';
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteLabelByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteLabelByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * LabelLabelAssignments
-- * Label
-- * Label_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteLabelByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('Label') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteLabelByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteLabelByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteLabelByDomain$deleteFromStagingTables @domainID, NULL;
END

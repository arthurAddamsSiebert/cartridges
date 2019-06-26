------------------------------------------------------------------------------------------
-- Name        : deleteJournalByDomain_deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes SnapShotData 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec deleteJournalByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE deleteJournalByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
	EXEC sp_genericPoAvDeleteByDomain 'JournalEntry', 'JournalEntry_AV', @suffix, @in_domainid, 'domainid';

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SnapShotData', @suffix), ' WHERE domainid=''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : deleteJournalByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * JournalEntry
-- * JournalEntryAttributeValue
-- * SnapshotData
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteJournalByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteJournalByDomain 
(
	@domainID  NVARCHAR(30)
)
AS
BEGIN

	IF dbo.sf_is_staging_table('JournalEntry') = 1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC deleteJournalByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC deleteJournalByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC deleteJournalByDomain$deleteFromStagingTables @domainID, null;
	END;
END 
GO
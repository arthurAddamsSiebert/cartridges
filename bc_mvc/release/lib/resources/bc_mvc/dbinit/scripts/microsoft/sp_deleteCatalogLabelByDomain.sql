------------------------------------------------------------------------------------------
-- Name        : deleteCatalogLabelByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : clean up tables in staging scenario and called by sp_deleteCatalogLabelByDomain
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteCatalogLabelByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategoryLabelAssignment', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductLabelAssignment', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
    COMMIT;
END;
GO

CREATE OR ALTER PROCEDURE sp_deleteCatalogLabelByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteCatalogLabelByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * CatalogCategoryLabelAssignment
-- * ProductLabelAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCatalogLabelByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('CatalogCategoryLabelAssignment') = 1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC sp_deleteCatalogLabelByDomain$deleteFromStagingTables @domainID,'$1';
		EXEC sp_deleteCatalogLabelByDomain$deleteFromStagingTables @domainID,'$2';
	END
	ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC sp_deleteCatalogLabelByDomain$deleteFromStagingTables @domainID, null;
	END;

END
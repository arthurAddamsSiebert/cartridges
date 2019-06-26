------------------------------------------------------------------------------------------
-- Name        : sp_deletePEPAByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario and used by sp_deletePEPAByDomain
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deletePEPAByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Product_PEPA',            @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CatalogCategory_PEPA',    @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deletePEPAByDomain
(
	@domainID NVARCHAR(30)
)
AS
BEGIN
	IF dbo.sf_is_staging_table('PageletEntryPoint') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deletePEPAByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deletePEPAByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deletePEPAByDomain$deleteFromStagingTables @domainID, null;
	END
END
GO
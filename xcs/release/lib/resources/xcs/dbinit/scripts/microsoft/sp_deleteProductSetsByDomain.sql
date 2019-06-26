CREATE OR ALTER PROCEDURE sp_deleteProductSetsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductSetsByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes product sets releated stuff and called from sp_deleteProductSetsByDomain.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductSetAssignment', @suffix), 
			' WHERE productsetuuid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductSet', @suffix), 
			' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductSetDomainAssignment', @suffix), 
			' WHERE domainid = ''', @in_domainid, ''' OR productsetuuid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('ProductSet', @suffix), 
			' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		EXEC sp_genericPoAvDeleteByDomain 'ProductSet', 'ProductSet_AV', @suffix, @in_domainid, 'domainid';
			
    COMMIT;

END;
GO
CREATE OR ALTER PROCEDURE sp_deleteProductSetsByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductSetsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes product sets releated stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteProductSetsByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('ProductSet') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteProductSetsByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteProductSetsByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteProductSetsByDomain$deleteFromStagingTables @domainID, null;
	END;
END;
GO
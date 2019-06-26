CREATE OR ALTER PROCEDURE sp_deletePriceListsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceListsByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT( 'DELETE a FROM ', dbo.STAGING$get_table_name('PriceScaleTableAssignment', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceList', @suffix), ' po
											WHERE a.pricelistuuid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT( 'DELETE a FROM ', dbo.STAGING$get_table_name('PriceListUsergroupAssignment', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceList', @suffix), ' po
											WHERE a.pricelistuuid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		EXEC sp_genericPoAvDeleteByDomain 'PriceList','PriceList_AV', @suffix, @in_domainid, 'domainid';
					
	COMMIT;

END;
GO
CREATE OR ALTER PROCEDURE sp_deletePriceListsByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceListsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * PriceLists
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePriceListsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('PriceList') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deletePriceListsByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deletePriceListsByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deletePriceListsByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
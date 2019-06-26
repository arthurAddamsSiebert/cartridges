-- clean up tables in staging scenario
CREATE OR ALTER PROCEDURE sp_deletePriceScaleByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceScaleByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario and used by sp_deletePriceScaleByDomain
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		--
		-- PriceScaleEntry
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('PriceScaleEntry_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceScaleEntry', @suffix), ' po
											WHERE av.ownerid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceScaleTable', @suffix), ' p
															WHERE po.pricescaletableid = p.uuid
															AND (p.domainid = ''', @in_domainid, ''' OR p.usergroupdomainid = ''', @in_domainid, '''))
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PriceScaleEntry', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceScaleTable', @suffix), ' p
											WHERE po.pricescaletableid = p.uuid
											AND (p.domainid = ''', @in_domainid, ''' OR p.usergroupdomainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		--
		-- PriceScaleTable, PriceScaleTableAssignment
		--
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('PriceScaleTableAssignment', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceScaleTable', @suffix), ' po
											WHERE a.pricescaletableuuid = po.uuid
												AND (po.domainid = ''', @in_domainid, ''' OR po.usergroupdomainid = ''', @in_domainid, '''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
					
		EXEC sp_genericPoAvDeleteByDomain 'PriceScaleTable','PriceScaleTable_AV', @suffix, @in_domainid, 'domainid';
		EXEC sp_genericPoAvDeleteByDomain 'PriceScaleTable','PriceScaleTable_AV', @suffix, @in_domainid, 'usergroupdomainid';

		--
		-- PriceDefinitionProductBinding
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('PriceDefinitionProdu_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceDefinitionProductBinding', @suffix), ' po
											WHERE av.ownerid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceScaleTable', @suffix), ' p
															WHERE po.pricedefinitionid = p.uuid
															AND (p.domainid = ''', @in_domainid, ''' OR p.usergroupdomainid = ''', @in_domainid, '''))
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PriceDefinitionProductBinding', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PriceScaleTable', @suffix), ' p
											WHERE po.pricedefinitionid = p.uuid
											AND (p.domainid = ''', @in_domainid, ''' OR p.usergroupdomainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deletePriceScaleByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deletePriceScaleByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * PriceScaleEntry
-- * PriceScaleEntryAttributeValue
--
-- * PriceScaleTable
-- * PriceScaleTableAttributeValue
-- * PriceScaleTableAssignment
--
-- * PriceDefinitionProductBinding
-- * PriceDefinitionProductBindingAttributeValue
--
--  owned by a given domain or referring us usergroup of the given domain
--  also removes depending PriceDefinitionProductBinding and PriceDefinitionProductBinding_AV
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePriceScaleByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('PriceScaleTable') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deletePriceScaleByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deletePriceScaleByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deletePriceScaleByDomain$deleteFromStagingTables @domainID, null;
	END;

END
GO
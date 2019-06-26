------------------------------------------------------------------------------------------
-- Name        : sp_deleteDataMappingByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes data from staging table and used by sp_deleteDataMappingByDomain
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteDataMappingByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductDataMappingRu_AV', @suffix) , 
			' WHERE ownerid IN (SELECT mr.uuid FROM ', dbo.STAGING$get_table_name('ProductDataMappingRule', @suffix) ,  ' mr ' , 
				'JOIN ', dbo.STAGING$get_table_name('ProductDataDeclaration', @suffix) ,  ' dd ' , 
				'ON (mr.sourcedeclarationid = dd.uuid OR targetdeclarationid = dd.uuid)' , 
					' WHERE dd.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE mr FROM ', dbo.STAGING$get_table_name('ProductDataMappingRule', @suffix) ,  ' mr ' , 
			' WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ProductDataDeclaration', @suffix) ,  ' dd ' , 
							' WHERE (dd.uuid = mr.sourcedeclarationid OR dd.uuid = mr.targetdeclarationid) AND dd.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'ProductDataDeclaration', 'ProductDataDeclarati_AV', @suffix, in_domainid, 'domainid';

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductDataDeclarationList', @suffix) , 
			' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ProductDataMappingRuleSet', @suffix) , 
			' WHERE domainid = ''', @in_domainid, ''' OR providingdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteDataMappingByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteDataMappingByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * ProductDataDeclaration
-- * ProductDataDeclarationList
-- * ProductDataMappingRule
-- * ProductDataMappingRuleSet
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteDataMappingByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('ProductDataDeclaration') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteDataMappingByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteDataMappingByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteDataMappingByDomain$deleteFromStagingTables @domainID, null;
    END
END
GO
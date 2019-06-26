------------------------------------------------------------------------------------------
-- Name        : sp_deleteBudgetByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : ANAND SINGH
-- Description : This procedure deletes BudgetPeriod AND  BudgetPeriod_AV related table
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteBudgetByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteBudgetByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	SET @sqlQuery = 'DELETE FROM '+dbo.STAGING$get_table_name('BudgetPeriod_AV', @suffix)+' 
						WHERE EXISTS (SELECT 1 FROM '+dbo.STAGING$get_table_name('BudgetPeriod', @suffix)+' po
										WHERE  '+dbo.STAGING$get_table_name('BudgetPeriod_AV', @suffix)+'.ownerid = po.uuid
											AND EXISTS (SELECT 1 FROM '+dbo.STAGING$get_table_name('Budget', @suffix)+' p
													WHERE po.budgetid = p.uuid AND p.domainid='''+@in_domainid+'''))'
	EXEC SP_EXECUTESQL @sqlQuery;

	SET @sqlQuery ='DELETE FROM '+dbo.STAGING$get_table_name('BudgetPeriod', @suffix)+' 
						WHERE EXISTS (SELECT 1 FROM '+dbo.STAGING$get_table_name('Budget', @suffix)+' p
								WHERE '+dbo.STAGING$get_table_name('BudgetPeriod', @suffix)+'.budgetid = p.uuid AND p.domainid='''+@in_domainid+''')'
	PRINT @sqlQuery
	EXEC SP_EXECUTESQL   @sqlQuery 

	-- Budget
	EXEC sp_genericPoAvDeleteByDomain 'Budget','Budget_AV', @suffix, @in_domainid, 'domainid';	
	-- BudgetPeriod
	EXEC sp_genericPoAvDeleteByDomain 'BudgetPeriod','BudgetPeriod_AV', @suffix, @in_domainid, 'domainid';	
END;
GO

------------------------------------------------------------------------------------------
-- Name        : sp_deleteBudgetByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * Budget
-- * BudgetAttributeValue
-- * BudgetPeriod
-- * BudgetPeriodAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteBudgetByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
CREATE  OR ALTER PROCEDURE sp_deleteBudgetByDomain 
(
	@domainID  VARCHAR(30)
)
AS  
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('Budget')=1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC  sp_deleteBudgetByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteBudgetByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC sp_deleteBudgetByDomain$deleteFromStagingTables @domainID, null;
    END;
END
GO
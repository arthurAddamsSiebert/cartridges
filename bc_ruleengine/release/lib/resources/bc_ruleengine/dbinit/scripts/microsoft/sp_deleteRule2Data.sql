------------------------------------------------------------------------------------------
-- Name        : sp_deleteRule2Data_deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : ANAND SINGH
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRule2Data$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteRule2Data$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	    
	SET @sqlQuery =  CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_Binding', @suffix), ' WHERE domainid = ''', @in_domainid,'''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_BoundObject', @suffix), ' WHERE domainid  = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0
       
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleExprBoundObjAssignM', @suffix), ' WHERE ruleexpressionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_Expression', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
       
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_Expression_AV', @suffix), ' WHERE OwnerID IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_Expression', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_Expression', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RHSACTION', @suffix), ' WHERE domainid =''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RHSOperationPA_AV', @suffix), ' WHERE OwnerID IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_RHSOperation', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RHSOperation', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RHSOperationParameter', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_Rule', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleAttribute', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleFunction_AV', @suffix), ' WHERE OwnerID IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_RuleFunction', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleFunction', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleLHS', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleExprBoundObjAssignM', @suffix), ' WHERE ruleexpressionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_Expression', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RulePckgRuleFnctionAssig', @suffix), ' WHERE rulepackageid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_RulePackage', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RulePackageRuleAssignmen', @suffix), ' WHERE rulepackageid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Rule2_RulePackage', @suffix), ' WHERE domainid=''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RulePackage', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Rule2_RuleRHS', @suffix), ' WHERE domainid =''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRule2Data
-- History     : user             date       - desc
--  
-- Created     : Anand Singh
-- Description : This procedure deletes rule2 related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteRule2Data 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
CREATE OR ALTER  PROCEDURE sp_deleteRule2Data 
(
	@domainid VARCHAR(30) 
)
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('Rule2_Rule') =1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
        
		EXEC  sp_deleteRule2Data$deleteFromStagingTables @domainID, '$1';
		EXEC  sp_deleteRule2Data$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC  sp_deleteRule2Data$deleteFromStagingTables @domainID, null;
	END;
END;
GO


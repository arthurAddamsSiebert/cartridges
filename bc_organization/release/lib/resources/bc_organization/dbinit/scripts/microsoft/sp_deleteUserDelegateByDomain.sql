------------------------------------------------------------------------------------------
-- Name        : sp_deleteUserDelegateByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes BudgetPeriod AND  BudgetPeriod_AV related table
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteUserDelegateByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteUserDelegateByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	-- ChannelType
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('UserDelegation', @suffix), ' WHERE domainid=''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0;
END
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteUserDelegateByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * UserDelegation
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteUserDelegateByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------

CREATE OR ALTER  PROCEDURE sp_deleteUserDelegateByDomain 
(
	@domainID  NVARCHAR(30)
)
AS
BEGIN
	IF dbo.sf_is_staging_table('UserDelegation') =1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC sp_deleteUserDelegateByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteUserDelegateByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM  original table
		EXEC sp_deleteUserDelegateByDomain$deleteFromStagingTables @domainID, null ;
	END
END
GO
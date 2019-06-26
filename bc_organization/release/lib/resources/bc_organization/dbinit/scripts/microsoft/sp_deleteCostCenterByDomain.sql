CREATE OR ALTER PROCEDURE sp_deleteCostCenterByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteCostCenterByDomain$deleteFromOriginalTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in staging scenario and used by sp_deleteCostCenterByDomain
-- Input       : domainID - The domain ID of the "to be removed" Domain.
--				 suffix   - suffix for the table.
-- Output      : none
-- Example     : exec sp_deleteCostCenterByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('OrganizationGroupAssi', @suffix),
		' WHERE ao_uuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('CostCenter', @suffix), 
		' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('CostCenter_RA', @suffix),
		' WHERE objectuuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('CostCenter', @suffix),
		' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'CostCenter','CostCenter_AV', @suffix, @in_domainid, 'domainid';
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('OrganizationGroupAssi', @suffix),
		' WHERE usergroupdomainid = ''', @in_domainid, '''')
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;
END
GO
-- clean up tables in original scenario
CREATE OR ALTER PROCEDURE sp_deleteCostCenterByDomain$deleteFromOriginalTables(@in_domainid NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteCostCenterByDomain$deleteFromOriginalTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in original scenario and used by sp_deleteCostCenterByDomain
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCostCenterByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		-- REWORK: remove this 'if'-branch if CostCenters are staged!!!
		-- but keep the 'else'-branch!!!
		IF dbo.sf_is_staging_table('OrganizationGroupAssignment') = 1
		BEGIN
			SET @sqlQuery = CONCAT('DELETE FROM OrganizationGroupAssi$1 WHERE objectuuid IN (SELECT uuid FROM CostCenter WHERE domainid = ''', @in_domainid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0
			SET @sqlQuery = CONCAT('DELETE FROM OrganizationGroupAssi$2 WHERE objectuuid IN (SELECT uuid FROM CostCenter WHERE domainid = ''', @in_domainid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0
			SET @sqlQuery = CONCAT('DELETE FROM OrganizationGroupAssi$1 WHERE usergroupdomainid = ''', @in_domainid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0
			SET @sqlQuery = CONCAT('DELETE FROM OrganizationGroupAssi$2 WHERE usergroupdomainid = ''', @in_domainid, ''')');
			EXEC SQL_UTIL$execute @sqlQuery, 0
		END
		ELSE
		BEGIN
			DELETE FROM OrganizationGroupAssignment WHERE objectuuid IN (SELECT uuid FROM CostCenter WHERE domainid = @in_domainid);
			DELETE FROM OrganizationGroupAssignment WHERE usergroupdomainid = @in_domainid;
		END
	COMMIT;
	BEGIN TRAN
		DELETE ra FROM CostCenter_RA ra 
		INNER JOIN CostCenter I ON ra.ao_uuid = i.uuid;

		EXEC sp_genericPoAvDeleteByDomain 'CostCenter', 'CostCenter_AV', null, @in_domainid, 'domainid';
	COMMIT;
END
GO
CREATE OR ALTER PROCEDURE sp_deleteCostCenterByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteCostCenterByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * CostCenter
-- * CostCenterAttributeValue
-- * CostCenterRoleAssignment
-- * OrganizationUserGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCostCenterByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('CostCenter') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteCostCenterByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteCostCenterByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteCostCenterByDomain$deleteFromOriginalTables @domainID;
	END
END
GO
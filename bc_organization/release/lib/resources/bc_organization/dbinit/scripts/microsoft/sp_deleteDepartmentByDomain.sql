CREATE OR ALTER PROCEDURE sp_deleteDepartmentByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
------------------------------------------------------------------------------------------
-- Name        : deleteDepartmentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in staging scenario and used by sp_deleteDepartmentByDomain
-- Input       : domainID - The domain ID of the "to be removed" Domain.
--				 suffix   - The suffix for the table.
-- Output      : none
-- Example     : exec sp_deleteDepartmentByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('OrganizationGroupAssignment', @suffix), ' a
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Department', @suffix), ' po
		WHERE a.objectuuid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('Department_RA', @suffix), ' av
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Department', @suffix), ' po
		WHERE av.ao_uuid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
					
		EXEC sp_genericPoAvDeleteByDomain 'Department','Department_AV', @suffix, @in_domainid, 'domainid';	

		SET @sqlQuery = CONCAT('DELETE oga FROM ', dbo.STAGING$get_table_name('OrganizationGroupAssignment', @suffix), ' oga
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('UserGroup', @suffix), ' ug
		WHERE oga.usergroupid = ug.id AND oga.usergroupdomainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
	COMMIT;
END
GO
CREATE OR ALTER PROCEDURE sp_deleteDepartmentByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteDepartmentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Department
-- * DepartmentAttributeValue
-- * DepartmentRoleAssignment
-- * OrganizationUserGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteDepartmentByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('Department') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteDepartmentByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteDepartmentByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteDepartmentByDomain$deleteFromStagingTables @domainID, NULL;
	END
END
GO
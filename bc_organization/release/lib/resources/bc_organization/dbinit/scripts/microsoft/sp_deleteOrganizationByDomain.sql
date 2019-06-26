CREATE OR ALTER PROCEDURE sp_deleteOrganizationByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteOrganizationByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in staging scenario and used by sp_deleteOrganizationByDomain
-- Example     : exec sp_deleteOrganizationByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('OrganizationGroupAssignment', @suffix),' a
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Organization', @suffix),' po
		WHERE a.objectuuid = po.uuid
		AND (po.domainid = ''', @in_domainid , ''' OR po.organizationdomainid = ''', @in_domainid , '''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('Organization_RA', @suffix),' av
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Organization', @suffix),' po
		WHERE av.ao_uuid = po.uuid
		AND (po.domainid = ''', @in_domainid , ''' OR po.organizationdomainid = ''', @in_domainid , '''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0
					
		EXEC sp_genericPoAvDeleteByDomain 'Organization','Organization_AV', @suffix, @in_domainid, 'domainid';	
		EXEC sp_genericPoAvDeleteByDomain 'Organization','Organization_AV', @suffix, @in_domainid, 'organizationdomainid';

		SET @sqlQuery = CONCAT('DELETE oga FROM ', dbo.STAGING$get_table_name('OrganizationGroupAssignment', @suffix),' oga
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('UserGroup', @suffix),' ug
		WHERE oga.usergroupid = ug.id AND oga.usergroupdomainid = ''', @in_domainid , ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

	COMMIT;
END
GO
CREATE OR ALTER PROCEDURE sp_deleteOrganizationByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteOrganizationByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Organization
-- * OrganizationAttributeValue
-- * OrganizationRoleAssignment
-- * OrganizationUserGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteOrganizationByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('Organization') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteOrganizationByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteOrganizationByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteOrganizationByDomain$deleteFromStagingTables @domainID, NULL;
	END
END
GO
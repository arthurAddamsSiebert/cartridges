------------------------------------------------------------------------------------------
-- Name        : sp_deleteServicesByDomain$deleteServiceRepositories
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteServicesByDomain$deleteServiceRepositories 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteServicesByDomain$deleteServiceRepositories
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SERVICEREPOSITORY', @suffix), 
	' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteServicesByDomain$deleteServiceAssignments
-- History     : user             date       - desc
--             : ...
-- Created     : ANAND SINGH
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteServicesByDomain$deleteServiceAssignments 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteServicesByDomain$deleteServiceAssignments
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
 AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
    SET @sqlQuery =  CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SERVICEASSIGNMENT', @suffix),
        ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute   @sqlQuery, 0
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteServicesByDomain$deleteServicePermissions
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteServicesByDomain$deleteServicePermissions 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteServicesByDomain$deleteServicePermissions
(
	@in_domainid VARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
    SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SERVICEPERMISSION', @suffix),
        ' WHERE domainid = ''', @in_domainid, '''');
	EXEC SQL_UTIL$execute  @sqlQuery, 0
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteServicesByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteServicesByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
 CREATE OR ALTER PROCEDURE sp_deleteServicesByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	EXEC sp_deleteServicesByDomain$deleteServiceAssignments @in_domainid, @suffix;
	EXEC sp_deleteServicesByDomain$deleteServicePermissions @in_domainid, @suffix;
	EXEC sp_deleteServicesByDomain$deleteServiceRepositories @in_domainid, @suffix;
	EXEC sp_genStagPoAvDeleteByDomain 'SERVICECONFIGURATION', 'SERVICECONFIGURATION_AV', @in_domainid, 'domainid';
 END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteServicesByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure DELETEs the configured services from the tables SERVICECONFIGURATION,
--               SERVICEASSIGNMENT, SERVICEPERMISSION
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteServices 'domainid'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteServicesByDomain (@domainid NVARCHAR(30))
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('SERVICECONFIGURATION') = 1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC  sp_deleteServicesByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteServicesByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
        -- staging tables do not exist -> try to delete from original table
		EXEC  sp_deleteServicesByDomain$deleteFromStagingTables  @domainID, null;
	END;
END
GO
 

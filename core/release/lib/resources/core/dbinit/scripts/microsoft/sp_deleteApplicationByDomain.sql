------------------------------------------------------------------------------------------
-- Name        : sp_deleteApplicationByDomain$deleteJobsByApplicationID
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteApplicationByDomain$deleteJobsByApplicationID 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
 CREATE OR ALTER PROCEDURE sp_deleteApplicationByDomain$deleteJobsByApplicationID
 (
	@in_applicationid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
		-- delete from JobIntermittentTimeCondition
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('JobIntermittentTimeCondition', @suffix)+'
						WHERE uuid in (SELECT conditionid FROM ', dbo.STAGING$get_table_name('JobConfiguration', @suffix), '
						WHERE applicationid = ''', @in_applicationid, ''')');
					
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery =  CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('JobRelativeTimeCondition', @suffix)+'
						WHERE uuid in (SELECT conditionid FROM ', dbo.STAGING$get_table_name('JobConfiguration', @suffix), '
						WHERE applicationid = ''', @in_applicationid, ''')');
					
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery =  CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('JobResourceAssignment', @suffix)+'
						WHERE jobid in (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobConfiguration', @suffix), '
						WHERE applicationid = ''', @in_applicationid, ''')');
						
	EXEC SQL_UTIL$execute @sqlQuery, 0

	EXEC sp_genStagPoAvDeleteByDomain 'JobConfiguration', 'JobConfiguration_AV',@in_applicationid, 'applicationid';
END;
GO
 ------------------------------------------------------------------------------------------
-- Name        : sp_deleteApplicationByDomain$deleteApplicationRelations
-- History     : user             date       - desc
--             : ...
-- Created     : ANAND SINGH
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteApplicationByDomain$deleteServiceAssignments 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteApplicationByDomain$deleteApplicationRelations
(
	@in_applicationid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
 AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	
	SET @sqlQuery =  CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ApplicationDomainRelation', @suffix), 
        ' WHERE applicationuuid = ''', @in_applicationid, '''');
	
	EXEC SQL_UTIL$execute @sqlQuery, 0
	
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Localization_AA', @suffix), 
        ' WHERE applicationid = ''', @in_applicationid, '''');
		
	EXEC SQL_UTIL$execute @sqlQuery, 0
END;
GO
 ------------------------------------------------------------------------------------------
-- Name        : sp_deleteApplicationByDomain$deleteServicePermissions
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteApplicationByDomain$deleteServicePermissions 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteApplicationByDomain$deleteFromStagingTables
(
	@in_domainid VARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery	NVARCHAR(MAX),
			@i			INT = 1,
			@count		INT;
	
	DECLARE @tempTable TABLE (ROW INT IDENTITY(1,1), UUID NVARCHAR(30));
            
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('Application', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		
	INSERT INTO @tempTable
		EXECUTE SQL_UTIL$execute3 @sqlQuery;
	
	SELECT @count=COUNT(1) FROM @tempTable

	WHILE(@i <= @count)
	BEGIN
		DECLARE @uuid NVARCHAR(30);
		SELECT @uuid=uuid FROM @tempTable WHERE ROW=@i
		EXEC sp_deleteApplicationByDomain$deleteJobsByApplicationID @uuid, @suffix
		EXEC sp_deleteApplicationByDomain$deleteApplicationRelations @uuid, @suffix
		SET @i=@i+1;
	END
	
	EXEC sp_genStagPoAvDeleteByDomain 'Application', 'Application_AV', @in_domainid, 'domainid';
	EXEC sp_genStagPoAvDeleteByDomain 'Application', 'Application_AV', @in_domainid, 'siteid';
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteApplicationByDomain
-- History     : user             date       - desc
-- Created     : Anand Singh
-- Description : This procedure DELETEs Application tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteApplicationByDomain 'hzgKAB1OG9sAAAFerj4fpzkW'
------------------------------------------------------------------------------------------
CREATE OR ALTER  PROCEDURE sp_deleteApplicationByDomain (@domainid NVARCHAR(30))
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('ApplicationDomainRelation') =1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC  sp_deleteApplicationByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteApplicationByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
        -- staging tables do not exist -> try to delete from original table
		EXEC  sp_deleteApplicationByDomain$deleteFromStagingTables  @domainID, null;
	END;
END
GO
 

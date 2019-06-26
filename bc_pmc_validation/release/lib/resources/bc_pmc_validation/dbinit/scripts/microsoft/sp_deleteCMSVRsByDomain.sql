    -- clean up tables in staging scenario
CREATE OR ALTER PROCEDURE sp_deleteCMSVRsByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PAGELET_VR',          	@suffix), ' 
			WHERE domainid = ''', @in_domainid, ''' or configurationparameterctnrid in 
				(Select UUID from ', dbo.STAGING$get_table_name('PAGELET', @suffix), ' where domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PAGELETENTRYPOINT_VR',    @suffix), ' 
			WHERE domainid = ''', @in_domainid, ''' or configurationparameterctnrid in 
				(Select UUID from ', dbo.STAGING$get_table_name('PAGELETENTRYPOINT', @suffix), ' where domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
			
  	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SLOT_VR',           		@suffix), ' 
			WHERE domainid = ''', @in_domainid, ''' or configurationparameterctnrid in 
				(Select UUID from ', dbo.STAGING$get_table_name('SLOT', @suffix), ' where domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

  	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('VIEWCONTEXT_VR',           @suffix), ' 
			WHERE domainid = ''', @in_domainid, ''' or configurationparameterctnrid in 
				(Select UUID from ', dbo.STAGING$get_table_name('VIEWCONTEXT', @suffix), ' where domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PLACEHOLDER_VR',           @suffix), ' 
			WHERE domainid = ''', @in_domainid, ''' or placeholderid in 
				(Select UUID from ', dbo.STAGING$get_table_name('PLACEHOLDER_PPA', @suffix), ' where domainid = ''', @in_domainid, ''' union all
					Select UUID from ', dbo.STAGING$get_table_name('PLACEHOLDER_SPA', @suffix), ' where domainid = ''', @in_domainid, ''' union all
      				Select UUID from ', dbo.STAGING$get_table_name('PLACEHOLDER_PARENT', @suffix), ' where domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
    COMMIT TRAN;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteCMSVRsByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteCMSVRsByDomain
-- Description : This procedure deletes
-- * PAGELET_VR 
-- * PAGELETENTRYPOINT_VR 
-- * SLOT_VR
-- * VIEWCONTEXT_VR.
-- * PLACEHOLDER_VR
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCMSVRsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('PAGELET_VR') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteCMSVRsByDomain$deleteFromStagingTables domainID, '$1';
		EXEC sp_deleteCMSVRsByDomain$deleteFromStagingTables domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteCMSVRsByDomain$deleteFromStagingTables @domainID, null;
	END
END
GO
CREATE OR ALTER PROCEDURE sp_deleteJobsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	
	-- Process
	SET @sqlQuery = CONCAT('UPDATE RA',' SET jobuuid = NULL FROM ', dbo.STAGING$get_table_name('Process', null), ' RA ',
			' WHERE jobuuid IN (SELECT uuid FROM  ', dbo.STAGING$get_table_name('JobConfiguration',@suffix), ' WHERE domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0

	-- JobIntermittentTimeCondition
	SET @sqlQuery = CONCAT('DELETE  RA FROM ' , dbo.STAGING$get_table_name('JobConfiguration_AV', @suffix),' RA',
			' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobConfiguration', @suffix),
			' WHERE conditionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobIntermittentTimeCondition', @suffix),
			' WHERE domainid = ''', @in_domainid, '''))' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA FROM ', dbo.STAGING$get_table_name('JobResourceAssignment',@suffix),' RA',
			' WHERE jobid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobConfiguration',@suffix),
			' WHERE conditionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobIntermittentTimeCondition',@suffix),
			' WHERE domainid = ''', @in_domainid, '''))' );
	EXEC SQL_UTIL$execute @sqlQuery, 0
	
	SET @sqlQuery = CONCAT('DELETE RA FROM ' , dbo.STAGING$get_table_name('JobConfiguration',@suffix),' RA',
			' WHERE conditionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobIntermittentTimeCondition',@suffix),
			' WHERE domainid = ''', @in_domainid, ''')' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA FROM ',  dbo.STAGING$get_table_name('JobIntermittentTimeCondition',@suffix),' RA',
			' WHERE domainid = ''', @in_domainid, '''' );
	EXEC SQL_UTIL$execute @sqlQuery, 0
	------
	------ JobRelativeTimeCondition
	------
	SET @sqlQuery = CONCAT('DELETE RA FROM ',dbo.STAGING$get_table_name('JobConfiguration_AV',@suffix),' RA',
			' WHERE ownerid IN (SELECT uuid FROM ',dbo.STAGING$get_table_name('JobConfiguration',@suffix),
			' WHERE conditionid IN (SELECT uuid FROM ',dbo.STAGING$get_table_name('JobRelativeTimeCondition',@suffix),
			' WHERE domainid = ''', @in_domainid, '''))' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE  RA FROM ',  dbo.STAGING$get_table_name('JobResourceAssignment',@suffix),' RA',
			' WHERE jobid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobConfiguration',@suffix),
			' WHERE conditionid IN (SELECT uuid FROM ' ,dbo.STAGING$get_table_name('JobRelativeTimeCondition',@suffix),
			' WHERE domainid = ''', @in_domainid, '''))' );
	EXEC SQL_UTIL$execute @sqlQuery, 0
			
	SET @sqlQuery = CONCAT('DELETE RA  FROM ',  dbo.STAGING$get_table_name('JobConfiguration',@suffix),' RA',
			' WHERE conditionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('JobRelativeTimeCondition',@suffix),
			' WHERE domainid = ''', @in_domainid, ''')' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA  FROM ',dbo.STAGING$get_table_name('JobRelativeTimeCondition',@suffix),' RA',
	' WHERE domainid = ''', @in_domainid, '''' );
	EXEC SQL_UTIL$execute @sqlQuery, 0
	------
	------ JobResourceAssignment
	------
	SET @sqlQuery = CONCAT('DELETE RA FROM ' , dbo.STAGING$get_table_name('JobResourceAssignment',@suffix) ,' RA',
	' WHERE jobid IN (SELECT uuid FROM ' ,dbo.STAGING$get_table_name('JobConfiguration',@suffix),
	' WHERE domainid = ''', @in_domainid, ''')' );
	EXEC SQL_UTIL$execute @sqlQuery, 0
	------
	------ JobConfiguration
	------
	EXEC sp_genericPoAvDeleteByDomain 'JobConfiguration', 'JobConfiguration_AV', @suffix, @in_domainid, 'domainid';
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_DeleteJobsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand singh
-- Description : This procedure DELETEs Job tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_DeleteJobsByDomain 'FSDF2345234234SDSAFSDF'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteJobsByDomain (@domainID  VARCHAR(250))
AS
BEGIN
	IF dbo.sf_is_staging_table('JobConfiguration') =1
	BEGIN
		EXEC sp_deleteJobsByDomain$deleteFromStagingTables @domainid, '$1';
		EXEC sp_deleteJobsByDomain$deleteFromStagingTables @domainid, '$2';
	END
	ELSE
		EXEC sp_deleteJobsByDomain$deleteFromStagingTables @domainid, null;
END
GO
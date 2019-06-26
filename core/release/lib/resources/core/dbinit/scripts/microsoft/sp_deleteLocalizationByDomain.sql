CREATE OR ALTER PROCEDURE sp_deleteLocalizationByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
 )
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);

	SET @sqlQuery = CONCAT('DELETE RA FROM ' ,dbo.STAGING$get_table_name('Localization_AA', @suffix),' RA',
	' WHERE domainid in (SELECT repositoryDomainID FROM ' ,dbo.STAGING$get_table_name('LocalizationRepository', @suffix),
	' WHERE domainid = ''', @in_domainid, ''')' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA  FROM ' ,dbo.STAGING$get_table_name('Localization_AA', @suffix),' RA',
	' WHERE applicationid in (SELECT uuid FROM ' ,dbo.STAGING$get_table_name('Application',@suffix),
	' WHERE siteid = ''', @in_domainid, ''')' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA FROM ' ,dbo.STAGING$get_table_name('LocalizationEntry', @suffix),' RA',
	' WHERE domainid in (SELECT repositoryDomainID FROM ' ,dbo.STAGING$get_table_name('LocalizationRepository', @suffix),
	' WHERE domainid = ''', @in_domainid, ''')' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA FROM ' ,dbo.STAGING$get_table_name('LocalizationEntry', @suffix),' RA',
	' WHERE domainid = ''', @in_domainid, '''' );
	EXEC SQL_UTIL$execute @sqlQuery, 0

	SET @sqlQuery = CONCAT('DELETE RA FROM ' ,dbo.STAGING$get_table_name('LocalizationRepository', @suffix),' RA',
	' WHERE domainid = ''', @in_domainid, '''' );
	EXEC SQL_UTIL$execute @sqlQuery, 0    
END;
GO

CREATE OR ALTER PROCEDURE sp_deleteLocalizationByDomain (@domainID  VARCHAR(250))

------------------------------------------------------------------------------------------
-- Name        : sp_deleteLocalizationByDomain
-- History     : user             date       - desc
--             : 
--               
-- Created     : Anand Singh
-- Description : This procedure DELETEs Localization tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteLocalizationByDomain 'ASDASDASDASD2342342342'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('Localization_AA') =1
	BEGIN
		EXEC sp_deleteLocalizationByDomain$deleteFromStagingTables @domainid, '$1';
		EXEC sp_deleteLocalizationByDomain$deleteFromStagingTables @domainid, '$2';
	END
	ELSE
		EXEC sp_deleteLocalizationByDomain$deleteFromStagingTables @domainid, null;
END
GO
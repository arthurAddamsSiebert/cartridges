------------------------------------------------------------------------------------------
-- Name        : sp_deleteGeoObjectsByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteGeoObjectsByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteGeoObjectsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	-- GEOREFERENCES --
	-- STATEPROVINCE
	EXEC sp_genericPoAvDeleteByDomain 'STATEPROVINCE','STATEPROVINCE_AV', @suffix, @in_domainid, 'domainid';	
	-- LOCATION
	--
	EXEC sp_genericPoAvDeleteByDomain 'LOCATION','LOCATION_AV', @suffix, @in_domainid, 'domainid';	
	--
	-- COUNTRY
	--
	EXEC sp_genericPoAvDeleteByDomain 'COUNTRY','COUNTRY_AV', @suffix, @in_domainid, 'domainid';	
		-------------------
	-- REGION        --
	-------------------
	--
	-- REGIONASSIGNMENT
	--
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('REGIONGEOOBJECTASSIGNMENT', @suffix),
		' WHERE regionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('REGION', @suffix), ' WHERE domainid = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('REGIONASSIGNMENT', @suffix), 
		' WHERE excludedregionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('REGION', @suffix), ' WHERE domainid  = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0  

	SET @sqlQuery =CONCAT('DELETE FROM  ', dbo.STAGING$get_table_name('REGIONASSIGNMENT', @suffix), ' WHERE excludingregionid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('REGION',@suffix)+' WHERE domainid  = ''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
	--
	-- REGION
	--
	EXEC sp_genericPoAvDeleteByDomain 'REGION','REGION_AV', @suffix, @in_domainid, 'domainid';		
END;
GO
------------------------------------------------------------------------------------------
--
-- Name        : sp_deleteGeoObjectsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * STATEPROVINCE
-- * LOCATION
-- * COUNTRY
-- * REGIONGEOOBJECTASSIGNMENT
-- * REGIONASSIGNMENT
-- * REGION
--
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteGeoObjectsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj' 
--
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteGeoObjectsByDomain
(
	@domainID  NVARCHAR(30)
)
AS
BEGIN
	IF dbo.sf_is_staging_table('Region') =1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC sp_deleteGeoObjectsByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC  sp_deleteGeoObjectsByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC  sp_deleteGeoObjectsByDomain$deleteFromStagingTables @domainID, null;
	END
END
GO
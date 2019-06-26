--
-- This procedure removes all rows belonging to domain with given
-- uuid from staging tables.
--
CREATE OR ALTER PROCEDURE sp_deleteSharedCatalogObjects$deleteFromStagingTables
(
	@in_catalogdomainid NVARCHAR(30),
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @uuid		NVARCHAR(30),
			@uuid_len	NUMERIC = 28,
			@sqlQuery	NVARCHAR(MAX),
			@sqlCTQuery	NVARCHAR(3000);
	
	SET @sqlCTQuery = CONCAT(';WITH abc(uuid)
								AS
								(
									SELECT UUID FROM ', dbo.STAGING$get_table_name('CatalogCategory', @suffix), ' WHERE uuid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('CatalogCategory', @suffix),
									' WHERE domainid = ''', @in_catalogdomainid, ''')
									UNION ALL 
									SELECT cc.UUID FROM ', dbo.STAGING$get_table_name('CatalogCategory', @suffix), ' cc
									INNER JOIN abc a ON cc.PARENTCATEGORYID = a.uuid
								)');
	-- IMAGESETCATEGORYASSI_AV
	-- IMAGESETCATEGORYASSIGNMENT
	SET @sqlQuery = CONCAT(@sqlCTQuery, ' ', 'DELETE FROM ', dbo.STAGING$get_table_name('imagesetcategoryassi_av', @suffix), ' WHERE ownerid IN (SELECT uuid FROM  ',
							dbo.STAGING$get_table_name('imagesetcategoryassignment', @suffix), ' WHERE domainid = ''', @in_domainid, ''' AND catalogcategoryuuid IN (',
							'SELECT uuid FROM abc))');
	EXEC SQL_UTIL$execute @sqlQuery, 0;

	SET @sqlQuery = CONCAT(@sqlCTQuery, ' ', 'DELETE FROM ', dbo.STAGING$get_table_name('imagesetcategoryassignment', @suffix), ' WHERE domainid = ''', @in_domainid,
						''' AND catalogcategoryuuid IN (', 'SELECT uuid FROM abc)');
	EXEC SQL_UTIL$execute @sqlQuery, 0;

END;
GO
CREATE OR ALTER PROCEDURE sp_deleteSharedCatalogObjects
(
	@catalogDomainID NVARCHAR(30),
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteSHAREDcatalogobjectsbydomain
-- History     : user              date       - desc
--             : ...
-- Created     : Surender Singh 11/29/2017
-- Description : This procedure deletes
--               (a). imagesetcategoryassi_av's  owned by a given imagesetcategoryassignment
--               (b). imagesetcategoryassignment's owned by a given domain
-- Owner       : The special XCS Beehive/PowerTier user.
-- Input       : catalogDomainID - The domain ID of the "to be removed" catalog Domain.
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteSharedCatalogObjects '9JIKDACQpXMAAAFYuFpzoGee', 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('CatalogCategory') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteSharedCatalogObjects$deleteFromStagingTables @catalogDomainID, @DOMAINID, '$1';
		EXEC sp_deleteSharedCatalogObjects$deleteFromStagingTables @catalogDomainID, @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deleteSharedCatalogObjects$deleteFromStagingTables @catalogDomainID, @domainID, NULL;
	END;
END
GO

CREATE OR ALTER PROCEDURE deleteBrandingByDomain$deleteFromStagingTables(@in_domainid VARCHAR(56), @suffix VARCHAR(256)) AS
------------------------------------------------------------------------------------------
-- Name        : deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : clean up tables in staging scenario and used by sp_deleteBrandingByDomain
-- Input       : domainID - The domain ID of the "to be removed" Domain.
--				 suffix - the suffix for the table.
-- Output      : none
-- Example     : exec sp_deleteBrandingByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('BrandingInstallation_AV', @suffix), ' WHERE ownerid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('BrandingInstallation', @suffix), ' WHERE packageid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('BrandingPackage', @suffix), ' WHERE domainid = ''', @in_domainid, '''))')
		EXEC sp_executesql @sqlQuery
		
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('BrandingInstallation', @suffix), ' WHERE packageid IN
		(SELECT uuid FROM ', dbo.STAGING$get_table_name('BrandingPackage', @suffix), ' WHERE domainid = ''', @in_domainid, ''')')
		EXEC sp_executesql @sqlQuery

		EXEC sp_genericPoAvDeleteByDomain 'BrandingInstallation', 'BrandingInstallation_AV', @suffix, @in_domainid, 'domainid';
		EXEC sp_genericPoAvDeleteByDomain 'BrandingPackage', 'BrandingPackage_AV', @suffix, @in_domainid, 'domainid';
	COMMIT;
END
GO

CREATE OR ALTER PROCEDURE sp_deleteBrandingByDomain (@domainID VARCHAR(56))
------------------------------------------------------------------------------------------
-- Name        : deleteBrandingPackageByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * BrandingPackage
-- * BrandingPackageAttributeValue
-- * BrandingInstallation
-- * BrandingInstallationAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteBrandingByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('BrandingPackage') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC deleteBrandingByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC deleteBrandingByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC deleteBrandingByDomain$deleteFromStagingTables @domainID, NULL;
	END
END

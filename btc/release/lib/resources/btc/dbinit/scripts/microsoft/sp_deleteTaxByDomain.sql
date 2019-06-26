CREATE OR ALTER PROCEDURE sp_deleteTaxByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteTaxByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure removes all rows belonging to domain with given uuid from staging tables.
------------------------------------------------------------------------------------------
AS
BEGIN
	--
	-- avoid cyclic integrity constraint violation  - child record found, if foreign key constraints enabled
	-- TAXJURISDICTIONCONFIG <-> TAXJURISDICTION
	-- BASICTAXCLASSCONFIG   <-> BASICTAXCLASS
	--
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('taxjurisdictionconfig', @suffix), ' SET defaulttaxjurisdictionid = NULL WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('basictaxclassconfig',   @suffix), ' SET defaulttaxclassid        = NULL WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	--
	-- JurisdictionMapping
	--
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('JurisdictionMapping', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	--
	-- BasicTaxClass
	--
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('TaxRate', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('BasicTaxClass', @suffix), ' po
											WHERE a.taxclassid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		EXEC sp_genericPoAvDeleteByDomain 'BasicTaxClass', 'BasicTaxClass_AV', @suffix, @in_domainid, 'domainid';

		--
		-- TaxJurisdiction
		--
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('JurisdictionMapping', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('TaxJurisdiction', @suffix), ' po
											WHERE a.taxjurisdictionid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('TaxRate', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('TaxJurisdiction', @suffix), ' po
											WHERE a.taxjurisdictionid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
					
		EXEC sp_genericPoAvDeleteByDomain 'TaxJurisdiction', 'TaxJurisdiction_AV', @suffix, @in_domainid, 'domainid';

		--
		-- TaxJurisdictionConfig
		--

		EXEC sp_genericPoAvDeleteByDomain 'TaxJurisdictionConfig', 'TaxJurisdictionConfi_AV', @suffix, @in_domainid, 'domainid';
					
		--
		-- BasicTaxClassConfig
		--

		EXEC sp_genericPoAvDeleteByDomain 'BasicTaxClassConfig', 'BasicTaxClassConfig_AV', @suffix, @in_domainid, 'domainid';
					
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteTaxByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteTaxByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * taxrate
-- * basictaxclass_av
-- * basictaxclass
--
-- * jurisdictionmapping
-- * taxjurisdiction_av
-- * taxjurisdiction
--
-- * taxjurisdictionconfig
-- * taxjurisdictionconfi_AV
--
-- * basictaxclassconfig
-- * basictaxclassconfig_AV
--
--  owned by a given domain
--
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteTaxByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('BasicTaxClass') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteTaxByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteTaxByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteTaxByDomain$deleteFromStagingTables @domainID, null;
	END;

END
GO

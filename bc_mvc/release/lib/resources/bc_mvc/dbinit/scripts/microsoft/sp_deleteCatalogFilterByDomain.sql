------------------------------------------------------------------------------------------
-- Name        : sp_deleteCatalogFilterByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : clean up tables in staging scenario
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteCatalogFilterByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('FilterGroupAssignment', @suffix), ' a
								WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('CatalogFilter', @suffix), ' po
											WHERE a.catalogFilterID = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

        SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('FilterObjectAssignment', @suffix), ' a
								WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('CatalogFilter', @suffix), ' po
											WHERE a.catalogFilterID = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

        SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('FilterProductAssignment', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('CatalogFilter', @suffix), ' po
										WHERE a.catalogFilterID = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'CatalogFilter','CatalogFilter_AV', @suffix, @in_domainid, 'domainid';	
	COMMIT;
END
GO

CREATE OR ALTER PROCEDURE sp_deleteCatalogFilterByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteCatalogFilterByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * CatalogFilter
-- * CatalogFilter_AV
-- * FilterGroupAssignment
-- * FilterObjectAssignment
-- * FilterProductAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCatalogFilterByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
    IF dbo.sf_is_staging_table('CatalogFilter') = 1
	BEGIN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        EXEC sp_deleteCatalogFilterByDomain$deleteFromStagingTables @domainID, '$1';
        EXEC sp_deleteCatalogFilterByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        EXEC sp_deleteCatalogFilterByDomain$deleteFromStagingTables @domainID, null;
    END;
END
GO
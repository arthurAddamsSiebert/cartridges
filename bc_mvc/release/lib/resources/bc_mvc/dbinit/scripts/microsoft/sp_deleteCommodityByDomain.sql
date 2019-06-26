------------------------------------------------------------------------------------------
-- Name        : deleteCommodityByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : clean up tables in staging scenario and used by sp_deleteCommodityByDomain
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteCommodityByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('CommodityGroupAssignment', @suffix), ' a	WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('CommodityGroup', @suffix), ' po	WHERE a.CommodityGroupID = po.uuid AND po.domainid = ''', @in_domainid, ''')');			
		
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'CommodityGroup','CommodityGroup_AV', @suffix, @in_domainid, 'domainid';	

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('CommodityGroupAssignment', @suffix), ' po
							WHERE po.domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

    COMMIT;

END;
GO
CREATE OR ALTER PROCEDURE sp_deleteCommodityByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteCommodityByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * CommodityGroup
-- * CommodityGroup_AV
-- * CommodityGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCommodityByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('CommodityGroup') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteCommodityByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteCommodityByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteCommodityByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
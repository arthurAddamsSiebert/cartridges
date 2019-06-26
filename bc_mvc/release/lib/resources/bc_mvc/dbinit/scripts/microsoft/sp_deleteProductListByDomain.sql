------------------------------------------------------------------------------------------
-- Name        : deleteProductListByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario and used by sp_deleteProductListByDomain
------------------------------------------------------------------------------------------
    -- 
CREATE OR ALTER PROCEDURE sp_deleteProductListByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		-- ProductListItem
		EXEC sp_genericPoAvDeleteByDomain 'ProductListItem','ProductListItem_AV', @suffix, @in_domainid, 'domainid';	
		-- ProductList
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('ProductListUserAssignment', @suffix), ' a
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ProductList', @suffix), ' po
											WHERE a.productListUUID = po.uuid AND po.domainid = ''', @in_domainid,''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'ProductListEvent','ProductListEvent_AV', @suffix, @in_domainid, 'domainid';

		EXEC sp_genericPoAvDeleteByDomain 'ProductList','ProductList_AV', @suffix, @in_domainid, 'domainid';
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteProductListByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductListByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ProductList
-- * ProductListAttributeValue
-- * ProductListItem
-- * ProductListItemAttributeValue
-- * ProductListUserAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteProductListByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN

    IF dbo.sf_is_staging_table('ProductList') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteProductListByDomain$deleteFromStagingTables @domainID, '$1' ;
		EXEC sp_deleteProductListByDomain$deleteFromStagingTables @domainID, '$2' ;
	END
    ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteProductListByDomain$deleteFromStagingTables @domainID, null;
    END
END
GO
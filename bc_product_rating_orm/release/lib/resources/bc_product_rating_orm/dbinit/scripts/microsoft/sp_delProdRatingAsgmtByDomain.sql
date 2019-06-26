CREATE OR ALTER PROCEDURE sp_delProdRatingAsgmtByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : deleteProductRatingAssignmentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		--
		-- ProductRatingAssignment
		--
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('ProductRatingAssignment', @suffix), ' po
								WHERE po.domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_delProdRatingAsgmtByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteProductRatingAssignmentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ProductRatingAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_delProdRatingAsgmtByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('ProductRatingAssignment') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_delProdRatingAsgmtByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_delProdRatingAsgmtByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_delProdRatingAsgmtByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
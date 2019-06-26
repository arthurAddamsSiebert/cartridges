CREATE OR ALTER PROCEDURE sp_deleteMarketingPAByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@in_table_name VARCHAR(256),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteMarketingPAByDomain
-- Description : This procedure clean up tables in staging scenario
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name(@in_table_name, @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteMarketingPAByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteMarketingPAByDomain
-- Description : This procedure deletes all marketing relevant content artifacts
--
-- * Promotion_PA
-- * ABTestGroup_PA
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteMarketingPAByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('Promotion_PA') = 1
	BEGIN
		EXEC sp_deleteMarketingPAByDomain$deleteFromStagingTables @domainID, 'Promotion_PA', '$1';
		EXEC sp_deleteMarketingPAByDomain$deleteFromStagingTables @domainID, 'Promotion_PA', '$2';
	END
	ELSE
	BEGIN
		EXEC sp_deleteMarketingPAByDomain$deleteFromStagingTables @domainID, 'Promotion_PA', null;
	END;

	IF dbo.sf_is_staging_table('ABTestGroup_PA') = 1
	BEGIN
		EXEC sp_deleteMarketingPAByDomain$deleteFromStagingTables @domainID, 'ABTestGroup_PA', '$1';
		EXEC sp_deleteMarketingPAByDomain$deleteFromStagingTables @domainID, 'ABTestGroup_PA', '$2';
	END
	ELSE
	BEGIN
		EXEC sp_deleteMarketingPAByDomain$deleteFromStagingTables @domainID, 'ABTestGroup_PA', null;
	END;
END
GO
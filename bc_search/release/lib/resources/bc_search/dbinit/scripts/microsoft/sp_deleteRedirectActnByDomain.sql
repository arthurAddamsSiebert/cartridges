CREATE OR ALTER PROCEDURE sp_deleteRedirectActnByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRedirectActionByDomain
-- History     : user             date       - desc
--             : ...
-- Description : This procedure clean up tables in staging scenario
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('RedirectAction', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteRedirectActnByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRedirectActionByDomain
-- History     : user             date       - desc
--             : ...
-- Description : This procedure deletes
-- * RedirectAction
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRedirectActionByDomain 'wvAKAB2ZWz4AAAEu.zggFNzi'
------------------------------------------------------------------------------------------
AS
BEGIN

	IF dbo.sf_is_staging_table('RedirectAction') = 1
	BEGIN
		--
		-- clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteRedirectActnByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteRedirectActnByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- no staging tables DELETE FROM
		-- original table
		--
		EXEC sp_deleteRedirectActnByDomain$deleteFromStagingTables @domainID, null;
	END;
END
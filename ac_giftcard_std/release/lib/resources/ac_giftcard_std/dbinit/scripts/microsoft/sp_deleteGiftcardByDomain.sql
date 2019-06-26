CREATE OR ALTER PROCEDURE sp_deleteGiftcardByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteGiftcardByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure clean up tables in staging scenario and used in sp_deleteGiftcardByDomain
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		-- delete data from table GiftCardTransaction matching foreign key or to be deleted domainid
		SET @sqlQuery = CONCAT('DELETE gct FROM ', dbo.STAGING$get_table_name('GiftCardTransaction', @suffix), ' gct ', 
			'WHERE gct.GiftCardUUID in (SELECT gc.uuid FROM ', dbo.STAGING$get_table_name('GiftCard', @suffix), 
			' gc WHERE gc.domainid = ''', @in_domainid, ''') OR gct.domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		EXEC sp_genStagPoAvDeleteByDomain 'GiftCard', 'GiftCard_AV', @in_domainid, 'domainid';

	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteGiftcardByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteGiftcardByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * GiftCard
-- * GiftCard_AV
--
-- * ...
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteGiftcardByDomain 'wvAKAB2ZWz4AAAEu.zggFNzi'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('GiftCard') = 1
	BEGIN
		--
		-- try to clean up staging tables (resp. tables)
		--
		EXEC sp_deleteGiftcardByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteGiftcardByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist
		-- try to delete from original table
		--
		EXEC sp_deleteGiftcardByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
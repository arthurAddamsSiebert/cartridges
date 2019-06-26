CREATE OR ALTER PROCEDURE sp_deleteDeliveryNoteByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteDeliveryNoteByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure clean up tables in staging scenario and used in sp_deleteDeliveryNoteByDomain
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genericPoAvDeleteByDomain 'DeliveryNote','DeliveryNote_AV', @suffix, @in_domainid, 'domainid';
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteDeliveryNoteByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteDeliveryNoteByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * DeliveryNotePO
-- * DeliveryNotePOAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteDeliveryNoteByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('DeliveryNote') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteDeliveryNoteByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteDeliveryNoteByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteDeliveryNoteByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
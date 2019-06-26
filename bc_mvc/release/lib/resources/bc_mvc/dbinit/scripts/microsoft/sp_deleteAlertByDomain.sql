CREATE OR ALTER PROCEDURE sp_deleteAlertByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteAlertByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Alert
-- * AlertAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteAlertByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'Alert', 'Alert_AV', @domainID, 'domainid';
    COMMIT;
END
GO
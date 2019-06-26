CREATE OR ALTER PROCEDURE sp_deleteBonusPointsByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteBonusPointsByDomain
-- History     : user             date       - desc
--             : ...
-- Description : This procedure deletes
--
-- * BonusPointAccountPO
-- * BonusPointAccountPOAttributeValuePO
-- * BonusPointEntryPO
-- * BonusPointEntryPOAttributeValuePO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteBonusPointsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'BonusPointEntry', 'BonusPointEntry_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'BonusPointAccount', 'BonusPointAccount_AV', @domainID, 'domainid';
	COMMIT;
END
GO
CREATE OR ALTER PROCEDURE sp_deletePriceDefByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceDefByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes entries of
--
-- * PriceDefinitionProductBinding
-- * PriceDefinitionProdu_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePriceDefByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'PriceDefinitionProductBinding', 'PriceDefinitionProdu_AV', @domainID, 'domainid';
    COMMIT;
END
GO
CREATE OR ALTER PROCEDURE sp_deleteSearchDefByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteSearchDefByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * SearchQueryDefinition
-- * SearchQueryDefinition_AV
--
-- * ...
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteSearchDefByDomain('wvAKAB2ZWz4AAAEu.zggFNzi')
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'SearchQueryDefinition', 'SearchQueryDefinitio_AV', @domainID, 'domainid';
	COMMIT;
END
GO
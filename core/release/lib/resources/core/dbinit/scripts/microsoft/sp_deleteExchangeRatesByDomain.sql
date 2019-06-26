CREATE OR ALTER PROCEDURE sp_deleteExchangeRatesByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteExchangeRatesByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes exchange rates.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteExchangeRatesByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'BasicExchangeRateServiceConfig', 'BasicExchangeRateSer_AV', @domainID, 'domainid';
	COMMIT;
END
GO
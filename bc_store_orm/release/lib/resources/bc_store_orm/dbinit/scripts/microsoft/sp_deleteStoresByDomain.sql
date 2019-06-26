CREATE OR ALTER PROCEDURE sp_deleteStoresByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteStoresByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh		07/31/15
-- Description : This procedure deletes
--               * Store/AV
--               owned by a given domain
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteStoresByDomain 'StoreDomainID'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'Store', 'Store_AV', @domainID, 'domainid';
	COMMIT;
END
GO

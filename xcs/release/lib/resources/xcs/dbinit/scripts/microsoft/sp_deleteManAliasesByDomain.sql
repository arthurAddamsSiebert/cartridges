CREATE OR ALTER PROCEDURE sp_deleteManAliasesByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteManAliasesByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes manufacturer aliases belonging  to the
--               domain with given domainid
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteManAliasesByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'manufacturername', 'manufacturername_av', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'manufacturernamealias', 'manufacturernamealia_av', @domainID, 'domainid';
	COMMIT;

END
GO
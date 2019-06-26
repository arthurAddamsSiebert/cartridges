CREATE OR ALTER PROCEDURE sp_deleteRegSettingsByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRegSettingsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes regional settings beloing to
--               domain with given domainid
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteRegSettingsByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'RegionalSettings', 'RegionalSettings_AV', @domainID, 'domainid';
	COMMIT;
END
GO

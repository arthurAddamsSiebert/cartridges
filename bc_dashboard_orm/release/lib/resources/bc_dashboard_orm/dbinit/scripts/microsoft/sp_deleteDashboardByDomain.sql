CREATE OR ALTER PROCEDURE sp_deleteDashboardByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteDashboardByDomain
-- History     : user              date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Dashboard
-- * DashboardAttributeValue
-- * Widget
-- * WidgetAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteDashboardByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'Widget', 'Widget_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'Dashboard', 'Dashboard_AV', @domainID, 'domainid';
	COMMIT;
END
GO
CREATE OR REPLACE PROCEDURE sp_deleteDashboardByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteDashboardByDomain
-- History     : user              date       - desc
--             : ...
--             : Hannes Rosenbauer 02/11/2014 - #IS-57 Create dashboard
-- Created     : Hannes Rosenbauer
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
-- Example     : exec sp_deleteDashboardByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

	sp_genStagPoAvDeleteByDomain('Widget', 'Widget_AV', domainID, 'domainid');
	sp_genStagPoAvDeleteByDomain('Dashboard', 'Dashboard_AV', domainID, 'domainid');
	COMMIT;

END sp_deleteDashboardByDomain;
/

show errors;

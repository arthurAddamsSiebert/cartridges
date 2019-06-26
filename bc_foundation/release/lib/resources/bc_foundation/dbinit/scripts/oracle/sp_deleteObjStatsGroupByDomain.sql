CREATE OR REPLACE PROCEDURE sp_deleteObjStatsGroupByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteObjStatsGroupByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     08/18/2011 - #ENFINITY-13459: DeleteDomainReferences: Missing
--                                             OBJECTSTATISTICSGROUP domain row deletion ...
-- Created     : Thomas Kober
-- Description : This procedure DELETEs ObjectStatisticsGroup tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteObjStatsGroupByDomain('domainid')
------------------------------------------------------------------------------------------

AS

BEGIN
    --
    -- ObjectStatisticsGroup/AV
    --
    sp_genStagPoAvDeleteByDomain('ObjectStatisticsGroup', 'ObjectStatisticsGrou_AV', domainID, 'domainid');

    commit;

END sp_deleteObjStatsGroupByDomain;
/

show errors


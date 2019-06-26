CREATE OR REPLACE PROCEDURE sp_deleteABTestByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteABTestByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * ABTestPO
-- * ABTestPOAttributeValuePO
-- * ABTestGroupPO
-- * ABTestGroupPOAttributeValuePO
-- * ABTestStatisticsPO
-- * ABTestStatisticsPOAttributeValuePO
-- * ABTestEventPO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteABTestByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    DELETE FROM ABTestEvent WHERE domainid = domainID;

    sp_genStagPoAvDeleteByDomain('ABTestStatistics', 'ABTestStatistics_AV', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('ABTestGroup', 'ABTestGroup_AV', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('ABTest', 'ABTest_AV', domainID, 'domainid');

    commit;

END sp_deleteABTestByDomain;
/

show errors;
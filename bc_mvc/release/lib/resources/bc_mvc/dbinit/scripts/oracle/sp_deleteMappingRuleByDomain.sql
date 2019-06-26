CREATE OR REPLACE PROCEDURE sp_deleteMappingRuleByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteMappingRuleByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Danny Domhardt
-- Description : This procedure deletes
--
-- * ProductMappingRule
-- * ProductMappingRule_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteMappingRuleByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('ProductMappingRule', 'ProductMappingRule_AV', domainID, 'domainid');

    commit;

END sp_deleteMappingRuleByDomain;
/

show errors;
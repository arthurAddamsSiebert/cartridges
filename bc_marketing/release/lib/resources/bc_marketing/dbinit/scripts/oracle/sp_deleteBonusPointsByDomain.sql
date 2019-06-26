CREATE OR REPLACE PROCEDURE sp_deleteBonusPointsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteBonusPointsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Description : This procedure deletes
--
-- * BonusPointAccountPO
-- * BonusPointAccountPOAttributeValuePO
-- * BonusPointEntryPO
-- * BonusPointEntryPOAttributeValuePO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteBonusPointsByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('BonusPointEntry', 'BonusPointEntry_AV', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('BonusPointAccount', 'BonusPointAccount_AV', domainID, 'domainid');

    commit;

END sp_deleteBonusPointsByDomain;
/

show errors;
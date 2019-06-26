CREATE OR REPLACE PROCEDURE sp_deleteExchangeRatesByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteExchangeRatesByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner, Thomas Budich
-- Description : This procedure deletes exchange rates.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteExchangeRatesByDomain('domainid')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('BasicExchangeRateServiceConfig', 'BasicExchangeRateSer_AV', domainID, 'domainid');

    commit;

END sp_deleteExchangeRatesByDomain;
/

show errors

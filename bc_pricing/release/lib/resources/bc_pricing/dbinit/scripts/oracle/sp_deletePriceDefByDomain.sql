CREATE OR REPLACE PROCEDURE sp_deletePriceDefByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deletePriceDefinitionByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Marcus Lenzner   10/11/2010 - #2012 PriceDefinitionPro_AV corrected to PriceDefinitionProdu_AV
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes entries of
--
-- * PriceDefinitionProductBinding
-- * PriceDefinitionProdu_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePriceDefByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('PriceDefinitionProductBinding', 'PriceDefinitionProdu_AV', domainID, 'domainid');

    commit;

END sp_deletePriceDefByDomain;
/

show errors;

CREATE OR REPLACE PROCEDURE sp_deleteSearchDefByDomain (domainID IN VARCHAR2)


------------------------------------------------------------------------------------------
-- Name        : sp_deleteSearchDefByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Thomas Kober
-- Description : This procedure deletes
--
-- * SearchQueryDefinition
-- * SearchQueryDefinition_AV
--
-- * ...
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteSearchDefByDomain('wvAKAB2ZWz4AAAEu.zggFNzi')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('SearchQueryDefinition', 'SearchQueryDefinitio_AV', domainID, 'domainid');

    commit;

END sp_deleteSearchDefByDomain;
/

show errors;


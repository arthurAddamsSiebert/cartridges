CREATE OR REPLACE PROCEDURE sp_deleteStoresByDomain (domainID IN VARCHAR2)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteStoresByDomain
-- History     : PBorchert            07/31/15       - created
--             : ...
-- Created     : 07/31/15
-- Description : This procedure deletes
--               * Store/AV
--               owned by a given domain
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletStoresByDomain('StoreDomainID')
------------------------------------------------------------------------------------------

AS

BEGIN

	sp_genStagPoAvDeleteByDomain('Store', 'Store_AV', domainID, 'domainid');
	COMMIT;

END sp_deleteStoresByDomain;
/

show errors;

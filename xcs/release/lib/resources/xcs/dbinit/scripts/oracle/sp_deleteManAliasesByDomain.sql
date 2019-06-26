CREATE OR REPLACE PROCEDURE sp_deleteManAliasesByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteManAliasesByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     : Valeska Dressler
-- Description : This procedure deletes manufacturer aliases belonging  to the
--               domain with given domainid
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteManAliasesByDomain('domainid')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('manufacturername', 'manufacturername_av', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('manufacturernamealias', 'manufacturernamealia_av', domainID, 'domainid');

    commit;

END sp_deleteManAliasesByDomain;
/

show errors

CREATE OR REPLACE PROCEDURE sp_deleteContractByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteContractByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Danny Domhardt
-- Description : This procedure deletes
--
-- * Contract
-- * Contract_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteContractByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('Contract', 'Contract_AV', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('Contract', 'Contract_AV', domainID, 'contractdomainid');

    commit;

END sp_deleteContractByDomain;
/

show errors;
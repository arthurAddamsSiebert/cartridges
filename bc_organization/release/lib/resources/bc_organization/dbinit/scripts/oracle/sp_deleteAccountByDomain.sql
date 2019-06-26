CREATE OR REPLACE PROCEDURE sp_deleteAccountByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteAccountByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--               Thomas Budich    05/13/2008 - #11449 unknown table name
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * Account
-- * AccountAttributeValue
-- * AccountTransaction
-- * AccountTransactionAttributeValue
-- * AccountTransactionBinding
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteAccountByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('AccountTransactionBinding', null)||' a
                        WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('AccountTransaction', null)||' po
                                       WHERE a.transactionid = po.uuid AND po.domainid = :domainid)'
                USING domainID;
				
	sp_genericPoAvDeleteByDomain('AccountTransaction','AccountTransaction_AV', null, domainID, 'domainid');

    COMMIT;

	sp_genStagPoAvDeleteByDomain('Account', 'Account_AV', domainID, 'domainid');

END sp_deleteAccountByDomain;
/

show errors;
------------------------------------------------------------------------------------------
-- Name        : sp_deleteAccountByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
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
-- Example     : exec sp_deleteAccountByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteAccountByDomain 
(
	@domainID  NVARCHAR(30)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
	SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('AccountTransactionBinding', null), ' a
					WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('AccountTransaction', null), ' po
					WHERE a.transactionid = po.uuid AND po.domainid=''', @domainID, ''')');

	EXEC sp_genericPoAvDeleteByDomain 'AccountTransaction','AccountTransaction_AV', null, @domainID, 'domainid';

	EXEC sp_genStagPoAvDeleteByDomain 'Account', 'Account_AV', @domainID, 'domainid';
END 
GO
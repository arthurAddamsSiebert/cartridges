CREATE OR ALTER PROCEDURE sp_deleteContractByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteContractByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Contract
-- * Contract_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteContractByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'Contract', 'Contract_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'Contract', 'Contract_AV', @domainID, 'contractdomainid';
	COMMIT;
END
GO
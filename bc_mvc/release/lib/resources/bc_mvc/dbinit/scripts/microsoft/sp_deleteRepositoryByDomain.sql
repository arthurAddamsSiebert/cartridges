CREATE OR ALTER PROCEDURE sp_deleteRepositoryByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteRepositoryByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Repository
-- * Repository_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRepositoryByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'Repository', 'Repository_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'Repository', 'Repository_AV', @domainID, 'repositorydomainid';
	COMMIT;
END
GO
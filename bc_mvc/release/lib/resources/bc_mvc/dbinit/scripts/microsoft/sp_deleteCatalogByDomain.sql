CREATE OR ALTER PROCEDURE sp_deleteCatalogByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteCatalogByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * Catalog
-- * Catalog_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCatalogByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
	    EXEC sp_genStagPoAvDeleteByDomain 'Catalog', 'Catalog_AV', @domainID, 'domainid';
	    EXEC sp_genStagPoAvDeleteByDomain 'Catalog', 'Catalog_AV', @domainID, 'catalogdomainid';
    COMMIT;
END
GO
------------------------------------------------------------------------------------------
-- Name        : deleteShortLinkByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes LinkLinkGroupAssignment 
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec deleteShortLinkByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE deleteShortLinkByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	--SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);

	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('LinkLinkGroupAssignment', @suffix), ' WHERE domainid=''', @in_domainid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0
	PRINT CONCAT(@sqlQuery,  '--',  CAST(@@ROWCOUNT AS VARCHAR(25)));

	EXEC sp_genericPoAvDeleteByDomain 'LinkGroup', 'LinkGroup_AV', @suffix, @in_domainid, 'domainid';
	EXEC sp_genericPoAvDeleteByDomain 'ShortLink', 'ShortLink_AV', @suffix, @in_domainid, 'domainid';
END;
GO

------------------------------------------------------------------------------------------
-- Name        : deleteShortLinkByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * LinkGroup
-- * LinkGroupAttributeValue
-- * LinkLinkGroupAssignment
-- * ShortLink
-- * ShortLinkAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteShortLinkByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
CREATE OR ALTER  PROCEDURE sp_deleteShortLinkByDomain 
(
	@domainID  NVARCHAR(30)
)
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('ShortLink') = 1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC deleteShortLinkByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC deleteShortLinkByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC  deleteShortLinkByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
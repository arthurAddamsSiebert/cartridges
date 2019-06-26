------------------------------------------------------------------------------------------
-- Name        : sp_deleteChannelByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : clean up tables in staging scenario
-- Example     : exec sp_deleteChannelByDomain$deleteFromStagingTables 'OK0KAB1LrH8AAADm9wC0ccmj','$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteChannelByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30), 
	@suffix VARCHAR(256)
)
AS
BEGIN
	-- ChannelType
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ApplicationTypeAssignment', @suffix), ' 
					WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ChannelType', @suffix), ' po
					WHERE ', dbo.STAGING$get_table_name('ApplicationTypeAssignment', @suffix), '.channeltypeid = po.uuid AND po.domainid =''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
	EXEC sp_genericPoAvDeleteByDomain 'ChannelType','ChannelType_AV', @suffix, @in_domainid, 'domainid';	
	-- ApplicationType
	SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ApplicationTypeAssignment', @suffix), '
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ApplicationType', @suffix), ' po
							WHERE ', dbo.STAGING$get_table_name('ApplicationTypeAssignment', @suffix), '.applicationtypeid = po.uuid AND po.domainid =''', @in_domainid, ''')');
	EXEC SQL_UTIL$execute @sqlQuery, 0
		  	
	EXEC sp_genericPoAvDeleteByDomain 'ApplicationType','ApplicationType_AV', @suffix, @in_domainid, 'domainid';
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteChannelByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * ChannelType
-- * ChannelTypeAttributeValue
-- * ApplicationType
-- * ApplicationTypeAttributeValue
-- * ApplicationTypeAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteChannelByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteChannelByDomain
(
	@domainID  NVARCHAR(30)
)
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('ChannelType') =1
	BEGIN
		-- try to clean up staging tables ($1 resp. $2 tables)
		EXEC sp_deleteChannelByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteChannelByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
		-- staging tables do not exist -> try to DELETE FROM original table
		EXEC sp_deleteChannelByDomain$deleteFromStagingTables @domainID, NULL;
    END 
END 
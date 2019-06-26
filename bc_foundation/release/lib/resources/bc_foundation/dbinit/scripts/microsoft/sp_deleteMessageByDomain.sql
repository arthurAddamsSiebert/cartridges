CREATE OR ALTER PROCEDURE sp_deleteMessageByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteMessageByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario and used by sp_deleteMessageByDomain
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		EXEC sp_genericPoAvDeleteByDomain 'MessageEnvelope', 'MessageEnvelope_AV', @suffix, @in_domainid, 'domainid';

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('MessageUserAssignment', @suffix) , 
		' WHERE messagebodyid IN (SELECT uuid FROM ' ,  dbo.STAGING$get_table_name('MessageBody', @suffix) , 
		' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('MessageUserGroupAssignment', @suffix) , 
		' WHERE messagebodyid IN (SELECT uuid FROM ' ,  dbo.STAGING$get_table_name('MessageBody', @suffix) , 
		' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		EXEC sp_genericPoAvDeleteByDomain 'MessageBody', 'MessageBody_AV', @suffix, @in_domainid, 'domainid';
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteMessageByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteMessageByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * MessageBody
-- * MessageBodyAttributeValue
-- * MessageEnvelope
-- * MessageEnvelopeAttributeValue
-- * MessageUserAssignment
-- * MessageUserGroupAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteMessageByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	IF dbo.sf_is_staging_table('MessageBody') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteMessageByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteMessageByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteMessageByDomain$deleteFromStagingTables @domainID, NULL;
END
GO
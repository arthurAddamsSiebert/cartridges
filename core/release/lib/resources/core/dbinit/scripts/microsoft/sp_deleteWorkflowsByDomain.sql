CREATE OR ALTER PROCEDURE sp_deleteWorkflowsByDomain
(
	@in_domainid NVARCHAR(30)
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteWorkflowsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes all workflow related objects belonging to
--               domain with given domainid
-- Input       : in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteWorkflowsByDomain 'domainid'
------------------------------------------------------------------------------------------

BEGIN
	BEGIN TRAN
		--
		-- delete activity user assigments
		--
		DECLARE @sqlQuery NVARCHAR(3000);
		SET @sqlQuery= CONCAT('DELETE FROM activityuserassignment', 
			' WHERE activityid IN (SELECT uuid FROM workflowactivity', 
			' WHERE processid IN (SELECT uuid FROM workflowprocess', 
			' WHERE domainid = ''', @in_domainid,'''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		--
		-- delete activity user group assigments
		--
		SET @sqlQuery= CONCAT('DELETE FROM activityusergroupassignment', 
			' WHERE activityid IN (SELECT uuid FROM workflowactivity', 
			' WHERE processid IN (SELECT uuid FROM workflowprocess', 
			' WHERE domainid = ''', @in_domainid, '''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		--
		-- delete activity
		--
		SET @sqlQuery= CONCAT('DELETE FROM workflowactivity_av',
			' WHERE ownerid IN (SELECT uuid FROM workflowactivity', 
			' WHERE processid IN (SELECT uuid FROM workflowprocess', 
			' WHERE domainid = ''', @in_domainid, '''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		SET @sqlQuery= CONCAT('DELETE FROM workflowactivity', 
			' WHERE processid IN (SELECT uuid FROM workflowprocess', 
			' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		--
		-- delete workflow threads
		--
		SET @sqlQuery= CONCAT('DELETE FROM workflowthread_av',
			' WHERE ownerid IN (SELECT uuid FROM workflowthread', 
			' WHERE processid IN (SELECT uuid FROM workflowprocess', 
			' WHERE domainid = ''', @in_domainid, '''))');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery= CONCAT('DELETE FROM workflowthread', 
			' WHERE processid IN (SELECT uuid FROM workflowprocess', 
			' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		--
		-- delete workflow process
		--
		EXEC sp_genericPoAvDeleteByDomain 'workflowprocess', 'workflowprocess_av', null, @in_domainid, 'domainid';
    COMMIT;
END
GO

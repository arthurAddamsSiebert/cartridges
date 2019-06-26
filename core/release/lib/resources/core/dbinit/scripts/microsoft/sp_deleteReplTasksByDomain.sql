CREATE OR ALTER PROCEDURE sp_deleteReplTasksByDomain (@in_domainid NVARCHAR(30)) AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteReplTasksByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes replication tasks and processes beloing to
--               domain with given domainid
-- Input       : in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteReplTasksByDomain 'domainid'
------------------------------------------------------------------------------------------
BEGIN
	BEGIN TRAN
		DELETE FROM replicationprocesstaskassign    WHERE taskid            IN (SELECT uuid FROM replicationtask WHERE domainid = @in_domainid);
		DELETE FROM replicationtaskassignment       WHERE replicationtaskid IN (SELECT uuid FROM replicationtask WHERE domainid = @in_domainid);
		DELETE FROM replicationtaskhistory          WHERE replicationtaskid IN (SELECT uuid FROM replicationtask WHERE domainid = @in_domainid);

		EXEC sp_genericPoAvDeleteByDomain 'replicationtask', 'replicationtask_av', NULL, @in_domainid, 'domainid';

		DELETE FROM replicationtaskassignment       WHERE domainid = @in_domainid;
		DELETE FROM replicationtaskhistory          WHERE domainid = @in_domainid;
	COMMIT;
END
GO

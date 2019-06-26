CREATE OR ALTER PROCEDURE sp_deleteReplicationProcesses
(
    @olderThan NUMERIC
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteReplicationProcesses
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes all replication processes older than given number
--               of days.
-- Input       : olderThan Numbers of days
-- Output      : none
-- Example     : EXEC sp_deleteReplicationProcesses 7
------------------------------------------------------------------------------------------
AS
BEGIN
    EXEC sp_deleteProcesses 'ReplicationProcess', NULL, @olderThan;
END
GO

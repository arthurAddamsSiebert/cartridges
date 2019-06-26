CREATE OR REPLACE PROCEDURE sp_deleteReplicationProcesses
(
    olderThan IN NUMBER
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteReplicationProcesses
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     06/25/2012 - #22660 Error in stored procedure sp_deleteProcesses()
--                                                    PROCESS_CO001 violated - child record found
-- Created     : Thomas Budich
-- Description : This procedure deletes all replication processes older than given number
--               of days.
-- Input       : olderThan Numbers of days
-- Output      : none
-- Example     : exec sp_deleteReplicationProcesses(7)
------------------------------------------------------------------------------------------
AS

BEGIN
    sp_deleteProcesses('ReplicationProcess', null, olderThan);
END;
/

show errors;

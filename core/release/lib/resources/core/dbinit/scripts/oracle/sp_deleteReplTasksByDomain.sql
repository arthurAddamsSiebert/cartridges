CREATE OR REPLACE PROCEDURE sp_deleteReplTasksByDomain (in_domainid IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_deleteReplTasksByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Budich    11/29/2007 - #10871 delete from replicationprocesstaskassign, too
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
--                                             and correct deletion with foreign key
--                                             constraints
-- Created     : Thomas Budich
-- Description : This procedure deletes replication tasks and processes beloing to
--               domain with given domainid
-- Input       : in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteReplTasksByDomain('domainid')
------------------------------------------------------------------------------------------

BEGIN

    DELETE FROM replicationprocesstaskassign    WHERE taskid            IN (SELECT uuid FROM replicationtask WHERE domainid = in_domainid);
    DELETE FROM replicationtaskassignment       WHERE replicationtaskid IN (SELECT uuid FROM replicationtask WHERE domainid = in_domainid);
    DELETE FROM replicationtaskhistory          WHERE replicationtaskid IN (SELECT uuid FROM replicationtask WHERE domainid = in_domainid);

	sp_genericPoAvDeleteByDomain('replicationtask', 'replicationtask_av', null, in_domainid, 'domainid');
	
    DELETE FROM replicationtaskassignment       WHERE domainid = in_domainid;
    DELETE FROM replicationtaskhistory          WHERE domainid = in_domainid;

    COMMIT;

END sp_deleteReplTasksByDomain;
/

show errors

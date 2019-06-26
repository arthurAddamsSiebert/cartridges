CREATE OR REPLACE PROCEDURE sp_deleteWorkflowsByDomain (in_domainid IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_deleteWorkflowsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
--                                             and correct deletion with foreign key
--                                             constraints
-- Created     : Peter Koch
-- Description : This procedure deletes all workflow related objects beloing to
--               domain with given domainid
-- Input       : in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteWorkflowsByDomain('domainid')
------------------------------------------------------------------------------------------

BEGIN

    --
    -- delete activity user assigments
    --
    EXECUTE IMMEDIATE 'DELETE FROM activityuserassignment'||
        ' WHERE activityid IN (SELECT uuid FROM workflowactivity'||
        ' WHERE processid IN (SELECT uuid FROM workflowprocess'||
        ' WHERE domainid = :domainid))' USING in_domainid;

    --
    -- delete activity user group assigments
    --
    EXECUTE IMMEDIATE 'DELETE FROM activityusergroupassignment'||
        ' WHERE activityid IN (SELECT uuid FROM workflowactivity'||
        ' WHERE processid IN (SELECT uuid FROM workflowprocess'||
        ' WHERE domainid = :domainid))' USING in_domainid;

    --
    -- delete activity
    --
    EXECUTE IMMEDIATE 'DELETE FROM workflowactivity_av'||
        ' WHERE ownerid IN (SELECT uuid FROM workflowactivity'||
        ' WHERE processid IN (SELECT uuid FROM workflowprocess'||
        ' WHERE domainid = :domainid))' USING in_domainid;

    EXECUTE IMMEDIATE 'DELETE FROM workflowactivity'||
        ' WHERE processid IN (SELECT uuid FROM workflowprocess'||
        ' WHERE domainid = :domainid)' USING in_domainid;

    --
    -- delete workflow threads
    --
    EXECUTE IMMEDIATE 'DELETE FROM workflowthread_av'||
        ' WHERE ownerid IN (SELECT uuid FROM workflowthread'||
        ' WHERE processid IN (SELECT uuid FROM workflowprocess'||
        ' WHERE domainid = :domainid))' USING in_domainid;

    EXECUTE IMMEDIATE 'DELETE FROM workflowthread'||
        ' WHERE processid IN (SELECT uuid FROM workflowprocess'||
        ' WHERE domainid = :domainid)' USING in_domainid;

    --
    -- delete workflow process
    --
		
	sp_genericPoAvDeleteByDomain('workflowprocess', 'workflowprocess_av', null, in_domainid, 'domainid');

    COMMIT;

END sp_deleteWorkflowsByDomain;
/

show errors

------------------------------------------------------------------------------------------
-- Name        : sp_delete_workflow_processes
-- Created     : Christian Thrum 08/22/2001
-- Description : Remove workflow processes that are older than the passed date.
-- Owner       : The special Beehive/PowerTier user.
-- Input       : completiontime
-- Output      : none
-- Example     : exec sp_delete_workflow_processes(9.594E+11)
------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE sp_delete_workflow_processes
(
  completiontime                    IN DATE,
  in_domainid                       IN VARCHAR2
)
AS
  parameter_null                    EXCEPTION;

BEGIN
  -- If Input NULL raise an EXCEPTION
  IF (completiontime IS NULL) THEN
    BEGIN
      RAISE parameter_null;
    END;
  END IF;


  -- delete workflow processes

    for p in (SELECT uuid FROM workflowprocess WHERE completiondate < completiontime AND (domainid = in_domainid OR in_domainid IS NULL))
    loop
        exit when p.uuid = null;
        
        -- delete workflow activities
        for a in (SELECT uuid FROM workflowactivity where processid = p.uuid)
        loop
            exit when a.uuid = null;

            -- delete activity user assigments
            DELETE FROM activityuserassignment WHERE activityid = a.uuid;

            -- delete activity user group assigments
            DELETE FROM activityusergroupassignment WHERE activityid = a.uuid;
            
            -- delete activity
            DELETE FROM workflowactivity_av WHERE ownerid = a.uuid;
            DELETE FROM workflowactivity WHERE uuid = a.uuid;

        end loop;

        -- delete workflow threads
        DELETE FROM workflowthread_av WHERE ownerid IN (SELECT uuid FROM workflowthread WHERE processid = p.uuid);
        DELETE FROM workflowthread WHERE processid = p.uuid;

        -- delete workflow process
        DELETE FROM workflowprocess_av WHERE ownerid = p.uuid;
        DELETE FROM workflowprocess WHERE uuid = p.uuid;
        
    end loop;

  COMMIT;

  EXCEPTION
    WHEN parameter_null THEN
      BEGIN
        RAISE_APPLICATION_ERROR(-20101, 'Error in sp_delete_workflow_processes. completiontime is NULL');
      END;
    WHEN OTHERS THEN
      BEGIN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20101, 'Error in sp_delete_workflow_processes. ' || SQLERRM);
      END;

END sp_delete_workflow_processes;
/

show errors

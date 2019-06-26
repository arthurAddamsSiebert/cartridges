------------------------------------------------------------------------------------------
-- Name        : sp_delete_workflow_processes
-- Created     : Anand Singh 14/11/2017
-- Description : Remove workflow processes that are older than the passed date.
-- Owner       : The special Beehive/PowerTier user.
-- Input       : completiontime, in_domainid
-- Output      : none
-- Example     : exec sp_delete_workflow_processes '08/11/2017', 'domainid'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_delete_workflow_processes
(
	@completiontime	DATE,
	@in_domainid	NVARCHAR(30) = NULL
)
AS
BEGIN
	--parameter_null                    EXCEPTION;
	-- If Input NULL raise an EXCEPTION
	IF @completiontime IS NULL
		THROW 51000, 'Parameter cannot be null', 1;

  -- delete workflow processes
	BEGIN TRAN
		DECLARE @wcounter	INT = 1,
				@wcount		INT,
				@wuuid		NVARCHAR(30);
		DECLARE @WorkFlow TABLE
		(
			ID		INT IDENTITY,
			uuid	NVARCHAR(30)
		);
		
		INSERT INTO @WorkFlow
			SELECT uuid FROM workflowprocess WHERE completiondate < @completiontime AND (domainid = @in_domainid OR @in_domainid IS NULL)
		SELECT @wcount = COUNT(1) FROM @WorkFlow
		WHILE(@wcounter <= @wcount)
		BEGIN
			SELECT @wuuid = uuid FROM @WorkFlow WHERE ID = @wcounter
			
			-- delete activity user assigments
			DELETE aua FROM activityuserassignment aua
			INNER JOIN workflowactivity wfa ON wfa.uuid = aua.activityid
			AND wfa.processid = @wuuid

			-- delete activity user group assigments
			DELETE aug FROM activityusergroupassignment aug
			INNER JOIN workflowactivity wfa ON wfa.uuid = aug.activityid
			AND wfa.processid = @wuuid

			-- delete activity
			DELETE wfaa FROM workflowactivity_av wfaa 
			INNER JOIN workflowactivity wfa ON wfa.uuid = wfaa.ownerid
			AND wfa.processid = @wuuid

			DELETE wfa FROM workflowactivity wfa
			INNER JOIN workflowactivity wfa1 ON wfa1.uuid = wfa.uuid
			AND wfa1.processid = @wuuid
			-- delete workflow threads
			DELETE FROM workflowthread_av WHERE ownerid IN (SELECT uuid FROM workflowthread WHERE processid = @wuuid);
			DELETE FROM workflowthread WHERE processid = @wuuid;

			-- delete workflow process
			DELETE FROM workflowprocess_av WHERE ownerid = @wuuid;
			DELETE FROM workflowprocess WHERE uuid = @wuuid;
			SELECT @wcounter=@wcounter+1
		END
	COMMIT;
END
GO
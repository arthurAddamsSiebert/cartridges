----EXEC log_dml_rowcount 'TEST','ADD'
CREATE OR ALTER  PROCEDURE sp_deleteProcesses$log_dml_rowcount
(
	@table_name VARCHAR(256),
	@dml_op VARCHAR(30),
	@row_count int
)
AS
BEGIN
	DECLARE @name VARCHAR(256)
	--- TODO : Cannot find either column "dbo" or the user-defined function or aggregate "dbo.CORE$READ", or the name is ambiguous. 
	--- SELECT @name = CONCAT([dbo].[CORE_RPAD](' ',32,@table_name+ ':'),CAST([dbo].[CORE_LPAD](@row_count,10,' ') AS VARCHAR(5000)),' rows ',@dml_op)
	EXEC logger$log @name, 0
END;
GO
  ------------------------------------------------------------------------------------------
-- Name        : sp_deleteProcesses
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes all processes older than given number of days,
--               with given name and type. If name or type is null they will be ignored.
-- Input       : name - the name of processes
--               type - the type of processes
--               olderThan - the number of days afterwards a process object expires, default 7
-- Output      : none
-- Example     : exec sp_deleteProcesses null, null, 1
--               exec sp_deleteProcesses null, 'Job', 7
--               exec sp_deleteProcesses 'ImportProducts', 'Import', 14;
--               exec sp_deleteProcesses null, null, null
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteProcesses
(
    @name         VARCHAR(256)= NULL,	-- the name of processes or null
    @type         VARCHAR(256)= NULL,	-- the type of processes or null
    @olderThan    DECIMAL= 7			-- the number of days afterwards the processes expire
)
AS
BEGIN
	--UPDATE  p  SET oca=-1 FROM WHERE 1=1 AND enddate < (GETUTCDATE()- 1
	DECLARE @stmt_comment NVARCHAR(500) =CONCAT(' /* sp_deleteProcesses(',ISNULL(@name, 'null') ,ISNULL(@type, 'null'), '@olderThan )' ,'*/ '),
			@stmt NVARCHAR(500) = 'UPDATE process  SET oca=-1 WHERE 1=1';
	SET NOCOUNT ON;
	DECLARE @sqlQuery NVARCHAR(MAX);
    -- build statement depending on input parameters
	IF @name IS NOT NULL 
	BEGIN
		SET  @stmt = CONCAT(@stmt , ' AND name = ''' , @name,'''');
	END;
	IF @type IS NOT NULL 
	BEGIN
		SET @stmt = CONCAT(@stmt ,' AND type = ','''' ,@type,'''');
	END;
	IF @olderThan IS NOT NULL 
	BEGIN
		SET @stmt = CONCAT(@stmt ,' AND enddate <GETUTCDATE()- ',@olderThan);
	END; 
    -- mark all process that should be deleted in order to not run into
    -- concurrency issues
	EXEC sp_executesql @stmt
	IF @@ROWCOUNT>0 
	BEGIN
		-- process_av
		SET @sqlQuery = CONCAT('DELETE pa ' , @stmt_comment ,'FROM process_av  pa ' ,'WHERE EXISTS (SELECT 1 FROM process p WHERE pa.ownerid=p.uuid AND oca=-1)');
		EXEC sp_executesql @sqlQuery	
		
		EXEC sp_deleteProcesses$log_dml_rowcount 'process_av', 'deleted',@@ROWCOUNT;
		--
		-- stagingprocesscomponent
		--
		SET @sqlQuery = CONCAT('DELETE spc ', @stmt_comment,'FROM stagingprocesscomponent  spc ',' WHERE EXISTS (SELECT 1 FROM process p WHERE spc.stagingprocessid=p.uuid AND oca=-1)');
		EXEC sp_executesql @sqlQuery		
		EXEC sp_deleteProcesses$log_dml_rowcount 'stagingprocesscomponent', 'deleted',@@ROWCOUNT;
		
		--
		-- acqlogentryresourceassignment
		--
		SET @sqlQuery = CONCAT('DELETE asg' ,@stmt_comment, 'FROM acqlogentryresourceassignment asg WHERE EXISTS (','SELECT 1 FROM acqlogentry pa WHERE pa.uuid = asg.acquisitionlogentryid AND ','EXISTS (SELECT 1 FROM process p WHERE (pa.processid=p.uuid OR pa.contentionprocessid=p.uuid) AND oca=-1))');
		EXEC sp_executesql @sqlQuery	
		EXEC sp_deleteProcesses$log_dml_rowcount 'acqlogentryresourceassignment', 'deleted',@@ROWCOUNT;
		--
		-- acqlogentry_av
		--
		SET @sqlQuery = CONCAT('DELETE av ', @stmt_comment ,'FROM acqlogentry_av  av WHERE EXISTS (','SELECT 1 FROM acqlogentry pa WHERE pa.uuid = av.ownerid AND ','EXISTS (SELECT 1 FROM process p WHERE (pa.processid=p.uuid OR pa.contentionprocessid=p.uuid) AND oca=-1))');
	
		EXEC sp_deleteProcesses$log_dml_rowcount 'acqlogentry_av', 'deleted',@@ROWCOUNT;
		EXEC sp_executesql @sqlQuery
	
		-- acqlogentry
		--
		SET @sqlQuery = CONCAT('DELETE pa ' ,@stmt_comment,'FROM acqlogentry pa WHERE ',' EXISTS (SELECT 1 FROM process p WHERE (pa.processid=p.uuid OR pa.contentionprocessid=p.uuid) AND oca=-1)');
		
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount 'acqlogentry', 'deleted',@@ROWCOUNT;
	
		
		--
		-- replication tasks
		--
		SET @sqlQuery = CONCAT('DELETE ask ' ,@stmt_comment,'FROM replicationprocesstaskassign  ask WHERE taskid IN ','(SELECT rt.uuid FROM replicationtask rt JOIN process p ON (p.uuid=rt.processid) WHERE p.oca=-1)');
		
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount 'replicationprocesstaskassign', 'deleted',@@ROWCOUNT;
		
		

		SET @sqlQuery = CONCAT('DELETE' ,@stmt_comment,'FROM replicationtaskassignment WHERE replicationtaskid IN ','(SELECT rt.uuid FROM replicationtask rt JOIN process p ON (p.uuid=rt.processid) WHERE p.oca=-1)');
		
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount 'REPLICATIONTASKASSIGNMENT', 'DELETED',@@ROWCOUNT;
		
	

		SET @SQLQUERY = CONCAT('DELETE' ,@STMT_COMMENT,'FROM REPLICATIONTASKHISTORY WHERE REPLICATIONTASKID IN ','(SELECT RT.UUID FROM REPLICATIONTASK RT JOIN PROCESS P ON (P.UUID=RT.PROCESSID) WHERE P.OCA=-1)');
		
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'REPLICATIONTASKHISTORY', 'DELETED',@@ROWCOUNT;
		
		

		SET @SQLQUERY = CONCAT('DELETE', @STMT_COMMENT, 'FROM REPLICATIONTASK_AV WHERE OWNERID IN ','(SELECT RT.UUID FROM REPLICATIONTASK RT JOIN PROCESS P ON (P.UUID=RT.PROCESSID) WHERE P.OCA=-1)');
		
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount 'REPLICATIONTASK_AV', 'DELETED',@@ROWCOUNT;
		
		
 
		SET @SQLQUERY = CONCAT('DELETE RPTA ', @STMT_COMMENT, 'FROM REPLICATIONPROCESSTASKASSIGN RPTA',' WHERE EXISTS (SELECT 1 FROM PROCESS P WHERE RPTA.PROCESSID=P.UUID AND P.OCA=-1)');
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'REPLICATIONPROCESSTASKASSIGN', 'DELETED',@@ROWCOUNT;
		

		SET @SQLQUERY = CONCAT('DELETE RT', @STMT_COMMENT, 'FROM REPLICATIONTASK RT ','WHERE EXISTS (SELECT 1 FROM PROCESS P WHERE RT.PROCESSID=P.UUID AND P.OCA=-1)');
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'REPLICATIONTASK', 'DELETED',@@ROWCOUNT;
		
		

		--
		-- JOBCONFIGURATION: CURRENT PROCESS ID TO NULL
		--
        SET @SQLQUERY = CONCAT('UPDATE  ', @STMT_COMMENT, 'JOBCONFIGURATION  SET CURRENTPROCESSID = NULL ','WHERE EXISTS (SELECT 1 FROM PROCESS P WHERE CURRENTPROCESSID=P.UUID AND OCA=-1)');
	
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'JOBCONFIGURATION', 'UPDATED',@@ROWCOUNT;
	

		--
		-- PROCESS: PARENT PROCESS ID TO NULL
		--
		SET @SQLQUERY = CONCAT('UPDATE', @STMT_COMMENT, 'PROCESS  SET PARENTUUID = NULL ','WHERE EXISTS (SELECT 1 FROM PROCESS P WHERE PARENTUUID=P.UUID AND OCA=-1)');
	
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'PROCESS', 'UPDATED',@@ROWCOUNT;
	
		-- ISRESOURCE: RESOURCEOWNERID PROCESS ID AND LOCKING DATE/THREAD TO NULL
		--
		SET @SQLQUERY = CONCAT('UPDATE  ', @STMT_COMMENT, 'ISRESOURCE  SET RESOURCEOWNERID = NULL, LOCKCREATIONDATE = NULL, LOCKINGTHREADID = NULL ','WHERE EXISTS (SELECT 1 FROM PROCESS P WHERE RESOURCEOWNERID=P.UUID AND OCA=-1)');
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'ISRESOURCE', 'UPDATED',@@ROWCOUNT;
		

		--
		-- PROCESS
		----EXEC SP_DELETEPROCESSES NULL, NULL, 1
        SET @SQLQUERY = CONCAT('DELETE', @STMT_COMMENT, 'FROM PROCESS  WHERE OCA=-1');
		EXEC sp_executesql @sqlQuery
		EXEC sp_deleteProcesses$log_dml_rowcount  'PROCESS', 'DELETED',@@ROWCOUNT;
		

    END ;
END
GO
CREATE OR REPLACE PROCEDURE sp_deleteProcesses
(
    name        IN process.name%TYPE DEFAULT NULL,  -- the name of processes or null
    type        IN process.type%TYPE DEFAULT NULL,  -- the type of processes or null
    olderThan   IN NUMBER DEFAULT 7                 -- the number of days afterwards the processes expire
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProcesses
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     03/08/2013 - #30487 DBInit/DBMigrate does not release all resource
--                                                    locks during shutdown
--             : Thomas Kober     06/25/2012 - #22660 Error in stored procedure sp_deleteProcesses()
--                                                    PROCESS_CO001 violated - child record found
--             : Thomas Kober     03/18/2008 - #10901 inappropriate for large amounts of data
-- Created     : Thomas Budich
-- Description : This procedure deletes all processes older than given number of days,
--               with given name and type. If name or type is null they will be ignored.
-- Input       : name - the name of processes
--               type - the type of processes
--               olderThan - the number of days afterwards a process object expires, default 7
-- Output      : none
-- Example     : exec sp_deleteProcesses(null, null, 1)
--               exec sp_deleteProcesses(null, 'Job', 7)
--               exec sp_deleteProcesses('ImportProducts', 'Import', 14);
--               exec sp_deleteProcesses(null, null, null)
------------------------------------------------------------------------------------------
AS

  stmt_comment VARCHAR2(500) := ' /* sp_deleteProcesses('
    || NVL(name, 'null') || ', '
    || NVL(type, 'null') || ', '
    || olderThan || ') */ ';

  stmt VARCHAR2(500) := 'UPDATE process p SET oca=-1 WHERE 1=1';

  PROCEDURE log_dml_rowcount(table_name user_tables.table_name%TYPE, dml_op VARCHAR2)
  AS
  BEGIN
    logger.log(RPAD(table_name||': ',32,' ') || LPAD(SQL%ROWCOUNT,10,' ') || ' rows '||dml_op||'.');
  END;

BEGIN
    -- build statement depending on input parameters
    IF name IS NOT NULL THEN
        stmt := stmt || ' AND name = ''' || name || '''';
    END IF;

    IF type IS NOT NULL THEN
        stmt := stmt || ' AND type = ''' || type || '''';
    END IF;

    IF olderThan IS NOT NULL THEN
        stmt := stmt || ' AND enddate < (UTCTIMESTAMP() - ' || olderThan || ')';
    END IF;


    -- mark all process that should be deleted in order to not run into
    -- concurrency issues
    EXECUTE IMMEDIATE stmt;


    IF SQL%ROWCOUNT>0 THEN

        --
        -- process_av
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM process_av pa ' ||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE pa.ownerid=p.uuid AND oca=-1)';
        log_dml_rowcount('process_av', 'deleted');

        --
        -- stagingprocesscomponent
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM stagingprocesscomponent spc ' ||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE spc.stagingprocessid=p.uuid AND oca=-1)';
        log_dml_rowcount('stagingprocesscomponent', 'deleted');

        --
        -- acqlogentryresourceassignment
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM acqlogentryresourceassignment WHERE EXISTS (' ||
            'SELECT 1 FROM acqlogentry pa WHERE pa.uuid = acquisitionlogentryid AND ' ||
            'EXISTS (SELECT 1 FROM process p WHERE (pa.processid=p.uuid OR pa.contentionprocessid=p.uuid) AND oca=-1))';
        log_dml_rowcount('acqlogentryresourceassignment', 'deleted');

        --
        -- acqlogentry_av
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM acqlogentry_av WHERE EXISTS ('||
            'SELECT 1 FROM acqlogentry pa WHERE pa.uuid = ownerid AND ' ||
            'EXISTS (SELECT 1 FROM process p WHERE (pa.processid=p.uuid OR pa.contentionprocessid=p.uuid) AND oca=-1))';
        log_dml_rowcount('acqlogentry_av', 'deleted');

        --
        -- acqlogentry
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM acqlogentry pa WHERE ' ||
            ' EXISTS (SELECT 1 FROM process p WHERE (pa.processid=p.uuid OR pa.contentionprocessid=p.uuid) AND oca=-1)';
        log_dml_rowcount('acqlogentry', 'deleted');

        --
        -- replication tasks
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM replicationprocesstaskassign WHERE taskid IN '||
            '(SELECT rt.uuid FROM replicationtask rt JOIN process p ON (p.uuid=rt.processid) WHERE p.oca=-1)';
        log_dml_rowcount('replicationprocesstaskassign', 'deleted');

        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM replicationtaskassignment WHERE replicationtaskid IN '||
            '(SELECT rt.uuid FROM replicationtask rt JOIN process p ON (p.uuid=rt.processid) WHERE p.oca=-1)';
        log_dml_rowcount('replicationtaskassignment', 'deleted');

        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM replicationtaskhistory WHERE replicationtaskid IN '||
            '(SELECT rt.uuid FROM replicationtask rt JOIN process p ON (p.uuid=rt.processid) WHERE p.oca=-1)';
        log_dml_rowcount('replicationtaskhistory', 'deleted');

        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM replicationtask_av WHERE ownerid IN '||
            '(SELECT rt.uuid FROM replicationtask rt JOIN process p ON (p.uuid=rt.processid) WHERE p.oca=-1)';
        log_dml_rowcount('replicationtask_av', 'deleted');

        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM replicationprocesstaskassign rpta '||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE rpta.processid=p.uuid AND p.oca=-1)';
        log_dml_rowcount('replicationprocesstaskassign', 'deleted');

        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM replicationtask rt '||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE rt.processid=p.uuid AND p.oca=-1)';
        log_dml_rowcount('replicationtask', 'deleted');

        --
        -- jobconfiguration: current process id to NULL
        --
        EXECUTE IMMEDIATE
            'UPDATE' || stmt_comment || 'jobconfiguration pa SET pa.currentprocessid = NULL '||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE pa.currentprocessid=p.uuid AND oca=-1)';
        log_dml_rowcount('jobconfiguration', 'updated');

        --
        -- process: parent process id to NULL
        --
        EXECUTE IMMEDIATE
            'UPDATE' || stmt_comment || 'process pa SET pa.parentuuid = NULL '||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE pa.parentuuid=p.uuid AND oca=-1)';
        log_dml_rowcount('process', 'updated');

        --
        -- isresource: resourceownerid process id and locking date/thread to NULL
        --
        EXECUTE IMMEDIATE
            'UPDATE' || stmt_comment || 'isresource pa SET pa.resourceownerid = NULL, lockcreationdate = NULL, lockingthreadid = NULL '||
            'WHERE EXISTS (SELECT 1 FROM process p WHERE pa.resourceownerid=p.uuid AND oca=-1)';
        log_dml_rowcount('isresource', 'updated');

        --
        -- process
        --
        EXECUTE IMMEDIATE
            'DELETE' || stmt_comment || 'FROM process pa WHERE oca=-1';
        log_dml_rowcount('process', 'deleted');

    END IF;

    COMMIT;

END;
/

show errors;

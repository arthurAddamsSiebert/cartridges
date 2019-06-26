CREATE OR REPLACE PACKAGE sql_util IS

    ------------------------------------------------------------------------------------------
    -- Name        : sql
    -- Created     : Thomas Budich
    -- Description : This package contains some sql help functions.
    ------------------------------------------------------------------------------------------

    LOG_ON_ERROR CONSTANT NUMBER(1) := 1;
    LOG_ALWAYS   CONSTANT NUMBER(1) := 2;
    LOG_NEVER    CONSTANT NUMBER(1) := 3;

    ------------------------------------------------------------------------
    -- Name        : set_log_behaviour
    -- Description : Sets the log behaviour of execute methods
    -- Input       : behaviour - the log behaviour
    ------------------------------------------------------------------------
    PROCEDURE set_log_behaviour(behaviour IN NUMBER);

    ------------------------------------------------------------------------
    -- Name        : get_log_output
    -- Description : Returns the current DBMS_OUTPUT.
    -- Input       : none
    -- Output      : the DBMS_OUTPUT
    ------------------------------------------------------------------------
    FUNCTION get_log_output RETURN CLOB;

    ------------------------------------------------------------------------
    -- Description : The type of instance version.
    ------------------------------------------------------------------------
    TYPE type_instance_version IS RECORD (
        major   NUMBER(2),
        minor1  NUMBER(2),
        minor2  NUMBER(2),
        minor3  NUMBER(2),
        minor4  NUMBER(2)
    );

    ------------------------------------------------------------------------
    -- Name        : get_instance_version
    -- Description : Returns the version of instance.
    -- Input       : none
    -- Output      : the version of instance
    ------------------------------------------------------------------------
    FUNCTION get_instance_version RETURN type_instance_version;

    ------------------------------------------------------------------------------------------
    -- Name        : executeDDL
    -- Description : This procedure is used to perform given DDL statement.
    -- Input       : ddlStmt         - the ddl statement as VARCHAR2 or CLOB
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec ddl.executeDDL('ALTER TABLE test RENAME TO test2')
    ------------------------------------------------------------------------------------------
    PROCEDURE executeDDL(ddlStmt IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0);
    PROCEDURE executeDDL(ddlStmt IN CLOB,     ignoreErrorCode IN NUMBER DEFAULT 0);

    ------------------------------------------------------------------------
    -- Name        : execute
    -- Description : It performs and logs given statement.
    -- Input       : stmt            - the statement as VARCHAR2 or CLOB to be executed
    -- Output      : none
    -- Example     : exec sql.execute ('DROP INDEX index_name')
    ------------------------------------------------------------------------
    PROCEDURE execute (stmt IN VARCHAR2);
    PROCEDURE execute (stmt IN CLOB);

    ------------------------------------------------------------------------
    -- Name        : execute
    -- Description : It performs and logs given statement.
    -- Input       : stmt            - the statement as VARCHAR2 or CLOB to be executed
    --               ignoreErrorCode - the error which should be ignored.
    -- Output      : none
    -- Example     : exec sql.execute ('DROP INDEX index_name')
    --               exec sql.execute ('DROP TABLE t', -942)
    ------------------------------------------------------------------------
    PROCEDURE execute (stmt IN VARCHAR2, ignoreErrorCode IN NUMBER);
    PROCEDURE execute (stmt IN CLOB,     ignoreErrorCode IN NUMBER);

    ------------------------------------------------------------------------
    -- Name        : execute
    -- Description : It performs given statement using given cursor handle.
    -- Input       : cur  - the handle of cursor object to be used
    --               stmt - the statement as VARCHAR2 or CLOB to be executed
    ------------------------------------------------------------------------
    PROCEDURE execute (cur IN INTEGER, stmt IN VARCHAR2);
    PROCEDURE execute (cur IN INTEGER, stmt IN CLOB);

    ------------------------------------------------------------------------
    -- Name        : execute
    -- Description : It performs given statement using given cursor handle.
    -- Input       : cur  - the handle of cursor object to be used
    --               stmt - the statement as VARCHAR2 or CLOB to be executed
    --               ignoreErrorCode - the error which should be ignored.
    -- Output      : none
    ------------------------------------------------------------------------
    PROCEDURE execute (cur IN INTEGER, stmt IN VARCHAR2, ignoreErrorCode IN NUMBER);
    PROCEDURE execute (cur IN INTEGER, stmt IN CLOB,     ignoreErrorCode IN NUMBER);
END;
/

show errors;

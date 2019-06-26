CREATE OR REPLACE PACKAGE BODY sql_util IS

    log_behaviour NUMBER(1) := LOG_ALWAYS;

    ------------------------------------------------------------------------
    -- Name        : set_log_behaviour
    -- Description : Sets the log behaviour of execute methods
    -- Input       : behaviour - the log behaviour
    ------------------------------------------------------------------------
    PROCEDURE set_log_behaviour(behaviour IN NUMBER) AS
    BEGIN
        log_behaviour := behaviour;
    END;

    ------------------------------------------------------------------------
    -- Name        : get_log_output
    -- Description : Returns the current DBMS_OUTPUT.
    -- Input       : none
    -- Output      : the DBMS_OUTPUT
    ------------------------------------------------------------------------
    FUNCTION get_log_output RETURN CLOB
    AS
        line VARCHAR2(255);
        done NUMBER;
        buffer CLOB;

    BEGIN
        dbms_lob.createtemporary(buffer, FALSE, 2);

        LOOP
            dbms_output.get_line( line, done );
            EXIT WHEN done = 1;

            dbms_lob.writeappend(buffer, length(line)+1, line||chr(10));
        END LOOP;
        RETURN buffer;
    END;

    ------------------------------------------------------------------------
    -- Name        : get_instance_version
    -- Description : Returns the version of instance.
    -- Input       : none
    -- Output      : the version of instance
    ------------------------------------------------------------------------
    FUNCTION get_instance_version RETURN type_instance_version AS
        v       type_instance_version;
        version v$version.banner%TYPE;
        pos     NUMBER(5);
    BEGIN
        SELECT substr(banner, instr(banner, chr(9))+1) INTO version FROM v$version WHERE banner LIKE 'CORE%';
        version := trim(substr(version, 1, instr(version, chr(9))-1));

        v.major := substr(version, 1,                              INSTR (version, '.', 1, 1) - 1);
        v.minor1:= substr(version, INSTR (version, '.', 1, 1) + 1, INSTR (version, '.', 1, 2) - INSTR (version, '.', 1, 1) - 1);
        v.minor2:= substr(version, INSTR (version, '.', 1, 2) + 1, INSTR (version, '.', 1, 3) - INSTR (version, '.', 1, 2) - 1);
        v.minor3:= substr(version, INSTR (version, '.', 1, 3) + 1, INSTR (version, '.', 1, 4) - INSTR (version, '.', 1, 3) - 1);
        v.minor4:= substr(version, INSTR (version, '.', 1, 4) + 1                                                             );

        logger.log('instance version: '||v.major||'.'||v.minor1||'.'||v.minor2||'.'||v.minor3||'.'||v.minor4);

        RETURN v;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : executeDDL
    -- Description : This procedure is used to perform given DDL statement.
    -- Input       : ddlStmt         - the ddl statement as VARCHAR2
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec ddl.executeDDL('ALTER TABLE test RENAME TO test2')
    ------------------------------------------------------------------------------------------
    PROCEDURE executeDDL(ddlStmt IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0) AS
    BEGIN
        sql_util.execute(ddlStmt, ignoreErrorCode);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : executeDDL
    -- Description : This procedure is used to perform given DDL statement.
    -- Input       : ddlStmt         - the ddl statement as CLOB
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec ddl.executeDDL('ALTER TABLE test RENAME TO test2')
    ------------------------------------------------------------------------------------------
    PROCEDURE executeDDL(ddlStmt IN CLOB, ignoreErrorCode IN NUMBER DEFAULT 0) AS
    BEGIN
        sql_util.execute(ddlStmt, ignoreErrorCode);
    END;

    ------------------------------------------------------------------------
    -- Name        : exec
    -- Description : It performs given statement using given cursor handle.
    -- Input       : cur  - the handle of cursor object to be used
    --               stmt - the statement VARCHAR2 to be executed
    -- Output      : none
    ------------------------------------------------------------------------
    PROCEDURE execute (cur IN INTEGER, stmt IN VARCHAR2) AS
    BEGIN
        execute(cur, stmt, 0);
    END;

    ------------------------------------------------------------------------
    -- Name        : exec
    -- Description : It performs given statement using given cursor handle.
    -- Input       : cur  - the handle of cursor object to be used
    --               stmt - the statement CLOB to be executed
    -- Output      : none
    ------------------------------------------------------------------------
    PROCEDURE execute (cur IN INTEGER, stmt IN CLOB) AS
    BEGIN
        execute(cur, stmt, 0);
    END;

    ------------------------------------------------------------------------
    -- Name        : execute_sql
    -- Description : It performs and logs given statement.
    -- Input       : stmt         - the statement VARCHAR2 to be executed
    --               ignore_error - the error which should be ignored.
    -- Output      : none
    -- Example     : exec sql.execute ('DROP INDEX index_name')
    --               exec sql.execute ('DROP TABLE t', -942)
    ------------------------------------------------------------------------
    PROCEDURE execute (cur IN INTEGER, stmt IN VARCHAR2, ignoreErrorCode IN NUMBER)
    AS
        ret INTEGER;
    BEGIN
        IF log_behaviour = LOG_ALWAYS THEN
            logger.log(stmt);
        END IF;

        dbms_sql.parse(cur, stmt, dbms_sql.native);
        ret := dbms_sql.execute(cur);
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE<>ignoreErrorCode THEN
                IF log_behaviour = LOG_ALWAYS THEN
                    logger.log('Failed with: '||SQLERRM);
                ELSIF log_behaviour = LOG_ON_ERROR THEN
                    logger.log(SQLERRM||': '||stmt);
                END IF;
                RAISE;
            END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : execute_sql
    -- Description : It performs and logs given statement.
    -- Input       : stmt         - the statement CLOB to be executed
    --               ignore_error - the error which should be ignored.
    -- Output      : none
    -- Example     : exec sql.execute ('DROP INDEX index_name')
    --               exec sql.execute ('DROP TABLE t', -942)
    ------------------------------------------------------------------------
    PROCEDURE execute (cur IN INTEGER, stmt IN CLOB, ignoreErrorCode IN NUMBER)
    AS
        ret         INTEGER;
        upperbound  NUMBER;
        sql_chunks  DBMS_SQL.VARCHAR2S;
        chunk_size  NUMBER := 256;
        log_prefix  BOOLEAN := TRUE;

    BEGIN
        -- split that large CLOB SQL statement into chunks
        -- of chunk_size characters and put in VARCHAR2S array
        upperbound := ceil(dbms_lob.getlength(stmt)/chunk_size);
        FOR i IN 1..upperbound
        LOOP
            sql_chunks(i) := dbms_lob.substr(stmt                   -- input
                                            ,chunk_size             -- amount
                                            ,((i-1)*chunk_size)+1); -- offset

            IF log_behaviour = LOG_ALWAYS THEN
                logger.log(sql_chunks(i), log_prefix);
                log_prefix := FALSE;
            END IF;
        END LOOP;

        dbms_sql.parse(cur, sql_chunks, 1, upperbound, FALSE, dbms_sql.native);
        ret := dbms_sql.execute(cur);
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE<>ignoreErrorCode THEN
                IF log_behaviour = LOG_ALWAYS THEN
                    logger.log('Failed with: '||SQLERRM);
                ELSIF log_behaviour = LOG_ON_ERROR THEN
                    NULL;
                    logger.log(SQLERRM||': '||stmt);
                END IF;
                RAISE;
            END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : execute_sql
    -- Description : It performs and logs given statement.
    -- Input       : stmt            - the statement VARCHAR2 to be executed
    -- Output      : none
    -- Example     : exec sql.execute ('DROP INDEX index_name')
    ------------------------------------------------------------------------
    PROCEDURE execute (stmt IN VARCHAR2) AS
    BEGIN
        execute(stmt, 0);
    END;

    ------------------------------------------------------------------------
    -- Name        : execute_sql
    -- Description : It performs and logs given statement.
    -- Input       : stmt            - the statement CLOB to be executed
    -- Output      : none
    -- Example     : exec sql.execute ('DROP INDEX index_name')
    ------------------------------------------------------------------------
    PROCEDURE execute (stmt IN CLOB) AS
    BEGIN
        execute(stmt, 0);
    END;

    ------------------------------------------------------------------------
    -- Name        : execute_sql
    -- Description : It performs given statement.
    -- Input       : stmt - the statement to be executed
    -- Output      : none
    -- Example     : exec staging.execute_sql ('DROP INDEX index_name')
    ------------------------------------------------------------------------
    PROCEDURE execute (stmt IN VARCHAR2, ignoreErrorCode IN NUMBER)
    AS
        cur INTEGER;
    BEGIN
        cur := dbms_sql.open_cursor;

        execute(cur, stmt, ignoreErrorCode);

        dbms_sql.close_cursor(cur);
    EXCEPTION
        WHEN OTHERS THEN
            dbms_sql.close_cursor(cur);
            IF SQLCODE<>ignoreErrorCode THEN
                RAISE;
            END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : execute_sql
    -- Description : It performs given statement.
    -- Input       : stmt - the statement to be executed
    -- Output      : none
    -- Example     : exec staging.execute_sql ('DROP INDEX index_name')
    ------------------------------------------------------------------------
    PROCEDURE execute (stmt IN CLOB, ignoreErrorCode IN NUMBER)
    AS
        cur INTEGER;
    BEGIN
        cur := dbms_sql.open_cursor;

        execute(cur, stmt, ignoreErrorCode);

        dbms_sql.close_cursor(cur);
    EXCEPTION
        WHEN OTHERS THEN
            dbms_sql.close_cursor(cur);
            IF SQLCODE<>ignoreErrorCode THEN
                RAISE;
            END IF;
    END;

END sql_util;
/

show errors;

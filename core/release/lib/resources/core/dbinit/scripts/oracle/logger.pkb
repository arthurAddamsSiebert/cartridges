CREATE OR REPLACE PACKAGE BODY logger IS

    ------------------------------------------------------------------------------------------
    -- Name        : log_target
    -- Description : The log target. Currently only DBMS_OUTPUT is allowed. In order to
    --               disable the log output simply set the log target to NULL.
    ------------------------------------------------------------------------------------------
    log_target VARCHAR2(50) := LOG_TARGET_DBMS_OUTPUT;


    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given string to dbms_output with given maximum
    --               line width.
    -- Input       : string   - the log message
    --               len      - the maximum line width
    -- Output      : none
    -- Example     : exec log.log ('another message', 10)
    ------------------------------------------------------------------------
    PROCEDURE put_line(string IN VARCHAR2, len IN INTEGER) AS

        v_curr_pos   INTEGER;
        v_length     INTEGER;
        v_printed_to INTEGER;
        v_last_ws    INTEGER;
        skipping_ws  BOOLEAN;

    BEGIN

        IF (string is null) THEN
            return;
        END IF;

        v_length := length(string);

        v_curr_pos    :=  0;
        v_printed_to  := -1;
        v_last_ws     := -1;
        skipping_ws   := true;

        WHILE v_curr_pos < v_length
        LOOP
            IF substr(string,v_curr_pos+1,1) = ' ' THEN
                v_last_ws := v_curr_pos;
                IF skipping_ws THEN
                    v_printed_to := v_curr_pos;
                END IF;
            ELSE
                skipping_ws := false;
            END IF;

            IF v_curr_pos >= v_printed_to + len THEN
                IF v_last_ws <= v_printed_to THEN
                    dbms_output.put_line(substr(string,v_printed_to+2,v_curr_pos-v_printed_to));
                    v_printed_to:=v_curr_pos;
                    skipping_ws := true;
                ELSE
                    dbms_output.put_line(substr(string,v_printed_to+2,v_last_ws-v_printed_to));
                    v_printed_to := v_last_ws;
                    skipping_ws := true;
                END IF;
            END IF;

            v_curr_pos := v_curr_pos + 1;

        END LOOP;

        dbms_output.put_line(substr(string,v_printed_to+1));

    END;

    ------------------------------------------------------------------------
    -- Name        : create_log_table
    -- Description : creates the log table
    ------------------------------------------------------------------------
    PROCEDURE create_log_table
    AS
        PRAGMA AUTONOMOUS_TRANSACTION;
    BEGIN
        EXECUTE IMMEDIATE 'CREATE TABLE '||LOG_TABLE||' (logdate TIMESTAMP(9), msg VARCHAR2(4000 CHAR))';
        EXECUTE IMMEDIATE 'COMMENT ON TABLE '||LOG_TABLE||' IS ''core''';

    END;

    ------------------------------------------------------------------------
    -- Name        : create_log_table
    -- Description : creates the log table
    ------------------------------------------------------------------------
    PROCEDURE log_into_table(msg IN VARCHAR2)
    AS
        PRAGMA AUTONOMOUS_TRANSACTION;
    BEGIN
        EXECUTE IMMEDIATE 'INSERT INTO '||LOG_TABLE||' VALUES (UTCTIMESTAMP(), :msg)' USING substr(msg, 1, 4000);
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE=-942 THEN
                create_log_table;
                log_into_table(msg);
            ELSE
                RAISE;
            END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given string to configured log target with given
    --               maximum line width of 255.
    -- Input       : string     - the log message
    --             : log_prefix - if true print [timestamp] prefix
    -- Output      : none
    -- Example     : exec logger.log ('a message')
    ------------------------------------------------------------------------
    PROCEDURE log(string IN VARCHAR2, log_prefix IN BOOLEAN DEFAULT TRUE) AS
        msg VARCHAR2(4000) := string;
    BEGIN
        IF log_target = LOG_TARGET_DBMS_OUTPUT THEN
          IF log_prefix THEN
            msg := '['||to_char(UTCTIMESTAMP(), 'YYYY-MM-DD HH24:MI:SS.FF3 TZR')||'] '||msg;
          END IF;
          put_line(msg, 255);
        ELSIF log_target = LOG_TARGET_TABLE THEN
          log_into_table(string);
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : set_log_target
    -- Description : sets the new log target.
    -- Input       : target - the log target identifier
    -- Example     : exec logger.set_log_target(logger.LOG_TARGET_DBMS_OUTPUT)
    ------------------------------------------------------------------------------------------
    PROCEDURE set_log_target(target IN VARCHAR2) AS
    BEGIN
        log_target := target;
    END;
END;
/

show errors;

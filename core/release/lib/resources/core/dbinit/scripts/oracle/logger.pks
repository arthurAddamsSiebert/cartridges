CREATE OR REPLACE PACKAGE logger IS

    ------------------------------------------------------------------------------------------
    -- Name        : logger
    -- Created     : Thomas Budich
    -- Description : This package provides some logging methods.
    ------------------------------------------------------------------------------------------

    LOG_TARGET_DBMS_OUTPUT CONSTANT VARCHAR2(50) := 'DBMS_OUTPUT';
    LOG_TARGET_TABLE       CONSTANT VARCHAR2(50) := 'TABLE';
    LOG_TARGET_EMPTY       CONSTANT VARCHAR2(50) := 'EMPTY';


    -- the table containing all pl/sql logs
    LOG_TABLE CONSTANT VARCHAR2(30) := 'PLSQLLOG';

    ------------------------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given string to configured log target
    -- Input       : string      - the log message
    --             : log_prefix  - if true print [UTCTIMESTAMP()] prefix
    -- Output      : none
    -- Example     : exec logger.log ('a message')
    ------------------------------------------------------------------------------------------
    PROCEDURE log(string IN VARCHAR2, log_prefix IN BOOLEAN DEFAULT TRUE);

    ------------------------------------------------------------------------------------------
    -- Name        : set_log_target
    -- Description : sets the new log target.
    -- Input       : target - the log target identifier
    -- Example     : exec logger.set_log_target(logger.LOG_TARGET_DBMS_OUTPUT)
    ------------------------------------------------------------------------------------------
    PROCEDURE set_log_target(target IN VARCHAR2);
END;
/
show errors;

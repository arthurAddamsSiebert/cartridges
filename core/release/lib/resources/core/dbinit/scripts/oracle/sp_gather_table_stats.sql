CREATE OR REPLACE PROCEDURE gather_table_stats
(
    table_name       IN VARCHAR2,
 ------------------------------------------------------------------------------
 -- start: wrapped dbms_stats.gather_table_stats params
 ------------------------------------------------------------------------------
    estimate_percent IN NUMBER   DEFAULT dbms_stats.auto_sample_size,
    block_sample     IN BOOLEAN  DEFAULT false,
    method_opt       IN VARCHAR2 DEFAULT 'for all columns size auto',
    degree           IN NUMBER   DEFAULT dbms_stats.auto_degree,
    granularity      IN VARCHAR2 DEFAULT 'auto',
    cascade          IN BOOLEAN  DEFAULT dbms_stats.auto_cascade,
    no_invalidate    IN BOOLEAN  DEFAULT dbms_stats.auto_invalidate,
    force            IN BOOLEAN  DEFAULT false,
 ------------------------------------------------------------------------------
 -- end: wrapped dbms_stats.gather_table_stats params
 ------------------------------------------------------------------------------
    pct_threshold    IN NUMBER   DEFAULT 100/3,
    force_count      IN BOOLEAN  DEFAULT false
)
------------------------------------------------------------------------------------------
-- Name        : gather_table_stats
-- History     : user             date       - desc
--             : ...
--             : tkober           12/09/2013   #18308 Adjust to better Oracle 11g defaults
--             : tkober           11/12/2012   #23143 incorrect table modification percentage calculation
--                                                    exists and flushed informations from USER_TAB_MODIFICATIONS
--                                                    can speedup the execution on large tables.
-- Created     : tkober           01/01/2010   initial created
--
-- Description : This procedure gathers table statistics for given table if a
--               data modification percentage is reached.
--
-- Input       : table_name             the base PO table
--             : estimate_percent,...   wrapped dbms_stats.gather_table_stats params
--             : pct_threshold          the percentage threshold, default 100/3
--             : force_count            force the old "count(*) from table" if true, default is false -
--                                      means the USER_TAB_MODIFICATIONS values are used to decide if
--                                      dbms_stats.gather_table_stats is necessary.
--
-- Output      : none
-- Example     : EXEC sql_util.set_log_behaviour(sql_util.LOG_ALWAYS)
--
--               -- mode: USER_TAB_MODIFICATIONS
--               EXEC gather_table_stats(table_name => 'PRODUCT')
--
--               -- mode: "count(*) from table"
--               EXEC gather_table_stats(table_name => 'PRODUCT', force_count => false)
--
--               -- modifications threshold: 66%
--               EXEC gather_table_stats(table_name => 'PRODUCT', pct_threshold => 100*2/3)
--
--               -- force gather table stats by setting threshold < 0
--               EXEC gather_table_stats(table_name => 'PRODUCT', pct_threshold => -1)
--
--               -- delete table stats: staging and non staging example
--               EXEC dbms_stats.delete_table_stats(USER, staging.get_live_table_name('PRODUCT'))
--               EXEC dbms_stats.delete_table_stats(USER,'PRODUCT')
------------------------------------------------------------------------------------------
AS
    pragma                  AUTONOMOUS_TRANSACTION;
    v_table_name            user_tables.table_name%TYPE := upper(table_name);
    v_cnt                   NUMBER;
    v_user_tables_record    user_tables%ROWTYPE;
    v_row_count             NUMBER;
    v_row_old_count         NUMBER;
    v_pct                   NUMBER;
    v_pct_log               VARCHAR2(50);
    v_pct_threshold_log     VARCHAR2(50);
    v_ela                   NUMBER;

    FUNCTION get_boolean_as_string (b BOOLEAN) RETURN VARCHAR2
    AS
    BEGIN
        CASE
          WHEN b         THEN RETURN 'TRUE';
          WHEN NOT b     THEN RETURN 'FALSE';
          WHEN b IS NULL THEN RETURN 'NULL';
        END CASE;
    END;

    PROCEDURE log (key VARCHAR2, value VARCHAR2 DEFAULT NULL)
    IS
    BEGIN
        logger.log(' '||RPAD(key, 44, ' ')||' : '||value);
    END;

    --
    -- default via count(*) from <v_table_name>
    --
    FUNCTION get_table_count
    (
        v_table_name        user_tables.table_name%TYPE
    )   RETURN NUMBER
    IS
        v_ela               NUMBER;
        v_row_count         NUMBER;
    BEGIN
        -- start elapsed time counter
        v_ela := dbms_utility.get_time;

        EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM '|| v_table_name INTO v_row_count;

        logger.log('Getting table count');
        logger.log('by SELECT count(*)...');
               log('new num_rows', v_row_count);
               log('count_time ('||v_table_name||')', (dbms_utility.get_time-v_ela) * 10 || ' msec');

        RETURN v_row_count;
    END;

    --
    -- flushes in-memory monitoring and get USER_TAB_MODIFICATIONS counts
    --
    FUNCTION get_table_count
    (
        v_table_name            user_tables.table_name%TYPE,
        v_user_tables_record    user_tables%ROWTYPE
    )   RETURN NUMBER
    IS
        v_ela               NUMBER;
        v_row_count         NUMBER;
    BEGIN
        log('table_name',              v_table_name);
        log('last_analyzed (usr_tab)', NVL(TO_CHAR(v_user_tables_record.last_analyzed, 'YYYY-DD-MM HH24:MI:SS'), 'NULL') );
        log('old num_rows (usr_tab)',  NVL(TO_CHAR(v_user_tables_record.num_rows), 'NULL'));

        -- try to
        -- flushes in-memory monitoring informations to USER_TAB_MODIFICATIONS etc
        -- The ANALYZE ANY system privilege is required to run this procedure.
        -- grant ANALYZE ANY to <user>
        BEGIN

            -- start elapsed time counter
            v_ela := dbms_utility.get_time;

            -- flush database monitoring info
            dbms_stats.flush_database_monitoring_info();

            -- how many rows are (probably) in table <v_table_name>
            EXECUTE IMMEDIATE
            '
              SELECT NVL(num_rows, 0) + NVL(inserts, 0) - NVL(deletes, 0) AS row_count
                FROM user_tables ut
                LEFT OUTER JOIN user_tab_modifications utm ON (utm.table_name = ut.table_name)
               WHERE ut.table_name = :1
            '
            INTO v_row_count USING v_table_name;

            logger.log('Getting table count by flushed');
            logger.log('in-memory monitoring before...');
                   log('new num_rows (usr_tab_mod)', v_row_count);
                   log('flush+count_time (usr_tab_mod)', (dbms_utility.get_time-v_ela) * 10 || ' msec');

        EXCEPTION

            WHEN OTHERS THEN
            BEGIN
                -- try to default via count(*) from <v_table_name>
                logger.log('fallback to SELECT count(*)...');
                v_row_count := get_table_count(v_table_name);
            END;
        END;

        RETURN v_row_count;
    END;

    FUNCTION areStatisticsLocked(v_table_name user_tables.table_name%TYPE) RETURN BOOLEAN
    IS
        statlock user_tab_statistics.stattype_locked%TYPE;
    BEGIN
        SELECT stattype_locked INTO statlock FROM user_tab_statistics WHERE table_name = v_table_name;

            IF statlock IS NOT NULL THEN
                logger.log('table statistics for ' || v_table_name || ' are locked (stattype='||statlock||')');
                RETURN TRUE;
            END IF;

        RETURN FALSE;
    END;

BEGIN

    logger.log('Begin gather_table_stats...');

    -- check for staging synonym and return the $ live table
    SELECT count(*) INTO v_cnt FROM user_synonyms WHERE synonym_name = v_table_name;
    IF v_cnt > 0 THEN
        SELECT table_name INTO v_table_name FROM user_synonyms WHERE synonym_name = v_table_name;
    END IF;

    -- return if given table does not exists
    SELECT count(*) INTO v_cnt FROM user_tables WHERE table_name = v_table_name;
    IF v_cnt = 0 THEN
        logger.log('Given table '''||v_table_name||''' does not exits, gathering statistics failed!');
        RETURN;
    END IF;

    -- return if statistics are locked
    IF areStatisticsLocked(v_table_name) THEN
        RETURN;
    END IF;

    -- get user_tables record for the affected table
    SELECT * INTO v_user_tables_record FROM user_tables WHERE table_name = v_table_name;

    -- get table count by
    --   #1 "SELECT COUNT(*)" forced or
    --   #2 "with flushed USER_TAB_MODIFICATIONS" and fallback
    --      to #1 if ANALYZE ANY system privilege not granted
    IF force_count THEN
        v_row_count := get_table_count(v_table_name);
    ELSE
        v_row_count := get_table_count(v_table_name, v_user_tables_record);
    END IF;

    v_row_old_count := NVL(v_user_tables_record.num_rows, 0);
    IF (v_row_old_count = 0) THEN v_row_old_count := 0.1; END IF;

    v_pct := ROUND(100 * (ABS(v_row_old_count - v_row_count) / v_row_old_count), 2);

    v_pct_log           := ROUND(v_pct, 2) || '%';
    v_pct_threshold_log := ROUND(pct_threshold, 2) || '%';

    log('modified percentage', v_pct_log);
    log('given pct threshold', v_pct_threshold_log);

    -- dbms_stats.gather_table_stats if v_pct > pct_threshold
    IF v_pct > pct_threshold THEN

        log('stale statistics because', v_pct_log || ' > ' || v_pct_threshold_log);
 logger.log('Gathering with dbms_stats.gather_table_stats...');
        log('estimate_percent', estimate_percent);
        log('         cascade', get_boolean_as_string(cascade));
        log('      method_opt', method_opt);
        log('    block_sample', get_boolean_as_string(block_sample));
        log('          degree', NVL(degree,0));
        log('     granularity', granularity);
        log('   no_invalidate', get_boolean_as_string(no_invalidate));
        log('           force', get_boolean_as_string(force));

        v_ela := dbms_utility.get_time;

        dbms_stats.gather_table_stats
        (
            ownname          => user,
            tabname          => v_table_name,
            estimate_percent => estimate_percent,
            cascade          => cascade,
            method_opt       => method_opt,
            block_sample     => block_sample,
            degree           => degree,
            granularity      => granularity,
            no_invalidate    => no_invalidate,
            force            => force
        );

        logger.log('Gathering Ok!');
        logger.log('Gather time: '||(dbms_utility.get_time-v_ela) * 10 || ' msec.');

    ELSE
        logger.log('No stale statistics because ' || v_pct_log || ' < ' || v_pct_threshold_log);
    END IF;

END;
/

show errors;



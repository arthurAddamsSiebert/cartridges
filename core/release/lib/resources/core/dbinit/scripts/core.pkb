CREATE OR REPLACE PACKAGE BODY core IS

    ------------------------------------------------------------------------
    -- Name        : is_data_movement_available
    -- Description : This function returns TRUE if data movement (streams) option is TRUE
    --               and the DBMS_STREAMS_ADM package is executable. Notes:
    --               - only available in Enterprise Edition and
    --               - execute privilege for DBMS_STREAMS_ADM is granted to the current user
    -- Output      : TRUE if data movement option is enabled and DBMS_STREAMS_ADM is executable
    ------------------------------------------------------------------------
    FUNCTION is_data_movement_available RETURN BOOLEAN
    IS
        streams_option_available   NUMBER := 0;
        streams_package_executable NUMBER := 0;
    BEGIN

        -- Streams Capture option TRUE ?
        SELECT COUNT(*)
          INTO streams_option_available
          FROM v$option
         WHERE UPPER(parameter) LIKE '%STREAMS%'
           AND UPPER(value) = 'TRUE';

        -- EXECUTE privilege on DBMS_STREAMS_ADM ?
        SELECT COUNT(*)
          INTO streams_package_executable
          FROM all_tab_privs
         WHERE table_name = 'DBMS_STREAMS_ADM'
           AND privilege  = 'EXECUTE';

        IF streams_option_available>0 AND streams_package_executable>0 THEN
            logger.log('Data movement (Streams option see v$option) TRUE and DBMS_STREAMS_ADM executable.');
            RETURN TRUE;
        ELSE
            logger.log('Data movement (Streams option see v$option) not TRUE ('||streams_option_available||') '||
              'or/and DBMS_STREAMS_ADM package not executable ('||streams_package_executable||').');
            RETURN FALSE;
        END IF;

    END;

    ------------------------------------------------------------------------
    -- Name        : suppress_data_movement
    -- Description : it suppress data movement (Oracle Streams) by setting
    --               a tag other than NULL for the current session.
    -- Input       : tag - the binary tag, default 42 for all subsequent redo entries
    --               The size limit for a tag value is 2000 bytes
    -- Example     : exec core.suppress_data_movement('42')
    ------------------------------------------------------------------------
    PROCEDURE suppress_data_movement(tag IN VARCHAR2 DEFAULT '42')
    AS
        l_cnt       NUMBER;
        l_sql       VARCHAR2(200) := 'BEGIN DBMS_STREAMS_ADM.SET_TAG (tag => HEXTORAW(:tag)); END;';
    BEGIN
        IF is_data_movement_available THEN
            EXECUTE IMMEDIATE l_sql USING tag;
            logger.log('Data movement (Streams) suppressed by: '||l_sql||' using :tag = '||tag);
        ELSE
            logger.log('Suppress data movement (Streams) not available.');
        END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : enable_data_movement
    -- Description : it enables data movement (Oracle Streams) by setting
    --               a tag to NULL for the current session.
    -- Input       : none
    -- Output      : none
    -- Example     : exec core.enable_data_movement
    ------------------------------------------------------------------------
    PROCEDURE enable_data_movement
    AS
        l_cnt       NUMBER;
        l_sql       VARCHAR2(200) := 'BEGIN DBMS_STREAMS_ADM.SET_TAG (tag => NULL); END;';
    BEGIN
        IF is_data_movement_available THEN
            EXECUTE IMMEDIATE l_sql;
            logger.log('Data movement (Streams) enabled by: '||l_sql);
        ELSE
            logger.log('Enable data movement (Streams) not available.');
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : getLastNumberLength
    -- Description : Returns the last number and it's length of a sequence
    -- Input       : seriesName - a series name
    -- Output      : l_len - The length of the last number
    --               l_lastNumber - The last number
    ------------------------------------------------------------------------------------------
    FUNCTION getLastNumberLength(seriesName IN VARCHAR2)
    RETURN NUMBER AS
        l_len        NUMBER;
        l_lastNumber NUMBER;
    BEGIN
        SELECT LENGTH(last_number), last_number INTO l_len, l_lastNumber FROM user_sequences WHERE sequence_name = UPPER(seriesName);
        logger.log('getLastNumberLength.Sequence: '|| seriesName);
        logger.log('getLastNumberLength.Sequence.last_number: '|| l_lastNumber);
        RETURN l_len;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : incrementSequence
    -- Description : Increments a sequence by count
    -- Input       : sequenceName - a sequence name
    --               cnt - a count
    -- Output      : The next value.
    -- Example     : select core.incrementSequence('CreateABTestEventID', 1e6) from dual;
    ------------------------------------------------------------------------------------------
    FUNCTION incrementSequence(sequenceName IN VARCHAR2, cnt NUMBER)
    RETURN NUMBER AS
        l_seq NUMBER;
        l_inc NUMBER;
        l_str VARCHAR2(200);
        PRAGMA AUTONOMOUS_TRANSACTION;
    BEGIN
        SELECT increment_by INTO l_inc FROM user_sequences WHERE UPPER(sequence_name) = UPPER(sequenceName);

        l_str := 'ALTER SEQUENCE ' || sequenceName || ' INCREMENT BY  ' || cnt;
        EXECUTE IMMEDIATE l_str;
        logger.log(l_str);

        l_str := 'SELECT ' || sequenceName || '.nextval FROM DUAL';
        EXECUTE IMMEDIATE l_str INTO l_seq;
        logger.log(l_str);

        l_str := 'ALTER SEQUENCE ' || sequenceName || ' INCREMENT BY ' || l_inc;
        EXECUTE IMMEDIATE l_str;
        logger.log(l_str);

        RETURN l_seq;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : incrementSequenceByNextval
    -- Description : Increments a sequence by next value cnt times.
    -- Input       : sequenceName - a sequence name
    --               cnt -  a loop counter
    -- Output      : The next value.
    ------------------------------------------------------------------------------------------
    FUNCTION incrementSequenceByNextval(sequenceName IN VARCHAR2, cnt NUMBER)
    RETURN NUMBER AS
        l_seq NUMBER;
    BEGIN
        FOR i IN 1..cnt LOOP
            EXECUTE IMMEDIATE 'SELECT ' || sequenceName || '.nextval FROM DUAL' INTO l_seq;
            --logger.log('i, l_seq: '|| i||', '||l_seq);
        END LOOP;
        RETURN l_seq;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : getSequenceName
    -- Description : Gets a sequence name based on the series id
    -- Input       : seriesID - a series id
    -- Output      : The sequence name.
    ------------------------------------------------------------------------------------------
    FUNCTION getSequenceName(seriesID IN VARCHAR2)
    RETURN VARCHAR AS
        l_sequenceName user_sequences.sequence_name%TYPE;
    BEGIN
        SELECT us.sequence_name INTO l_sequenceName
          FROM basicseriesentry  bse
          JOIN user_sequences    us ON (us.sequence_name = UPPER(bse.sequencename))
         WHERE bse.IDENTIFIER = seriesID;
        RETURN l_sequenceName;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : sequenceExists
    -- Description : Checks if a sequence exists
    -- Input       : seriesID - a series id
    -- Output      : The number of sequences that exist.
    ------------------------------------------------------------------------------------------
    FUNCTION sequenceExists(seriesID IN VARCHAR2)
    RETURN NUMBER AS
        l_cnt NUMBER;
    BEGIN
        SELECT COUNT(*) INTO l_cnt
        FROM basicseriesentry  bse
        JOIN user_sequences    us ON (us.sequence_name = UPPER(bse.sequencename))
        WHERE bse.IDENTIFIER = seriesID;
        RETURN l_cnt;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : getMaxUsedID
    -- Description : Returns the maximum used number
    -- Input       : tableName - a table name
    --               columnName - a column name
    --               domainUUID - the domain id
    --               seriesName - the series name
    --               numberPattern - the number pattern
    -- Output      : The maximum number
    ------------------------------------------------------------------------------------------
    FUNCTION getMaxUsedID(
        tableName       IN VARCHAR2,
        columnName      IN VARCHAR2,
        domainUUID      IN VARCHAR2,
        seriesName      IN VARCHAR2,
        numberPattern   IN VARCHAR2)
    RETURN NUMBER AS

        l_number            NUMBER;
        l_maxNumber         NUMBER := 0;
        l_patternUsedLength NUMBER := LENGTH(numberPattern) - core.getLastNumberLength(seriesName);

        number_format   EXCEPTION;
        PRAGMA EXCEPTION_INIT(number_format, -6502);

        TYPE ref_cur_type IS REF CURSOR;
        ref_cur ref_cur_type;
        l_id VARCHAR2(256);

        l_sqlstring VARCHAR2(300) :=
            'SELECT ' || columnName || ' FROM ' || tableName ||
            ' WHERE domainid = :domainUUID '||
            ' AND LENGTH(:numberPattern) = LENGTH(' || columnName || ')'||
            ' AND ' || columnName || ' LIKE LPAD('''', SUBSTR(:numberPattern, 1, 1), :patternUsedLength  )' || '||''%''';


    BEGIN

        logger.log('getMaxUsedID.sqlstring: '||l_sqlstring);
        logger.log('getMaxUsedID.sqlstring.binds: '||domainUUID||','||numberPattern||','||numberPattern||','||l_patternUsedLength);

        OPEN ref_cur FOR l_sqlstring
            USING domainUUID, numberPattern, numberPattern, l_patternUsedLength;
        LOOP

            FETCH ref_cur INTO l_id;
            EXIT WHEN ref_cur%NOTFOUND;

            BEGIN
                 l_number := TO_NUMBER(l_id);
            EXCEPTION WHEN number_format THEN NULL;
            END;

            IF l_number > l_maxNumber THEN
                l_maxNumber := l_number;
            END IF;

        END LOOP;
        CLOSE ref_cur;

        RETURN l_maxNumber;

    END;

    ------------------------------------------------------------------------
    -- Name        : sync_all_ctx_indexes
    -- Description : synchronize all text indexes
    -- Input       : memory, parallel_degree
    -- Example     : exec core.sync_all_ctx_indexes()
    --               exec core.sync_all_ctx_indexes('100M',2)
    ------------------------------------------------------------------------
    PROCEDURE sync_all_ctx_indexes
    (
        memory          IN VARCHAR2 DEFAULT '250M',
        parallel_degree IN NUMBER   DEFAULT 2
    )
    AS
        l_start         NUMBER;
        l_end           NUMBER;
    BEGIN

        logger.log('Text index synchronization with parameters: ');
        logger.log('Memory: '||memory);
        logger.log('Parallel Degree: '||parallel_degree);

        logger.log(rpad('Tablename.Indexname',  72,' ')
            ||' '||lpad('PendingCount',         12,' ')
            ||' '||lpad('SyncElaTime s.',       14,' '));

        FOR ctx IN
        (
          SELECT idx_name,idx_table,
                 (SELECT COUNT(*) AS cnt
                    FROM ctx_user_pending
                   WHERE pnd_index_name = idx_name
                 ) AS cnt
            FROM ctx_user_indexes
            ORDER BY idx_table,idx_name
        ) LOOP

            l_start := dbms_utility.get_time;

            core.sync_ctx_index
            (
                index_name      => ctx.idx_name,
                memory          => memory,
                parallel_degree => parallel_degree
            );

            l_end := dbms_utility.get_time;
            logger.log(rpad(ctx.idx_table||'.'||ctx.idx_name||': finished.',72,' ')
                ||' '||lpad(ctx.cnt,12,' ')
                ||' '||lpad(trunc((l_end-l_start)*10/1000, 2),14,' '));

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : sync_ctx_index
    -- Description : synchronize a text index
    -- Input       : index_name, memory, parallel_degree
    -- Example     : exec core.sync_ctx_index('PRODUCT_CTX','100M',2)
    --               exec core.sync_ctx_index('PRODUCT_CTX$1','100M',2)
    ------------------------------------------------------------------------
    PROCEDURE sync_ctx_index
    (
        index_name      IN VARCHAR2,
        memory          IN VARCHAR2 DEFAULT NULL,
        parallel_degree IN NUMBER   DEFAULT 1
    )
    AS
    BEGIN
        logger.log(index_name||': synchronize...');

        ctx_ddl.sync_index
        (
            idx_name        => index_name,
            memory          => memory,
            parallel_degree => parallel_degree
        );
    END;

    ------------------------------------------------------------------------
    -- Name        : sync_ctx_index
    -- Description : synchronize a text index for given table and column
    -- Input       : tablename, column_name, memory, parallel_degree
    -- Example     : exec core.sync_ctx_index ('PRODUCT','ATTRIBUTES','100M',2)
    ------------------------------------------------------------------------
    PROCEDURE sync_ctx_index
    (
        tablename       IN VARCHAR2,
        column_name     IN VARCHAR2,
        memory          IN VARCHAR2 DEFAULT NULL,
        parallel_degree IN NUMBER   DEFAULT 1
    )
    AS
    BEGIN
        FOR ctx IN
        (
          SELECT idx_name
            FROM ctx_user_indexes
           WHERE UPPER(idx_text_name) = UPPER(column_name)
             AND UPPER(idx_table) IN (SELECT table_name
                                        FROM user_synonyms
                                       WHERE UPPER(synonym_name) = UPPER(tablename)
                                       UNION
                                      SELECT UPPER(tablename) FROM dual)
           ORDER BY idx_name
        ) LOOP

            core.sync_ctx_index
            (
                index_name      => ctx.idx_name,
                memory          => memory,
                parallel_degree => parallel_degree
            );

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : sync_ctx_indexes
    -- Description : synchronize all text indexex for given table
    -- Input       : tablename, memory, parallel_degree
    -- Example     : exec core.sync_ctx_indexes('PRODUCT','100M',2)
    ------------------------------------------------------------------------
    PROCEDURE sync_ctx_indexes
    (
        tablename       IN VARCHAR2,
        memory          IN VARCHAR2 DEFAULT NULL,
        parallel_degree IN NUMBER   DEFAULT 1
    )
    AS
    BEGIN
        FOR col IN
        (
          SELECT idx_text_name
            FROM ctx_user_indexes
           WHERE UPPER(idx_table) IN (SELECT table_name
                                        FROM user_synonyms
                                       WHERE UPPER(synonym_name) = UPPER(tablename)
                                       UNION
                                      SELECT UPPER(tablename) FROM dual)
        ) LOOP

            core.sync_ctx_index
            (
                tablename       => tablename,
                column_name     => col.idx_text_name,
                memory          => memory,
                parallel_degree => parallel_degree
            );

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : optimize_ctx_index
    -- Description : optimize a text index
    -- Input       : index_name, ... parallel_degree
    -- Example     : exec core.optimize_ctx_index('PRODUCT_CTX$1')
    --             : exec core.optimize_ctx_index('PRODUCT_CTX$1','FULL',2)
    ------------------------------------------------------------------------
    PROCEDURE optimize_ctx_index
    (
        index_name      IN VARCHAR2,
        optlevel        IN VARCHAR2 DEFAULT 'FAST',
        parallel_degree IN NUMBER   DEFAULT 1,
        maxtime         IN NUMBER   DEFAULT NULL,
        token           IN VARCHAR2 DEFAULT NULL,
        part_name       IN VARCHAR2 DEFAULT NULL,
        token_type      IN NUMBER   DEFAULT NULL
    )
    AS
    BEGIN
        logger.log(index_name||': optimize...');
        ctx_ddl.optimize_index
        (
            idx_name        => index_name,
            optlevel        => optlevel,
            maxtime         => maxtime,
            token           => token,
            part_name       => part_name,
            token_type      => token_type,
            parallel_degree => parallel_degree
        );
    END;

    ------------------------------------------------------------------------
    -- Name        : optimize_ctx_index
    -- Description : optimize a text index for given table and column
    -- Input       : tablename, column_name, ... , parallel_degree
    -- Example     : exec core.optimize_ctx_index('PRODUCT','ATTRIBUTES',      'FAST', 1)
    --             : exec core.optimize_ctx_index('PRODUCT','ATTRIBUTES',      'FULL', 2)
    --             : exec core.optimize_ctx_index('PRODUCT','ATTRIBUTES_EN_US','FULL', 2)
    ------------------------------------------------------------------------
    PROCEDURE optimize_ctx_index
    (
        tablename       IN VARCHAR2,
        column_name     IN VARCHAR2,
        optlevel        IN VARCHAR2 DEFAULT 'FAST',
        parallel_degree IN NUMBER   DEFAULT 1
    )
    AS
    BEGIN
        FOR ctx IN
        (
          SELECT idx_name
            FROM ctx_user_indexes
           WHERE UPPER(idx_text_name) = UPPER(column_name)
             AND UPPER(idx_table) IN (SELECT table_name
                                        FROM user_synonyms
                                       WHERE UPPER(synonym_name) = UPPER(tablename)
                                       UNION
                                      SELECT UPPER(tablename) FROM dual)
           ORDER BY idx_name
        ) LOOP

            core.optimize_ctx_index
            (
                index_name      => ctx.idx_name,
                optlevel        => optlevel,
                parallel_degree => parallel_degree
            );

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : optimize_ctx_indexes
    -- Description : optimize all text index for given table
    -- Input       : tablename, optlevel, parallel_degree
    -- Example     : exec core.optimize_ctx_indexes('PRODUCT', 'FAST', 1)
    -- Example     : exec core.optimize_ctx_indexes('PRODUCT', 'FULL', 2)
    ------------------------------------------------------------------------
    PROCEDURE optimize_ctx_indexes
    (
        tablename       IN VARCHAR2,
        optlevel        IN VARCHAR2 DEFAULT 'FAST',
        parallel_degree IN NUMBER   DEFAULT 1
    )
    AS
    BEGIN
        FOR col IN
        (
          SELECT idx_text_name
            FROM ctx_user_indexes
           WHERE UPPER(idx_table) IN (SELECT table_name
                                        FROM user_synonyms
                                       WHERE UPPER(synonym_name) = UPPER(tablename)
                                       UNION
                                      SELECT UPPER(tablename) FROM dual)
        ) LOOP

            core.optimize_ctx_index
            (
                tablename       => tablename,
                column_name     => col.idx_text_name,
                optlevel        => optlevel,
                parallel_degree => parallel_degree
            );

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : optimize_all_ctx_indexes
    -- Description : optimize all text indexes
    -- Input       : optlevel, parallel_degree
    -- Example     : exec core.optimize_all_ctx_indexes()
    --             : exec core.optimize_all_ctx_indexes('FAST', 1)
    --             : exec core.optimize_all_ctx_indexes('FULL', 2)
    ------------------------------------------------------------------------
    PROCEDURE optimize_all_ctx_indexes
    (
        optlevel        IN VARCHAR2 DEFAULT 'FULL',
        parallel_degree IN NUMBER   DEFAULT 2
    )
    AS
        l_start         NUMBER;
        l_end           NUMBER;
    BEGIN

        logger.log('Text index optimization with parameters: ');
        logger.log('Optlevel: '||optlevel);
        logger.log('Parallel Degree: '||parallel_degree);

        logger.log(rpad('Tablename.Indexname',  72,' ')
            ||' '||lpad('OptiElaTime s.',       14,' '));

        FOR ctx IN
        (
          SELECT idx_name,idx_table
            FROM ctx_user_indexes
            ORDER BY idx_table,idx_name
        ) LOOP

            l_start := dbms_utility.get_time;

            core.optimize_ctx_index
            (
                index_name      => ctx.idx_name,
                optlevel        => optlevel,
                parallel_degree => parallel_degree
            );

            l_end := dbms_utility.get_time;
            logger.log(rpad(ctx.idx_table||'.'||ctx.idx_name||': finished.',72,' ')
               ||' '|| lpad(trunc((l_end-l_start)*10/1000, 2),14,' '));

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : set_tab_stats
    -- Description : set initial table statistics
    -- Input       : tablename, table name
    --               nrows, number rows
    -- Example     : exec core.set_tab_stats('LOCATION');
    --             : exec core.set_tab_stats('LOCATION', 200000);
    --
    --               SELECT table_name,last_analyzed,num_rows
    --                 FROM user_tables
    --                WHERE table_name like 'LOCATION%';
    --
    --               exec dbms_stats.delete_table_stats(USER, 'LOCATION')
    --               exec dbms_stats.delete_table_stats(USER, UPPER(STAGING.GET_LIVE_TABLE_NAME('LOCATION')))
    --               exec dbms_stats.delete_table_stats(USER, UPPER(STAGING.GET_SHADOW_TABLE_NAME('LOCATION')))
    ------------------------------------------------------------------------
    PROCEDURE set_tab_stats
    (
        tablename   user_tables.table_name%TYPE,
        nrows       NUMBER DEFAULT 100000
    )
    AS
        l_tab_name  user_tables.table_name%TYPE := UPPER(STAGING.GET_LIVE_TABLE_NAME(tablename));
    BEGIN
        -- set table stats
        DBMS_STATS.SET_TABLE_STATS
        (
            ownname       => USER,
            tabname       => l_tab_name,
            numrows       => nrows,
            no_invalidate => FALSE
        );
        logger.log(l_tab_name || ', set table stats, number rows: '|| nrows || '.');
    END;

    ------------------------------------------------------------------------
    -- Name        : set_idx_stats
    -- Description : set initial index statistics
    --
    -- Input       : tablename, table name
    --               idx_col    indexed column
    --               nrows      number of rows in the index
    --               ndistrows  number of distinct keys in the index
    --               nlblks     number of leaf blocks in the index
    --
    -- Example     : exec core.set_idx_stats('LOCATION', 'ID',              50000, 50000, 10);
    --               exec core.set_idx_stats('LOCATION', 'STATEPROVINCEID', 50000, 10, 50000);
    --
    --               SELECT table_name,index_name,column_name,column_position
    --                 FROM user_ind_columns
    --                WHERE table_name LIKE 'LOCATION%'
    --             ORDER BY table_name,index_name,column_position,column_name;
    --
    --               SELECT table_name,index_name,last_analyzed,num_rows,
    --                      leaf_blocks,distinct_keys
    --                 FROM user_indexes
    --                WHERE table_name LIKE 'LOCATION%'
    --             ORDER BY table_name,index_name;
    --
    ------------------------------------------------------------------------
    PROCEDURE set_idx_stats
    (
        tablename   user_tables.table_name%TYPE,
        idx_col     user_ind_columns.column_name%TYPE,
        nrows       NUMBER,
        ndistrows   NUMBER,
        nlblks      NUMBER
    )
    AS
        l_tab_name  user_tables.table_name%TYPE := UPPER(STAGING.GET_LIVE_TABLE_NAME(tablename));
        l_col_name  user_ind_columns.column_name%TYPE := UPPER(idx_col);
    BEGIN
        -- stats for given indexed table column
        FOR rec IN (SELECT index_name FROM user_ind_columns WHERE table_name = l_tab_name AND column_name = l_col_name)
        LOOP
            DBMS_STATS.SET_INDEX_STATS
            (
                ownname       => USER,
                indname       => rec.index_name,
                numrows       => nrows,
                numdist       => ndistrows,
                numlblks      => nlblks,
                no_invalidate => FALSE
            );
            logger.log(l_tab_name||' - '||rec.index_name||', set index stats.');
            logger.log(' number of rows in the index: '|| nrows);
            logger.log(' number of distinct keys in the index: '|| ndistrows);
            logger.log(' number of leaf blocks in the index: '|| nlblks);
        END LOOP;
    END;

END;
/

show errors;



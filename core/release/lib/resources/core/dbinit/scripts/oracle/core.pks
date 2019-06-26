CREATE OR REPLACE PACKAGE core IS

    ------------------------------------------------------------------------------------------
    -- Name        : core
    -- History     : user             date       - desc
    --             : T. Kober         01/17/2011 - data movement functionality (suppress/enable) added
    -- Created     : J. Grabs
    -- Description : This package provides some methods that are specific to functionality of
    --               core cartridge
    ------------------------------------------------------------------------------------------


    ------------------------------------------------------------------------
    -- Name        : is_data_movement_available
    -- Description : This function returns TRUE if data movement (streams) option is TRUE
    --               and the DBMS_STREAMS_ADM package is executable. Notes:
    --               - only available in Enterprise Edition and
    --               - execute privilege for DBMS_STREAMS_ADM is granted to the current user
    -- Output      : TRUE if data movement option is enabled and DBMS_STREAMS_ADM is executable
    ------------------------------------------------------------------------
    FUNCTION is_data_movement_available RETURN BOOLEAN;

    ------------------------------------------------------------------------
    -- Name        : suppress_data_movement
    -- Description : it suppress data movement (Oracle Streams) by setting
    --               a tag other than NULL for the current session.
    -- Input       : tag - the binary tag, default 42 for all subsequent redo entries
    --               The size limit for a tag value is 2000 bytes
    -- Example     : exec core.suppress_data_movement('42')
    ------------------------------------------------------------------------
    PROCEDURE suppress_data_movement(tag IN VARCHAR2 DEFAULT '42');

    ------------------------------------------------------------------------
    -- Name        : enable_data_movement
    -- Description : it enables data movement (Oracle Streams) by setting
    --               a tag to NULL for the current session.
    -- Input       : none
    -- Output      : none
    -- Example     : exec core.enable_data_movement
    ------------------------------------------------------------------------
    PROCEDURE enable_data_movement;

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
    FUNCTION getMaxUsedID(tableName IN VARCHAR2,
                          columnName IN VARCHAR2,
                          domainUUID IN VARCHAR2,
                          seriesName IN VARCHAR2,
                          numberPattern IN VARCHAR2) RETURN NUMBER;


    ------------------------------------------------------------------------------------------
    -- Name        : getLastNumberLength
    -- Description : Returns the last number and it's length of a sequence
    -- Input       : seriesName - a series name
    -- Output      : l_len - The length of the last number
    --               l_lastNumber - The last number
    ------------------------------------------------------------------------------------------
    FUNCTION getLastNumberLength(seriesName IN VARCHAR2) RETURN NUMBER;

    ------------------------------------------------------------------------------------------
    -- Name        : incrementSequence
    -- Description : Increments a sequence by count
    -- Input       : sequenceName - a sequence name
    --               cnt - a count
    -- Output      : The next value.
    ------------------------------------------------------------------------------------------
    FUNCTION incrementSequence(sequenceName IN VARCHAR2, cnt NUMBER) RETURN NUMBER;

    ------------------------------------------------------------------------------------------
    -- Name        : incrementSequenceByNextval
    -- Description : Increments a sequence by next value cnt times.
    -- Input       : sequenceName - a sequence name
    --               cnt -  a loop counter
    -- Output      : The next value.
    ------------------------------------------------------------------------------------------
    FUNCTION incrementSequenceByNextval(sequenceName IN VARCHAR2, cnt NUMBER) RETURN NUMBER;

    ------------------------------------------------------------------------------------------
    -- Name        : sequenceExists
    -- Description : Checks if a sequence exists
    -- Input       : seriesID - a series id
    -- Output      : The number of sequences that exist.
    ------------------------------------------------------------------------------------------
    FUNCTION sequenceExists(seriesID IN VARCHAR2) RETURN NUMBER;

    ------------------------------------------------------------------------------------------
    -- Name        : getSequenceName
    -- Description : Gets a sequence name based on the series id
    -- Input       : seriesID - a series id
    -- Output      : The sequence name.
    ------------------------------------------------------------------------------------------
    FUNCTION getSequenceName(seriesID IN VARCHAR2) RETURN VARCHAR;

    ------------------------------------------------------------------------
    -- Name        : sync_all_ctx_indexes
    -- Description : synchronize all text indexes
    -- Input       : memory, parallel_degree
    -- Example     : exec core.sync_all_ctx_indexes()
    --               exec core.sync_all_ctx_indexes('100M', 2)
    ------------------------------------------------------------------------
    PROCEDURE sync_all_ctx_indexes
    (
        memory          IN VARCHAR2 DEFAULT '250M',
        parallel_degree IN NUMBER   DEFAULT 2
    );

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
    );

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
    );

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
    );

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
    );

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
    );

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
    );

    ------------------------------------------------------------------------
    -- Name        : optimize_all_ctx_indexes
    -- Description : optimize all text indexes
    -- Input       : memory, ... parallel_degree
    -- Example     : exec core.optimize_all_ctx_indexes()
    --             : exec core.optimize_all_ctx_indexes('FAST', 1)
    --             : exec core.optimize_all_ctx_indexes('FULL', 2)
    ------------------------------------------------------------------------
    PROCEDURE optimize_all_ctx_indexes
    (
        optlevel        IN VARCHAR2 DEFAULT 'FULL',
        parallel_degree IN NUMBER   DEFAULT 2
    );

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
    );

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
    );

END;
/

show errors;

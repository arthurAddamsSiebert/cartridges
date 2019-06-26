--
-- set initial table/index statistics for the first initial geo-object mass data imports
-- to avoid wrong Oracle execution plans like full primary key index scans or full table scans.
--

DECLARE

    PROCEDURE set_tab_stats
    (
        tablename   user_tables.table_name%TYPE,
        nrows       NUMBER   -- Number of rows in the index
    )
    AS
        l_tab_name  user_tables.table_name%TYPE := UPPER(STAGING.GET_LIVE_TABLE_NAME(tablename));
    BEGIN

        -- table stats
        DBMS_STATS.SET_TABLE_STATS
        (
            ownname       => USER,
            tabname       => l_tab_name,
            numrows       => nrows,
            no_invalidate => FALSE
        );

    END;

    PROCEDURE set_idx_stats
    (
        tablename   user_tables.table_name%TYPE,
        idx_col     user_ind_columns.column_name%TYPE,
        nrows       NUMBER,     -- Number of rows in the index
        ndistrows   NUMBER,     -- Number of distinct keys in the index
        nlblks      NUMBER      -- Number of leaf blocks in the index
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
        END LOOP;
    END;

BEGIN

    --
    -- set rows/idx stats for about 50k
    --
    -- LOCATION
    set_tab_stats('LOCATION', 50000);
    set_idx_stats('LOCATION', 'ID',                 50000, 50000, 10);
    set_idx_stats('LOCATION', 'STATEPROVINCEID',    50000, 10, 50000);
    set_idx_stats('LOCATION', 'COUNTRYID',          50000, 10, 50000);
    set_idx_stats('LOCATION', 'UUID',               50000, 10, 50000);

    --
    -- set rows/idx stats for about 5k
    --
    -- STATEPROVINCE
    set_tab_stats('STATEPROVINCE', 5000);
    set_idx_stats('STATEPROVINCE', 'ID',            5000, 5000, 10);
    set_idx_stats('STATEPROVINCE', 'COUNTRYID',     5000, 10, 5000);
    set_idx_stats('STATEPROVINCE', 'UUID',          5000, 10, 5000);
    -- COUNTRY
    set_tab_stats('COUNTRY', 5000);
    set_idx_stats('COUNTRY', 'ID',                  5000, 5000, 10);
    set_idx_stats('COUNTRY', 'UUID'      ,          5000, 10, 5000);

END;
/

/*

SELECT *
  FROM user_ind_columns
 WHERE table_name LIKE 'STATEPROVINCE%'
    OR table_name LIKE 'LOCATION%'
    OR table_name LIKE 'COUNTRY%'
/

SELECT table_name,last_analyzed,num_rows
  FROM user_tables
 WHERE table_name like 'STATEPROVINCE%'
    OR table_name like 'LOCATION%'
    OR table_name LIKE 'COUNTRY%'
/

SELECT table_name,index_name,last_analyzed,num_rows,leaf_blocks,distinct_keys
  FROM user_indexes
 WHERE table_name like 'STATEPROVINCE%'
    OR table_name like 'LOCATION%'
    OR table_name LIKE 'COUNTRY%'
/


-- EXEC dbms_stats.delete_schema_stats(USER)

*/

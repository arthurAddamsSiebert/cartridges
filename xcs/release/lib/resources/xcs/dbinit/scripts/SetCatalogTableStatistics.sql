--
-- set initial table/index statistics for the first initial catalog category mass data imports
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
    -- CATALOGCATEGORY
    set_tab_stats('CATALOGCATEGORY', 50000);
    set_idx_stats('CATALOGCATEGORY', 'NAME',             50000, 50000, 10);
    set_idx_stats('CATALOGCATEGORY', 'ROOTCATEGORYFLAG', 50000, 10, 50000);

    -- PRODUCT
    set_tab_stats('PRODUCT', 50000);
    set_idx_stats('PRODUCT', 'SKU', 50000, 50000, 10);

    -- DERIVEDPRODUCT
	set_tab_stats('DERIVEDPRODUCT', 50000);
    set_idx_stats('DERIVEDPRODUCT', 'SKU', 50000, 50000, 10);
    set_idx_stats('DERIVEDPRODUCT', 'BASEPRODUCTID', 50000, 10, 50000);

    -- IMAGEPRODUCTASSIGNMENT
    set_tab_stats('IMAGEPRODUCTASSIGNMENT', 50000);
    set_idx_stats('IMAGEPRODUCTASSIGNMENT', 'PRODUCTUUID', 50000, 50000, 10);
    
    -- IMAGEREFERENCE
    set_tab_stats('IMAGEREFERENCE', 50000);
    set_idx_stats('IMAGEREFERENCE', 'UUID', 50000, 50000, 10);
    
END;
/

/*

SELECT *
  FROM user_ind_columns
 WHERE table_name IN ('CATALOGCATEGORY','PRODUCT','IMAGEPRODUCTASSIGNMENT','DERIVEDPRODUCT','IMAGEREFERENCE')
/

SELECT table_name,last_analyzed,num_rows
  FROM user_tables
 WHERE table_name IN ('CATALOGCATEGORY','PRODUCT','IMAGEPRODUCTASSIGNMENT','DERIVEDPRODUCT','IMAGEREFERENCE')
/

SELECT table_name,index_name,last_analyzed,num_rows,leaf_blocks,distinct_keys
  FROM user_indexes
 WHERE table_name IN ('CATALOGCATEGORY','PRODUCT','IMAGEPRODUCTASSIGNMENT','DERIVEDPRODUCT','IMAGEREFERENCE')
/

*/

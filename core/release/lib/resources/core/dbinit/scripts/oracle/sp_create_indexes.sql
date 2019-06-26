CREATE OR REPLACE PROCEDURE sp_create_indexes ( column IN VARCHAR2, suffix IN VARCHAR2, tablespace IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_create_indexes
-- Created     : Thomas Budich
-- Description : This procedure is used to create an index with given suffix on given column on all
--               staging tables.
-- Input       : column_name The column name, on which one a index should be created.
--               suffix      The suffix of index name
--               tablespace  The table space in which one the indexes should be created.
-- Output      : none
-- Example     : exec sp_create_indexes('LASTMODIFIED', '_IE500', 'IS_INDX')
------------------------------------------------------------------------------------------

        cur             INTEGER;
        ret             INTEGER;
        table_name      VARCHAR2(30);
        query           VARCHAR2(255);
        CURSOR table_cur IS
                SELECT t.table_name
                FROM   user_tab_columns t
                WHERE  (t.table_name LIKE '%$1' OR t.table_name LIKE '%$2') AND
                       t.column_name = column
                MINUS
                SELECT i.table_name
                FROM user_ind_columns i
                WHERE i.column_position=1 AND
                      i.column_name = column;
BEGIN
        cur := dbms_sql.open_cursor;
        OPEN table_cur;
        LOOP
                FETCH table_cur INTO table_name;
                EXIT WHEN table_cur%NOTFOUND
                          OR table_cur%ROWCOUNT=0;
                --
                -- create an index on current table (lastmodified)
                -- -> index ends with 'IE500'
                --
                query := 'CREATE INDEX '||table_name||suffix||' ON '||table_name||'('||column||') TABLESPACE '||tablespace;
                -- dbms_output.put_line(query);
                dbms_sql.parse(cur, query, dbms_sql.v7);
                ret := dbms_sql.execute(cur);
                COMMIT;
        END LOOP;
        CLOSE table_cur;
        dbms_sql.close_cursor(cur);

EXCEPTION
        WHEN OTHERS THEN
        BEGIN
        		CLOSE table_cur;

                IF dbms_sql.is_open(cur) THEN
                      dbms_sql.close_cursor(cur);
                END IF;

                -- dbms_output.put_line('Error: '||SQLERRM);
                raise;
        END;

END sp_create_indexes;
/

show errors;

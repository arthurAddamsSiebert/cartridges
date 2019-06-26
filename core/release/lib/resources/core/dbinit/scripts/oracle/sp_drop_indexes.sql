CREATE OR REPLACE PROCEDURE sp_drop_indexes ( suffix IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_drop_indexes
-- Created     : Thomas Budich
-- Description : This procedure is used to drop all indexes with given suffix.
-- Input       : suffix      The suffix of index name
-- Output      : none
-- Example     : exec sp_drop_indexes('_IE500')
------------------------------------------------------------------------------------------

        cur             INTEGER;
        ret             INTEGER;
        index_name      VARCHAR2(30);
        query           VARCHAR2(255);
        CURSOR index_cur IS
                SELECT index_name
                FROM   user_indexes
                WHERE  (table_name LIKE '%$1' OR table_name LIKE '%$2') AND
                       index_name LIKE '%'||suffix;

BEGIN
        cur := dbms_sql.open_cursor;
        OPEN index_cur;
        LOOP
                FETCH index_cur INTO index_name;
                EXIT WHEN index_cur%NOTFOUND
                          OR index_cur%ROWCOUNT=0;
                --
                -- drop an index on current table (lastmodified)
                -- -> index ends with 'IE500'
                --
                query := 'DROP INDEX '||index_name;
                dbms_output.put_line(query);
                dbms_sql.parse(cur, query, dbms_sql.v7);
                ret := dbms_sql.execute(cur);
                COMMIT;
        END LOOP;
        CLOSE index_cur;
        dbms_sql.close_cursor(cur);

EXCEPTION
        WHEN OTHERS THEN
        BEGIN
                IF dbms_sql.is_open(cur) THEN
                      dbms_sql.close_cursor(cur);
                END IF;

                dbms_output.put_line('Error: '||SQLERRM);
                raise;
        END;

END sp_drop_indexes;
/

show errors;

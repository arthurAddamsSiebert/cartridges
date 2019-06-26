--
-- Special handling for "alter TIMESTAMP(n) to TIMESTAMP(9)" for timestamp columns with functional indexes
-- to avoid ORA-30556: functional index is defined on the column to be modified
--

--
-- FUNCTION-BASED indexes:
-- build enfinity_fb_indexes_ddl table
--
DECLARE
    tab_exists   NUMBER;
BEGIN
    SELECT count(*) INTO tab_exists FROM user_tables WHERE table_name = 'ENFINITY_FB_INDEXES_DDL';
    IF tab_exists > 0 THEN
        sql_util.execute('DELETE FROM enfinity_fb_indexes_ddl');
    ELSE
        sql_util.execute('
                          CREATE TABLE enfinity_fb_indexes_ddl
                          (
                            idx_table       VARCHAR2(30 CHAR),
                            idx_name        VARCHAR2(30 CHAR),
                            ddl             VARCHAR2(4000 CHAR)
                          )
                        ');
        -- sql_util.execute('COMMENT ON TABLE enfinity_fb_indexes_ddl IS ''core''');
    END IF;
    sql_util.execute('
                        INSERT INTO enfinity_fb_indexes_ddl (idx_table, idx_name, ddl)
                        SELECT table_name, index_name,
                               REPLACE(REPLACE(dbms_metadata.get_ddl(''INDEX'', index_name), ''"''||user||''".'', ''''),CHR(10),'''') ddl
                          FROM user_indexes ui
                         WHERE EXISTS (SELECT 1
                                         FROM user_ind_columns uic
                                         JOIN user_tab_columns utc ON (utc.table_name = uic.table_name AND utc.column_name = uic.column_name)
                                        WHERE uic.index_name = ui.index_name
                                          AND utc.data_type LIKE ''TIMESTAMP%''
                                          AND utc.data_scale < 9
                                      )
                           AND index_type LIKE ''FUNCTION-BASED%''
                    ');
END;
/

SELECT ddl FROM enfinity_fb_indexes_ddl ORDER BY ddl
/

--
-- drop all TIMESTAMP column functional indexes to avoid
--   ORA-30556: functional index is defined on the column to be modified
-- during alter TIMESTAMP(6) to TIMESTAMP(9)
--
BEGIN
    FOR i IN (SELECT idx_name FROM enfinity_fb_indexes_ddl)
    LOOP sql_util.execute('DROP INDEX '||i.idx_name);
    END LOOP;
END;
/

--
-- alter TIMESTAMP(6) to TIMESTAMP(9)
--
DECLARE
    stmt VARCHAR2(200);
BEGIN
    FOR rec IN
    (
        SELECT table_name, column_name
            FROM user_tab_columns utc
            JOIN enfinity_fb_indexes_ddl fb_tabs ON (fb_tabs.idx_table = utc.table_name)
           WHERE utc.data_type LIKE ('TIMESTAMP%')

        ORDER BY table_name, column_name
    )
    LOOP
        stmt := 'ALTER TABLE '||rec.table_name||' MODIFY '||rec.column_name||' TIMESTAMP(9)';
        sql_util.execute(stmt);
    END LOOP;
END;
/

--
-- re-create all TIMESTAMP functional indexes
--   ORA-30556: functional index is defined on the column to be modified
-- during alter TIMESTAMP(6) to TIMESTAMP(9)
--

BEGIN
    FOR i IN (SELECT ddl FROM enfinity_fb_indexes_ddl)
    LOOP sql_util.execute(i.ddl);
    END LOOP;
END;
/

--
-- drop enfinity_*_indexes_ddl table
--
DECLARE
    tab_exists   NUMBER;
BEGIN

    SELECT count(*) INTO tab_exists FROM user_tables WHERE table_name = 'ENFINITY_FB_INDEXES_DDL';
    IF tab_exists > 0 THEN
        sql_util.execute('DROP TABLE enfinity_fb_indexes_ddl PURGE');
    END IF;

END;
/

--SELECT ddl FROM enfinity_fb_indexes_ddl ORDER BY ddl
--/


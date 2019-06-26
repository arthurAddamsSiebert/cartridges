--
-- Recreate only all still existing localized XML attribute Text Indexes with multi-column-datastores
-- to indexes without multi-column-datastore settings.
--

--
-- localized attributes text indexes: build enfinity text indexes ddl table
--
DECLARE
    tab_exists   NUMBER;
BEGIN
    SELECT count(*) INTO tab_exists FROM user_tables WHERE table_name = 'ENFINITY_TEXT_IDX_DDL';
    IF tab_exists > 0 THEN
        sql_util.execute('DELETE FROM enfinity_text_idx_ddl');
    ELSE
        sql_util.execute('
                          CREATE TABLE enfinity_text_idx_ddl
                          (
                            idx_table       VARCHAR2(30 CHAR),
                            idx_name        VARCHAR2(30 CHAR),
                            ddl             VARCHAR2(4000 CHAR)
                          )
                        ');
        -- sql_util.execute('COMMENT ON TABLE enfinity_text_idx_ddl IS ''core''');
    END IF;
    sql_util.execute('
                        INSERT INTO enfinity_text_idx_ddl (idx_table, idx_name, ddl)
                        SELECT i.idx_table, i.idx_name, regexp_replace
                               (
                                  /* remove "USER". */
                                  REPLACE (dbms_metadata.get_ddl(''INDEX'', i.idx_name), ''"''||user||''".'', '''')
                                  /* remove Datastore Enfinity_Multi_Columns_*_* */
                                  ,''(.*)(Datastore.*Enfinity_Multi_Columns_[[:alpha:]]{2}_[[:alpha:]]{2}\s{1})(.*)'', ''\1\3'', 1, 1, ''in''
                               ) AS ddl
                          FROM ctx_user_indexes i
                          JOIN ctx_user_index_objects o ON (i.idx_name = o.ixo_index_name AND o.ixo_class = ''DATASTORE'' AND o.ixo_object = ''MULTI_COLUMN_DATASTORE'')
                         WHERE i.idx_text_name LIKE UPPER(''attributes\___\___'') ESCAPE ''\''
                         ORDER BY i.idx_name
                    ');
END;
/

SELECT ddl FROM enfinity_text_idx_ddl ORDER BY ddl
/

--
-- drop indexes
--
BEGIN
    FOR i IN (SELECT idx_name FROM enfinity_text_idx_ddl)
    LOOP sql_util.execute('DROP INDEX '||i.idx_name||' FORCE');
    END LOOP;
END;
/

--
-- re-create indexes
--
BEGIN
    FOR i IN (SELECT ddl FROM enfinity_text_idx_ddl)
    LOOP sql_util.execute(i.ddl);
    END LOOP;
END;
/

--
-- drop enfinity_text_idx_ddl table
--
DECLARE
    tab_exists   NUMBER;
BEGIN
    SELECT count(*) INTO tab_exists FROM user_tables WHERE table_name = 'ENFINITY_TEXT_IDX_DDL';
    IF tab_exists > 0 THEN
        sql_util.execute('DROP TABLE enfinity_text_idx_ddl PURGE');
        NULL;
    END IF;
END;
/


CREATE OR REPLACE PROCEDURE sp_check4NotUsableIndexes
------------------------------------------------------------------------------------------
-- Name        : sp_check4NotUsableIndexes
-- History     : user             date       - desc
--             : ...
--             : Andreas Finn     04/09/2015 - table size did change for 'user_indexes' from oracle 11 to oracle 12
--                                             recreation forced
--             : Thomas Kober     04/08/2014 - my_user_constraints table re-creation forced
--                                             if new column constraint_type not available  
--             : Thomas Kober     02/07/2014 - #IS-742 PK index drop exception if INDEX_NAME<>CONSTRAINT_NAME
--                                             ORA-02429: can not drop index used for enforcement of unique / primary key
--             : Thomas Budich    05/16/201? - Use bind values
--             : Thomas Kober     07/04/2011 - VARCHAR2 columns from BYTE to CHAR length semantics
--             : Thomas Kober     01/17/2011 - suppress data movement (oracle streams)
--             : Thomas Kober     09/14/2005 - drop 10g with purge option
--             : Thomas Kober     03/15/2004 - #3242, add DBMS_OUTPUT.ENABLE(1000000);
--             : Thomas Kober     03/02/2003 - primary key indexes wrongly handled,
--                                             do not delete, fixed
-- Created     : Thomas Kober     03/28/2002
-- Description : This procedure lists or deletes all not usable indexes. All primary key
--               indexes and unique indexes are not considered. E.g. the following is present:
--                 pk     idx: table1.index1(col1)
--                 normal idx: table1.index2(col1,col2)
--                 normal idx: table1.index3(col10,col11,col12)
--                 normal idx: table1.index4(col10,col11)
--                 normal idx: table1.index5(col10)
--               Result: table1.index1 not dropped, is primary key
--                       table1.index4 and table1.index5 dropped, are included
--                       within table1.index3
-- Owner       : The special enfinity (eCS/eTS) or MultiSite PowerTier user. This user
--               need the table creation privilege directly not granted by a role.
-- Input       : idrop - TRUE  force index dropping
--                       FALSE no index dropping, default is FALSE.
--             : debug - TRUE  for more debug info
--                       FALSE only drop index debug output, default is FALSE.
-- Output      : all not usable drop indexe statements.
-- Example     : set linesize 200 serveroutput on size 100000
--               exec sp_check4NotUsableIndexes(FALSE, FALSE);
------------------------------------------------------------------------------------------
(
  idrop BOOLEAN DEFAULT FALSE,
  debug BOOLEAN DEFAULT FALSE
)
AS
  ret          NUMBER;              -- return value
  col_cnt      NUMBER;              -- max indexed column counter per table
  cur          NUMBER;              -- a cursor variable
  cur#1        NUMBER;              -- a cursor variable loop #1
  cur#2        NUMBER;              -- a cursor variable loop #2
  tab_exists   NUMBER;              -- table exists counter
  col_size     NUMBER;              -- table coloumn counter for oracle tables
  my_col_size  NUMBER;              -- table coloumn counter for our tables
  table_name   VARCHAR2(30);        -- a table name
  index_name   VARCHAR2(30);        -- an index name
  column_names VARCHAR2(1000);      -- all column names for an index (comma ',' separated)
  column_sep   VARCHAR2(1) := '';   -- all column names separator
  index#1_name VARCHAR2(30);        -- an index name loop #1
  index#2_name VARCHAR2(30);        -- an index name loop #2
  str          VARCHAR2(2000);      -- a string

  -- cursor for all tables
  CURSOR tab_csr IS
    SELECT
      table_name
    FROM
      user_tables
    WHERE
      table_name NOT LIKE 'DR$%' AND
      table_name NOT IN
      ('NOT_USABLE_INDEXES','MY_USER_IND_COLUMNS',
       'MY_USER_INDEXES','MY_USER_CONSTRAINTS')
    ORDER BY table_name;

  -- alter all my_* CHAR, VARCHAR2 columns from BYTE to CHAR length semantics
  PROCEDURE alter_from_byte_to_char
  AS
      stmt VARCHAR2(200);
  BEGIN
      FOR rec IN
      (
          SELECT table_name, column_name, data_type, char_length
              FROM user_tab_columns
              JOIN user_tables USING (table_name)
             WHERE data_type IN ('VARCHAR2','CHAR')
               AND char_used = 'B'
               AND table_name LIKE 'MY\_USER\_%' ESCAPE '\'
          ORDER BY table_name, column_name
      )
      LOOP
          stmt := 'ALTER TABLE '||rec.table_name||' MODIFY "'||rec.column_name||'" '||rec.data_type||'('||rec.char_length||' CHAR)';
          sql_util.execute(stmt);
      END LOOP;
  END;

  -- function to check whether index i2 is part of index i1
  FUNCTION check_indexes(indx1 VARCHAR2, indx2 VARCHAR2, icol NUMBER) RETURN NUMBER IS
    cnt NUMBER;
  BEGIN

    -- skip if is primary key
    execute immediate
      'select count(*)
         from my_user_constraints
        where (index_name = :indx2 or constraint_name = :indx2)
          and constraint_type in (''P'',''U'')'
      into cnt using indx2,indx2;

    IF cnt > 0 THEN
      IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'  ' || indx2 || ' is PRIMARY KEY, skip'); END IF;
      -- skip
      RETURN 0;
    ELSE
      IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'  ' || indx2 || ' is not PRIMARY KEY, do not skip'); END IF;
    END IF;

    -- skip if unique index
    execute immediate
      'select count(*)
         from my_user_indexes
        where index_name = :indx2
          and uniqueness = ''UNIQUE'''
      into cnt using indx2;

    IF cnt > 0 THEN
      IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'  ' || indx2 || ' is UNIQUE, skip'); END IF;
      -- skip
      RETURN 0;
    ELSE
      IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'  ' || indx2 || ' is NON-UNIQUE, do not skip'); END IF;
    END IF;

    -- normal check whether index i2 is part of index i1
    DBMS_SQL.PARSE(cur, 'SELECT    COUNT(i1.column_name) AS cnt ' ||
                        'FROM      my_user_ind_columns i1, my_user_ind_columns i2 ' ||
                        'WHERE     i1.index_name = :index_name1 AND ' ||
                        '          i2.index_name = :index_name2 AND ' ||
                        '          i1.column_position = i2.column_position AND ' ||
                        '          i1.column_name = i2.column_name', DBMS_SQL.NATIVE);
    DBMS_SQL.BIND_VARIABLE(cur, ':index_name1', indx1);
    DBMS_SQL.BIND_VARIABLE(cur, ':index_name2', indx2);
    DBMS_SQL.DEFINE_COLUMN(cur, 1, cnt);
    ret := dbms_sql.execute(cur);
    LOOP
      IF (DBMS_SQL.FETCH_ROWS(cur) > 0) THEN
        DBMS_SQL.COLUMN_VALUE(cur, 1, cnt);
      ELSE
        EXIT;
      END IF;
    END LOOP;

    RETURN cnt;
  END;

BEGIN

  -- suppress oracle streaming
  core.suppress_data_movement;

  -- enables message output, set max. value
  DBMS_OUTPUT.ENABLE(buffer_size => NULL);
 	
  sql_util.set_log_behaviour(sql_util.LOG_ALWAYS);

  -- open helper cursor
  cur   := DBMS_SQL.OPEN_CURSOR;
  cur#1 := DBMS_SQL.OPEN_CURSOR;
  cur#2 := DBMS_SQL.OPEN_CURSOR;

  -- performance issue, create USER_IND_COLUMNS, USER_INDEXES and USER_CONSTRAINTS
  -- as temp local tables called MY_USER_IND_COLUMNS, MY_USER_INDEXES and MY_USER_CONSTRAINTS
  ddl.drop_table('my_user_ind_columns');
  sql_util.execute('CREATE TABLE my_user_ind_columns AS SELECT * FROM user_ind_columns');
  sql_util.execute('CREATE INDEX my_uic_iname ON my_user_ind_columns(index_name)');
  sql_util.execute('CREATE INDEX my_uic_tname ON my_user_ind_columns(table_name)');
  sql_util.execute('COMMENT ON TABLE my_user_ind_columns IS ''core''');

  ddl.drop_table('my_user_indexes');
  sql_util.execute('CREATE TABLE my_user_indexes AS SELECT * FROM user_indexes');
  sql_util.execute('CREATE INDEX my_ui_iname ON my_user_indexes(index_name)');
  sql_util.execute('CREATE INDEX my_ui_tname ON my_user_indexes(table_name)');
  sql_util.execute('COMMENT ON TABLE my_user_indexes IS ''core''');

  ddl.drop_table('my_user_constraints');
  sql_util.execute('CREATE TABLE my_user_constraints AS SELECT constraint_name, index_name, constraint_type FROM user_constraints');
  sql_util.execute('CREATE INDEX my_co_cname ON my_user_constraints(constraint_name)');
  sql_util.execute('CREATE INDEX my_co_iname ON my_user_constraints(index_name)');
  sql_util.execute('CREATE INDEX my_co_ctype ON my_user_constraints(constraint_type)');
  sql_util.execute('COMMENT ON TABLE my_user_constraints IS ''core''');

  -- re-set not_usable_indexes table
  SELECT count(*) INTO tab_exists FROM user_tables WHERE table_name = 'NOT_USABLE_INDEXES';
  IF tab_exists > 0 THEN
    sql_util.execute('DELETE FROM not_usable_indexes');
  ELSE
    ddl.drop_table('not_usable_indexes');
    sql_util.execute('CREATE TABLE not_usable_indexes(table_name VARCHAR2(30 CHAR), ' ||
      'index_name VARCHAR2(30 CHAR), column_names VARCHAR2(1000 CHAR), PRIMARY KEY(table_name, index_name))');
    sql_util.execute('COMMENT ON TABLE not_usable_indexes IS ''core''');
  END IF;

  COMMIT;

  -- alter my_* tabs from byte to char semantics
  alter_from_byte_to_char;

  -- for each tab
  FOR tab_csr_record IN tab_csr LOOP
    IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(10)||'table_name: ' || tab_csr_record.table_name); END IF;

    -- get the max indexed column count
    DBMS_SQL.PARSE(cur, 'SELECT MAX(COUNT(index_name)) AS col_cnt FROM my_user_ind_columns WHERE ' ||
      'table_name = :table_name GROUP BY index_name', DBMS_SQL.NATIVE);
    DBMS_SQL.BIND_VARIABLE(cur, ':table_name', tab_csr_record.table_name);
    DBMS_SQL.DEFINE_COLUMN(cur, 1, col_cnt);
    ret := dbms_sql.execute(cur);
    LOOP
      IF (DBMS_SQL.FETCH_ROWS(cur) > 0) THEN
        DBMS_SQL.COLUMN_VALUE(cur, 1, col_cnt);
      ELSE
        EXIT;
      END IF;
    END LOOP;
    IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'max indexed column_count: ' || col_cnt); END IF;

    -- for each index check all (col_cnt-1..0 reverse loop) indexe
    -- duplicates from col_cnt..2 reverse loop
    IF col_cnt > 1 THEN

      FOR i IN REVERSE 2..col_cnt LOOP

        -- cursor for all col_ind_count #1
        -- #1 loop
        DBMS_SQL.PARSE(cur#1,
          'SELECT   COUNT(uidx.index_name), uidx.index_name index_name ' ||
          'FROM     my_user_ind_columns uic, my_user_indexes uidx ' ||
          'WHERE    uic.index_name = uidx.index_name AND uic.table_name = uidx.table_name AND ' ||
          '         uidx.table_name = :table_name ' ||
          'GROUP BY uidx.index_name ' ||
          'HAVING   COUNT(uidx.index_name) = :index_name', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE(cur#1, ':table_name', tab_csr_record.table_name);
        DBMS_SQL.BIND_VARIABLE(cur#1, ':index_name', TO_CHAR(i));
        DBMS_SQL.DEFINE_COLUMN(cur#1, 2, index#1_name, 30);
        ret := dbms_sql.execute(cur#1);

        LOOP
          IF (DBMS_SQL.FETCH_ROWS(cur#1) > 0) THEN
            DBMS_SQL.COLUMN_VALUE(cur#1, 2, index#1_name);
            IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'#1 index_name: ' || index#1_name); END IF;

            FOR j IN REVERSE 1..i LOOP

              -- cursor for all col_ind_count #2
              -- #2 loop
              DBMS_SQL.PARSE(cur#2,
                'SELECT   COUNT(uidx.index_name), uidx.index_name index_name ' ||
                'FROM     my_user_ind_columns uic, my_user_indexes uidx ' ||
                'WHERE    uic.index_name = uidx.index_name AND uic.table_name = uidx.table_name AND ' ||
                '         uidx.table_name = :table_name ' ||
                'GROUP BY uidx.index_name ' ||
                'HAVING   COUNT(uidx.index_name) = :index_name', DBMS_SQL.NATIVE);
              DBMS_SQL.BIND_VARIABLE(cur#2, ':table_name', tab_csr_record.table_name);
              DBMS_SQL.BIND_VARIABLE(cur#2, ':index_name', TO_CHAR(j-1));
              DBMS_SQL.DEFINE_COLUMN(cur#2, 2, index#2_name, 30);
              ret := dbms_sql.execute(cur#2);

              LOOP
                IF (DBMS_SQL.FETCH_ROWS(cur#2) > 0) THEN
                  DBMS_SQL.COLUMN_VALUE(cur#2, 2, index#2_name);
                  IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'  check with #2 index_name: ' || index#2_name); END IF;

                  ret := check_indexes(index#1_name, index#2_name, j-1);
                  IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||'  ret, j-1: ' || ret || ', ' || TO_CHAR(j-1)); END IF;
                  IF ret = j-1 THEN
                    IF debug THEN DBMS_OUTPUT.PUT_LINE(CHR(09)||
                      '    drop index_name: ' || index#2_name);
                    END IF;

                    -- get all indexed columns for index#2_name
                    column_names := '';
                    column_sep := '';
                    FOR k IN (SELECT column_name FROM user_ind_columns WHERE index_name = index#2_name
                              ORDER BY column_position ASC) LOOP
                      column_names := column_names || column_sep || k.column_name;
                      column_sep := ',';
                    END LOOP;

                    BEGIN
                      DBMS_SQL.PARSE(cur, 'INSERT INTO NOT_USABLE_INDEXES VALUES
                        (:tab, :ind, :cols)', DBMS_SQL.NATIVE);
                      DBMS_SQL.BIND_VARIABLE(cur, ':tab',  tab_csr_record.table_name);
                      DBMS_SQL.BIND_VARIABLE(cur, ':ind',  index#2_name);
                      DBMS_SQL.BIND_VARIABLE(cur, ':cols', column_names);
                      ret := DBMS_SQL.EXECUTE(cur);
                    -- skip all duplicate index values
                    EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL;
                    END;
                  END IF;

                ELSE
                  EXIT;
                END IF; -- FETCH_ROWS(cur#2) > 0
              END LOOP; -- #2 loop

            END LOOP;   -- j in REVERSE 1..i

          ELSE
            EXIT;
          END IF;       -- FETCH_ROWS(cur#1) > 0
        END LOOP;       -- #1 loop

      END LOOP;         -- i in REVERSE 2..col_cnt

    END IF;             -- col_cnt > 1
  END LOOP;             -- for each tab

  COMMIT;

  -- get all not-usable indexes
  DBMS_SQL.PARSE(cur, 'SELECT RPAD(table_name,30, '' ''), RPAD(index_name, 30, '' ''), column_names
    FROM not_usable_indexes ORDER BY table_name', DBMS_SQL.NATIVE);
  DBMS_SQL.DEFINE_COLUMN(cur, 1, table_name, 30);
  DBMS_SQL.DEFINE_COLUMN(cur, 2, index_name, 30);
  DBMS_SQL.DEFINE_COLUMN(cur, 3, column_names, 1000);
  ret := dbms_sql.execute(cur);

  DBMS_OUTPUT.PUT_LINE(CHR(10)||'Drop index list of all non-usable indexes:');
  DBMS_OUTPUT.PUT_LINE(         '------------------------------------------');
  LOOP
    IF (DBMS_SQL.FETCH_ROWS(cur) > 0) THEN
      DBMS_SQL.COLUMN_VALUE(cur, 1, table_name);
      DBMS_SQL.COLUMN_VALUE(cur, 2, index_name);
      DBMS_SQL.COLUMN_VALUE(cur, 3, column_names);
      str := 'DROP INDEX ' || index_name || ' /* on table: ' || table_name || ' (' || column_names || ') */';
      DBMS_OUTPUT.PUT_LINE(str || ';');

      -- drop index if idrop flag TRUE
      IF idrop THEN
        EXECUTE IMMEDIATE str;
      END IF;

    ELSE
      EXIT;
    END IF;
  END LOOP;

  DBMS_SQL.CLOSE_CURSOR(cur);
  DBMS_SQL.CLOSE_CURSOR(cur#1);
  DBMS_SQL.CLOSE_CURSOR(cur#2);

  -- re-enable oracle streaming
  core.enable_data_movement;

EXCEPTION WHEN OTHERS THEN
    BEGIN
      ROLLBACK;
      DBMS_SQL.CLOSE_CURSOR(cur);
      DBMS_SQL.CLOSE_CURSOR(cur#1);
      DBMS_SQL.CLOSE_CURSOR(cur#2);

      -- re-enable oracle streaming
      core.enable_data_movement;

      RAISE;
    END;

END sp_check4NotUsableIndexes;
/

show error

/*

exec sp_check4NotUsableIndexes(TRUE, TRUE)

--*/

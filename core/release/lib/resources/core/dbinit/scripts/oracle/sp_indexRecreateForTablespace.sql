CREATE OR REPLACE PROCEDURE sp_indexRecreateForTablespace
------------------------------------------------------------------------------------------
-- Name        : sp_indexRecreateForTablespace
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 03/22/2007 - TKober       - dbms_sql.native and more EXCEPTION debug infos
--             : 03/06/2006 - JGrabs       - bug #8602 include function-based normal indexes
--             : 08/01/2003 - TKober       - bug #2765 idx already built on given ts?
--             : 07/17/2003 - TKober       - bug #2717 exclude temporary tables
--             : 02/18/2002 - TKober       - exclude 'DR$%$X'
--             : 04/04/2000 - TKober       - Created
--
-- Description : This procedure recreates all normal indexes for in a given tablespace.
-- Owner       : The special MultiSite user.
-- Input       : ts_name - The tablespace name the default value is IS_INDX.
-- Output      : none
-- Example     : exec sp_indexRecreateForTablespace();
--               select index_name, index_type, tablespace_name from user_indexes;
------------------------------------------------------------------------------------------
(
  ts_name IN VARCHAR2 DEFAULT 'IS_INDX'
)
AS
  cur       INTEGER;
  ret       INTEGER;
  sql_str   VARCHAR2(100);
  tab       user_indexes.table_name%TYPE;
  CURSOR csr IS
    SELECT table_name,
           'ALTER INDEX ' || index_name || ' REBUILD TABLESPACE ' || ts_name AS sql_str
      FROM user_indexes
     WHERE (index_type = 'NORMAL' OR index_type = 'FUNCTION-BASED NORMAL')
           AND NOT index_name LIKE 'DR$%$X'
           AND table_name IN (SELECT table_name FROM user_tables WHERE temporary <> 'Y')
           AND tablespace_name != ts_name
     ORDER BY table_name;
BEGIN
  -- open a helper cursor for all dynamic sql
  cur := DBMS_SQL.OPEN_CURSOR;
  -- cursor loop to execute the alter index ... commands
  FOR csr_rec IN csr LOOP
    tab := csr_rec.table_name;
    sql_str := csr_rec.sql_str;
    DBMS_SQL.PARSE(cur, sql_str, dbms_sql.native);
    ret := DBMS_SQL.EXECUTE(cur);
  END LOOP;
  -- close cursor
  DBMS_SQL.CLOSE_CURSOR(cur);
EXCEPTION WHEN OTHERS THEN
  BEGIN
    DBMS_SQL.CLOSE_CURSOR(cur);
    RAISE_APPLICATION_ERROR(-20101,
        'Error in sp_indexRecreateForTablespace. '  || chr(10) ||
        'Current table is: '             || tab     || chr(10) ||
        'Current index rebuild SQL is: ' || sql_str || chr(10) ||
         SQLERRM);
  END;
END sp_indexRecreateForTablespace;
/

show error

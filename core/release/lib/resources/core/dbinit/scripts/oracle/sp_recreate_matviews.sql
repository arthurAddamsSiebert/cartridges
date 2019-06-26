CREATE OR REPLACE PROCEDURE sp_recreate_matviews AS
------------------------------------------------------------------------------------------
-- Name        : sp_recreate_matviews
-- History     : user             date       - desc
--             : ...
--             : Thomas Budich    03/28/2008 - remove IE_PCA_OLDSTATE
--             : Thomas Kober     07/14/2006 - extra recreation handling for IEPCA_OLDSTATE
--                                             * with rowid not with primary key
--                                             * after IEPCA_NEWSTATE via ORDER BY (get mviews)
-- Created     : Thomas Kober     04/02/2004 - added while EMS #3085 and MCS #2080.
--                                             Matview refresh does not work in 9i after
--                                             exp/imp (fromuser not equal touser), if
--                                             original master user.table[s] does not exists.
-- Description : This procedure recreates all materialized views and assigned indexes found
--               in the user schema.
-- Owner       : The special enfinity (eCS/eTS) or MultiSite user. This user
--               needs the table, materialized view and index creation privilege directly
--               not granted by a role.
-- Input       : none
-- Output      : none
-- Example     : exec sp_recreate_matviews
------------------------------------------------------------------------------------------
   TYPE rec_type IS RECORD (
      mview_name     user_mviews.mview_name%TYPE,
      refresh_mode   user_mviews.refresh_mode%TYPE,
      refresh_method user_mviews.refresh_method%TYPE,
      query          user_mviews.query%TYPE);

   TYPE rec_table_type IS TABLE OF rec_type;
   TYPE table_type IS TABLE OF VARCHAR2(32767);

   v_mview      rec_table_type := rec_table_type ();
   v_index      table_type     := table_type ();

BEGIN

   -- read all mviews
   SELECT mview_name, refresh_mode, refresh_method, query
     BULK COLLECT INTO v_mview
     FROM user_mviews
     ORDER BY mview_name ASC;

   -- if mviews exists
   IF v_mview.COUNT > 0
   THEN
      FOR i IN v_mview.FIRST .. v_mview.LAST
      LOOP
         -- detect all none primary key and
         -- NORMAL (not Text indexes) indexes DDL for given mview
         v_index.DELETE;
         SELECT DBMS_METADATA.get_ddl ('INDEX', ui.index_name)
           BULK COLLECT INTO v_index
           FROM user_indexes ui, user_constraints uc
          WHERE ui.index_name = uc.constraint_name(+)
            AND uc.constraint_name IS NULL
            AND ui.table_name = v_mview(i).mview_name
            AND ui.index_type = 'NORMAL';

         EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW ' || v_mview(i).mview_name;
         EXECUTE IMMEDIATE 'CREATE MATERIALIZED VIEW '
                            || v_mview(i).mview_name
                            || ' REFRESH ' || v_mview(i).refresh_method
                            || ' ON '      || v_mview(i).refresh_mode
                            || ' WITH PRIMARY KEY AS ' || v_mview(i).QUERY;

         -- if indexes exists
         IF v_index.COUNT > 0
         THEN
            FOR j IN v_index.FIRST .. v_index.LAST
            -- recreate mview indexes
            LOOP
               EXECUTE IMMEDIATE v_index(j);
            END LOOP;
         END IF;
      logger.log('mview: '||v_mview(i).mview_name||' recreated.');
      END LOOP;
   END IF;

END sp_recreate_matviews;
/

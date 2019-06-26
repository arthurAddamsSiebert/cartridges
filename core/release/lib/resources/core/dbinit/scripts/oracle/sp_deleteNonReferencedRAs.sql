CREATE OR REPLACE PROCEDURE sp_deleteNonReferencedRAs AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteNonReferencedRAs
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/13/2006 - #8451 inefficient SQL-delete slows down jobs
-- Created     : Trev Pocock      06/22/2004 - added to remove hanging RAs see #1619
-- Description : This procedure iterates through all _ra tables removing rows which
--               reference a non-existing usergroup.
-- Owner       : The special enfinity (eCS/eTS) or MultiSite user.
-- Input       : none
-- Output      : none
-- Example     : exec sp_deleteNonReferencedRAs
------------------------------------------------------------------------------------------
   TYPE rec_type IS RECORD (table_name   cat.table_name%TYPE);
   TYPE rec_table_type IS TABLE OF rec_type;

   v_table rec_table_type := rec_table_type ();

BEGIN

   -- get all _ra tables
   SELECT table_name
     BULK COLLECT INTO v_table
     FROM cat WHERE (   table_name LIKE '%\_RA'   ESCAPE '\'
                     OR table_name LIKE '%\_RA$_' ESCAPE '\')
                    AND table_type='TABLE';

   -- if _ra tables exists
   IF v_table.COUNT > 0
   THEN
      FOR i IN v_table.FIRST .. v_table.LAST
      LOOP
         -- delete RAs without usergroup reference
         EXECUTE IMMEDIATE 'DELETE FROM ' || v_table (i).table_name || ' ra WHERE NOT EXISTS '
                        || '  (SELECT 1 '
                        || '   FROM usergroup ug '
                        || '  WHERE ra.usergroupid       = ug.id '
                        || '    AND ra.usergroupdomainid = ug.domainid)';
         COMMIT;
      END LOOP;
   END IF;

END sp_deleteNonReferencedRAs;
/

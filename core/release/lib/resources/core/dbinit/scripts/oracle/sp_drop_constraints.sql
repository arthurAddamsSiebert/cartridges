CREATE OR REPLACE PROCEDURE sp_drop_constraints (tableName IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_drop_constraints
-- Created     : Peter Haensgen
-- Description : This procedure is used to drop all constraints for a given table.
-- Input       : tableName		The table name
-- Output      : none
-- Example     : exec sp_drop_constraints('DOMAIN')
------------------------------------------------------------------------------------------

	TYPE table_type IS TABLE OF VARCHAR2(255);
	table_var table_type := table_type();
    constraint_name VARCHAR2(30);
	CURSOR csr_drop_own_constraints IS
		SELECT 'ALTER TABLE ' || table_name || ' DROP CONSTRAINT ' || constraint_name
        FROM USER_CONSTRAINTS
       	WHERE CONSTRAINT_TYPE = 'R' AND TABLE_NAME = tableName;
	CURSOR csr_drop_other_constraints IS
		SELECT 'ALTER TABLE ' || child.table_name || ' DROP CONSTRAINT ' || child.constraint_name
        FROM USER_CONSTRAINTS parent, USER_CONSTRAINTS child
       	WHERE parent.CONSTRAINT_TYPE = 'P' AND parent.TABLE_NAME = tableName 
	       	AND parent.CONSTRAINT_NAME = child.R_CONSTRAINT_NAME;

BEGIN

   -- own constraints
   table_var.DELETE;
   OPEN csr_drop_own_constraints;
   FETCH csr_drop_own_constraints BULK COLLECT INTO table_var;
   IF table_var.COUNT > 0 THEN
       FOR i IN table_var.FIRST .. table_var.LAST
       LOOP
          EXECUTE IMMEDIATE table_var(i);
          --DBMS_OUTPUT.put_line (table_var(i));
       END LOOP;
   END IF;
   CLOSE csr_drop_own_constraints;

   -- other constraints referencing the table
   table_var.DELETE;
   OPEN csr_drop_other_constraints;
   FETCH csr_drop_other_constraints BULK COLLECT INTO table_var;
   IF table_var.COUNT > 0 THEN
       FOR i IN table_var.FIRST .. table_var.LAST
       LOOP
          EXECUTE IMMEDIATE table_var(i);
          --DBMS_OUTPUT.put_line (table_var(i));
       END LOOP;
   END IF;
   CLOSE csr_drop_other_constraints;

END sp_drop_constraints;
/
SHOW errors;

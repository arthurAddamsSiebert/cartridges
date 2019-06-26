CREATE OR REPLACE FUNCTION sf_execute_sql_using_rbs (sql_stmt IN VARCHAR2,
                                                     domainid IN VARCHAR2,
                                                     lastmodified IN DATE,
                                                     rbs_name IN VARCHAR2)
RETURN NUMBER

------------------------------------------------------------------------------------------
-- Name        : sf_execute_sql_using_rbs
-- Created     : Thomas Budich
-- Description : This function is used to execute given SQL statement using the rollback
--               segment with given name. It returns the affected rows. The second and
--               third parameter define the bind variables ':domainid' and ':lastmodified'.
--               If both parameter are NULL, the will be ignored.
-- Input       : sql_stmt the SQL statement to be executed
--               domainid the domainid
--               lastmodified a lastmodified date
--               rbs_name the rollback segment to be used
-- Output      : affected rows
-- Example     : exec sf_execute_sql_using_rbs ('DELETE FROM product WHERE domainid=:domainid AND lastmodified<:lastmodified', 'oQYKAB02bxwAAAD0_aE.Wh.s', UTCTIMESTAMP(), 'RBS1')
------------------------------------------------------------------------------------------

IS
        cur             INTEGER;
        affected_rows	NUMBER;
BEGIN
	IF rbs_name IS NOT NULL THEN
		COMMIT;
		dbms_transaction.use_rollback_segment(rbs_name);
	END IF;

	cur := dbms_sql.open_cursor;
	dbms_sql.parse(cur, sql_stmt, dbms_sql.v7);

	IF domainid IS NOT NULL THEN
		dbms_sql.bind_variable(cur, ':domainid', domainid);
	END IF;

	IF lastmodified IS NOT NULL THEN
		dbms_sql.bind_variable(cur, ':lastmodified', lastmodified);
	END IF;

	affected_rows := dbms_sql.execute(cur);
	dbms_sql.close_cursor(cur);

	RETURN affected_rows;
END;
/

show errors;

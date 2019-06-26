WHENEVER SQLERROR EXIT SQL.SQLCODE

SET SERVEROUTPUT ON SIZE 1000000
SET ECHO ON
EXEC sql_util.set_log_behaviour(sql_util.LOG_ALWAYS);

--
-- Creates sequences
--

-- sequence used for ABTestEvents
-- ignore ORA-00955: name is already used by an existing object
EXEC sql_util.execute('CREATE SEQUENCE createABTestEventID INCREMENT BY 1 START WITH 1 CACHE 1000 NOORDER NOCYCLE', -955);

-- ...

exit
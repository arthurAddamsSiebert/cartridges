SET ECHO ON

SET SERVEROUTPUT ON SIZE 1000000

PROMPT -- Remove outdated database indexes
EXEC staging_ddl.drop_index('CUSTOMER_IE001', 'CUSTOMER');
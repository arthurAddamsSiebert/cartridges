CREATE OR REPLACE PROCEDURE sp_table_monitoring
------------------------------------------------------------------------------------------
-- Name        : sp_table_monitoring
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 08/22/2006 - TKober       - if 10g do not alter table NO|MONITORING
--             : 08/22/2006 - TKober       - bug #8473 SP can fail with ORA-00054: resource
--                                                     busy and acquire with NOWAIT specified
--             : 07/17/2003 - TKober       - bug #2526 exclude temporary tables
--             : 01/24/2002 - TKober       - Created
--
-- Description : enable MONITORING/NOMONITORING for all user tables
-- Owner       : The special multisite user.
-- Input       : monitor - MONITORING or NOMONITORING
-- Output      : none
-- Example     : exec sp_table_monitoring('MONITORING');
--               SELECT monitoring, table_name FROM user_tables;
------------------------------------------------------------------------------------------
(
  monitor IN VARCHAR2 DEFAULT 'MONITORING'
)
AS
  parameter_wrong EXCEPTION;
  b_executed      BOOLEAN;
BEGIN

  -- If Input not MONITORING or NOMONITORING
  IF UPPER(monitor) NOT IN ('MONITORING', 'NOMONITORING') THEN
    RAISE parameter_wrong;
  END IF;

  -- In 10g, the ALTER table MONITORING statement is gone.
  -- Instead, statistics are collected automatically if the
  -- initialization parameter STATISTIC_LEVEL is set to TYPICAL or ALL.
  -- (The default value is TYPICAL, so automatic statistics gathering is enabled out of the box.)
  IF sql_util.get_instance_version().major < 10 THEN

      FOR i IN (SELECT table_name
                FROM   user_tables
                WHERE  temporary <> 'Y'
                   AND table_name NOT LIKE 'DR$%'
                   AND UPPER(monitoring) != DECODE(monitor, 'MONITORING',   'YES',
                                                            'NOMONITORING', 'NO'))
      LOOP
        b_executed := FALSE;
        LOOP
         BEGIN
            EXECUTE IMMEDIATE 'ALTER TABLE ' || i.table_name || ' ' || monitor;
            b_executed := TRUE;
         EXCEPTION
           WHEN OTHERS THEN
              IF SQLCODE <> -54 THEN
                 b_executed := TRUE;
                 raise_application_error(-20502, SQLERRM);
              END IF;
         END;
         EXIT WHEN b_executed;
        END LOOP;
      END LOOP;

  END IF;

  EXCEPTION
    WHEN parameter_wrong THEN
      RAISE_APPLICATION_ERROR(-20101, 'input value is not MONITORING or NOMONITORING');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20101, 'Error in sp_table_monitoring. ' || SQLERRM);

END sp_table_monitoring;
/

show errors

CREATE OR ALTER PROCEDURE sp_table_monitoring
------------------------------------------------------------------------------------------
-- Name        : sp_table_monitoring
--
-- Modified    : MM/DD/YYYY - Name             - Description
--                ...       - ...              - ...
--             : 12/12/2017 - Surender Singh   - Created
--
-- Description : enable MONITORING/NOMONITORING for all tables
-- Owner       : The special multisite user.
-- Input       : monitor - MONITORING or NOMONITORING
-- Output      : none
-- Example     : exec sp_table_monitoring 'MONITORING';
--
------------------------------------------------------------------------------------------
(
  @monitor VARCHAR(30) = 'MONITORING'
)
AS
  --parameter_wrong EXCEPTION;
  --b_executed      BOOLEAN;
BEGIN
	DECLARE @inputValue VARCHAR(1)--No implementation is required as SQL Server collects statistics automatically.
END
GO
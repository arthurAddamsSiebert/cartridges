CREATE OR ALTER PROCEDURE sp_indexRecreateForTablespace
------------------------------------------------------------------------------------------
-- Name        : sp_indexRecreateForTablespace
--
-- Modified    : MM/DD/YYYY - Name				- Description
--                ...       - ...				- ...
--             : 12/14/2017 - Surender Singh    - Created
--
-- Description : This procedure recreates all normal indexes for in a given tables.
-- Owner       : The special MultiSite user.
-- Input       : ts_name - The table name the default value is IS_INDX.
-- Output      : none
-- Example     : exec sp_indexRecreateForTablespace '';
------------------------------------------------------------------------------------------
(
  @ts_name VARCHAR(256) = ''
)
AS
BEGIN
	DECLARE @flag BIT = 0;--Tablespace does not exist in SQL Server and hence do not require any implementation and SQL automatically collects the statistics.
END
GO
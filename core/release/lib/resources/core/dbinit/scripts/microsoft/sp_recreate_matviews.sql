CREATE OR ALTER PROCEDURE sp_recreate_matviews AS
------------------------------------------------------------------------------------------
-- Name        : sp_recreate_matviews
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh   13/12/2017
--
-- Description : This procedure recreates all materialized views and assigned indexes found
--               in the user schema.
-- Owner       : The special enfinity (eCS/eTS) or MultiSite user. This user
--               needs the table, materialized view and index creation privilege directly
--               not granted by a role.
-- Input       : none
-- Output      : none
-- Example     : exec sp_recreate_matviews
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @flag BIT = 0;
	-- The materialized view implementation is not required in SQL Server and if needed, will be implemented.
END
GO
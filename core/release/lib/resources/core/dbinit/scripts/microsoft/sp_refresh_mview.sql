CREATE OR ALTER PROCEDURE sp_refresh_mview
(
	@mview VARCHAR(256)
)
AS
	----------------------------------------------------------------------------------
	-- This stored procedure is used to update the materialized view with given name.
	-- There are two views, one live and one shadow. First, it updates the shadow view
	-- and second, it switches the synonym to the shadow view.
	-- In case of shadow views and synonym do not exist, they will be automatically
	-- created.
	--
	-- example: exec sp_refresh_mview 'IEPRODUCTCATEGORYASSIGNMENT'
	----------------------------------------------------------------------------------
BEGIN
	DECLARE @flag BIT = 0;
	-- The materialized view implementation is not required in SQL Server and if needed, will be implemented.
END
GO
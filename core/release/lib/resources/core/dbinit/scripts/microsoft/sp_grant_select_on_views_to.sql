CREATE OR ALTER PROCEDURE sp_grant_select_on_views_to
(
	@schema_name VARCHAR(256)
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_grant_select_on_views_to
-- Created     : Surender Singh
-- Description : This procedure is used in staging framework.
--       Itgrants the select on all source views of editing system to user of
--       live system.
-- Input       : the schema name of live system.
-- Output      : none
-- Example     : exec sp_grant_select_on_views_to 'TBUDICH_LIVE'
------------------------------------------------------------------------------------------

BEGIN
	SET @schema_name = UPPER(@schema_name);
    EXEC STAGING$grant_live_user_privs @schema_name;
END
GO
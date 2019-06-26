CREATE OR REPLACE PROCEDURE sp_grant_select_on_views_to ( schema_name IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_grant_select_on_views_to
-- Created     : Thomas Budich
-- Description : This procedure is used in staging framework.
--       Itgrants the select on all source views of editing system to user of
--       live system.
-- Input       : the schema name of live system.
-- Output      : none
-- Example     : exec sp_grant_select_on_views_to ('TBUDICH_LIVE')
------------------------------------------------------------------------------------------

BEGIN
    staging.grant_live_user_privs(upper(schema_name));
END sp_grant_select_on_views_to;
/

show errors;

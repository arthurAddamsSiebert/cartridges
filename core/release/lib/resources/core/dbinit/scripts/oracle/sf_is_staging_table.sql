CREATE OR REPLACE FUNCTION sf_is_staging_table (t IN VARCHAR2) RETURN BOOLEAN IS

------------------------------------------------------------------------------------------
-- Name        : sf_is_staging_table
-- Created     : Thomas Budich
-- Description : This function returns TRUE if table with given name is a staging table,
--               else FALSE.
-- Input       : t the name of table
-- Output      : TRUE if given table is a staging table
-- Example     : exec sf_is_staging_table ('DOMAIN')
--
-- @deprecated use staging.is_staging_table(table_name)
------------------------------------------------------------------------------------------

BEGIN
    RETURN staging.is_prepared(t);
END;
/

show errors;

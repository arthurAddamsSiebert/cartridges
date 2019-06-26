CREATE OR ALTER FUNCTION sf_is_staging_table
(
	@t VARCHAR(256)
) RETURNS BIT
------------------------------------------------------------------------------------------
-- Name        : sf_is_staging_table
-- Created     : Surender Singh
-- Description : This function returns TRUE if table with given name is a staging table,
--               else FALSE.
-- Input       : t the name of table
-- Output      : TRUE if given table is a staging table
-- Example     : SELECT dbo.sf_is_staging_table ('DOMAIN')
--
------------------------------------------------------------------------------------------
AS
BEGIN
     RETURN dbo.STAGING$is_prepared(@t);
END;
GO
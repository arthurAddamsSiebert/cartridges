CREATE OR REPLACE PROCEDURE sp_updateLocaleID

------------------------------------------------------------------------------------------
-- Name        : sp_updateLocaleID
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Henning
-- Description : This procedure updates column localeID of a specified AttributeValue table
--               for all non-localized entities.
-- Input       : locale     The locale id.
--               tableName  The AttributeValue table.
-- Output      : none
-- Example     : exec sp_updateLocaleID('en_US','domain_av')
------------------------------------------------------------------------------------------

(
  locale IN VARCHAR2,
  tableName IN VARCHAR2
)
AS
  locale_null EXCEPTION;
  table_null EXCEPTION;
  sql_stmt VARCHAR2(100);
BEGIN

  --
  -- If Input NULL raise an EXCEPTION
  --
  IF (locale IS NULL) THEN
    RAISE locale_null;
  END IF;

  IF (tableName IS NULL) THEN
    RAISE table_null;
  END IF;

  --
  -- Update localeID of non-localized attributes
  --
  staging.update_table(tableName, 'SET localeID = '''|| locale ||''', oca = oca + 1 WHERE localizedflag = 0', -942);

  COMMIT;

EXCEPTION
  WHEN locale_null THEN
    BEGIN
      RAISE_APPLICATION_ERROR(-20101, 'locale id is NULL.');
    END;
  WHEN table_null THEN
    BEGIN
      RAISE_APPLICATION_ERROR(-20101, 'table name is NULL.');
    END;

END sp_updateLocaleID;
/

show errors


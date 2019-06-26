SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
GO
------------------------------------------------------------------------------------------
-- Name        : sp_genericPoAvDeleteByDomain
-- History     : user             date(MM/DD/YYYY) - desc
--             : ...
-- Created     : Anand Singh           08/29/2011         initial created
--
-- Description : This procedure deletes all rows for given domainid for both
--               the PO base table and the related AV table.
--               If avTable is 'null' it will only delete PO base table rows based on given domainid

-- Input       : baseTable          the base PO table
--               avTable            the extensible object AV table related to base PO table, or 'null'
--               suffix             the $1/$2 if staging or null suffix
--               domainID           the domainID value
--               domainColumnName   the base PO table domainid column name
--
-- Output      : none
-- Example     : EXEC sp_genericPoAvDeleteByDomain  'simplefoo','Foo_AV', null, '00033', 'uuid';
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_genericPoAvDeleteByDomain
(
    @baseTable            VARCHAR(256),
    @avTable              VARCHAR(256),
    @suffix               VARCHAR(256),
    @domainID             NVARCHAR(30),
    @domainColumnName     VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000); 
	-- for some reason 'IS NOT NULL' causes errors
    IF @avTable IS NULL 
	BEGIN
      -- avTable is not defined - do only base table
         SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name(@baseTable, @suffix),
              ' WHERE ', @domainColumnName, '=''', @domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	END
    ELSE
	BEGIN
      -- avTable is also defined - do base table and av table
		 SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name(@avTable, @suffix),
              ' WHERE ownerid IN (SELECT uuid FROM '+ dbo.STAGING$get_table_name(@baseTable, @suffix), 
	            ' WHERE ', @domainColumnName, '=''', @domainid, ''')');
		 EXEC SQL_UTIL$execute @sqlQuery, 0;
      -- do base table
        SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name(@baseTable, @suffix),
              ' WHERE ', @domainColumnName, '=''', @domainid, '''');
		 EXEC SQL_UTIL$execute @sqlQuery, 0;
    END
END 
GO
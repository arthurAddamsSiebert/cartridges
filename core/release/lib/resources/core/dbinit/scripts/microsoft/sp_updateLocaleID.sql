CREATE OR ALTER PROCEDURE sp_updateLocaleID
------------------------------------------------------------------------------------------
-- Name        : sp_updateLocaleID
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure updates column localeID of a specified AttributeValue table
--               for all non-localized entities.
-- Input       : locale     The locale id.
--               tableName  The AttributeValue table.
-- Output      : none
-- Example     : exec sp_updateLocaleID 'en_US','domain_av'
------------------------------------------------------------------------------------------
(
	@locale VARCHAR(2000),
	@tableName VARCHAR(256)
)
AS
BEGIN
	DECLARE @sql_stmt NVARCHAR(100);
	--
	-- If Input NULL raise an EXCEPTION
	--
	IF (@locale IS NULL)
		THROW -20101, 'locale id is NULL', 1

	IF (@tableName IS NULL)
		THROW -20101, 'locale id is NULL', 1
	SET @sql_stmt = CONCAT('SET localeID = ''', @locale, ''', oca = oca + 1 WHERE localizedflag = 0');
	BEGIN TRAN
		--
		-- Update localeID of non-localized attributes
		--
		EXEC STAGING$update_table @tableName, @sql_stmt, -942;

	COMMIT;
END
GO
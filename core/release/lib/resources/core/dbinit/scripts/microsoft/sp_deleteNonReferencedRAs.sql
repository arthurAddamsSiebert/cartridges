CREATE OR ALTER PROCEDURE sp_deleteNonReferencedRAs
AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteNonReferencedRAs
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure iterates through all _ra tables removing rows which
--               reference a non-existing usergroup.
-- Owner       : The special enfinity (eCS/eTS) or MultiSite user.
-- Input       : none
-- Output      : none
-- Example     : exec sp_deleteNonReferencedRAs
------------------------------------------------------------------------------------------
BEGIN
	SET NOCOUNT ON;
	DECLARE @count INT,
			@counter INT = 1,
			@table_name	VARCHAR(256);
	DECLARE @rec_type TABLE
	(
		ID INT IDENTITY,
		table_name VARCHAR(256)
	);
	-- get all _ra tables
	INSERT INTO @rec_type
	SELECT name
	FROM sys.tables WHERE (name LIKE '%\_RA'   ESCAPE '\'
						OR name LIKE '%\_RA$_' ESCAPE '\')
					AND type = 'U'; -- ONLY User tables
	SELECT @count = COUNT(1) FROM @rec_type
	-- if _ra tables exists
	WHILE @counter <= @count
	BEGIN
		DECLARE @sqlQuery NVARCHAR(3000);
		SELECT @table_name = table_name FROM @rec_type WHERE ID = @counter
		BEGIN TRAN
			-- delete RAs without usergroup reference
			SET @sqlQuery = CONCAT('DELETE ra FROM ', @table_name, ' ra WHERE NOT EXISTS '
								, '  (SELECT 1 '
								, '   FROM usergroup ug '
								, '  WHERE ra.usergroupid       = ug.id '
								, '    AND ra.usergroupdomainid = ug.domainid)');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		COMMIT;
	END
END
GO
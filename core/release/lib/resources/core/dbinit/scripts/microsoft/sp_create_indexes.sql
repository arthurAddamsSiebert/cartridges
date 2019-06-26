------------------------------------------------------------------------------------------
-- Name        : sp_create_indexes
-- Created     : Anand Singh
-- Description : This procedure is used to create an index with given suffix on given column on all
--               staging tables.
-- Input       : column_name The column name, on which one a index should be created.
--               suffix      The suffix of index name
--               tablespace  The table space in which one the indexes should be created.
-- Output      : none
-- Example     : exec sp_create_indexes 'POSITION', '_IE500', 'IS_INDX'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_create_indexes(@column  VARCHAR(256), @suffix  VARCHAR(256), @tablespace  VARCHAR(256)) AS
BEGIN
	DECLARE	@sqlQuery		NVARCHAR(MAX),
			@i				INT=1,
			@count			INT,
			@uniqueness		VARCHAR(100)='UNIQUE';

	DECLARE @table table(row int identity(1,1),objectName VARCHAR(100))
	INSERT INTO @table
		SELECT ST.NAME AS TABLENAME FROM SYS.TABLES (NOLOCK) ST INNER  JOIN SYS.SYSCOLUMNS (NOLOCK)  SS ON ST.OBJECT_ID=SS.ID 
				WHERE (ST.NAME LIKE '%$1%' OR ST.NAME LIKE '%$2%') AND SS.NAME = @COLUMN
		EXCEPT
		SELECT M.TABLENAME FROM SYS.INDEX_COLUMNS  IC INNER JOIN 
		(
			SELECT ST.NAME AS TABLENAME,SS.NAME AS COLUMNNAME,SS.COLORDER,SS.COLID,ST.OBJECT_ID 
			FROM SYS.TABLES (NOLOCK) ST 
			INNER  JOIN SYS.SYSCOLUMNS (NOLOCK)  SS ON ST.OBJECT_ID=SS.ID  WHERE SS.NAME = @COLUMN
		)M ON IC.COLUMN_ID=M.COLID  AND M.OBJECT_ID=IC.OBJECT_ID WHERE M.COLORDER=1

	SELECT @count=COUNT(1) FROM  @table
	WHILE(@i<=@count)
	BEGIN
		DECLARE @table_name varchar(256)
		SELECT @table_name=objectName FROM @table WHERE row = @i
		SET @sqlQuery= CONCAT('CREATE ', @uniqueness, ' INDEX ', @table_name,@suffix, ' ON ', @table_name,'(',@column,')')
		EXEC SQL_UTIL$executeDDL @sqlQuery, 0
		SET @i=@i+1
	END
END
GO
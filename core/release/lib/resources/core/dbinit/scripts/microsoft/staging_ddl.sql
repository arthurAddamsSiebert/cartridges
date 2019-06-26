------------------------------------------------------------------------------------------
-- Name        : GetIndexCreationScript
-- Description :to get the description of index 
-- Input       : table_name      - the name of table
--               constraint_name - the name of constraint
--               clause          - the constraint clause
-- Example     : SELECT dbo.GetIndexCreationScript('IX_USER_SYNONYMS')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION GetIndexCreationScript
(
	@index_name VARCHAR(200)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @SchemaName VARCHAR(100)
	DECLARE @TableName VARCHAR(256)
	DECLARE @IndexName VARCHAR(256)
	DECLARE @ColumnName VARCHAR(100)
	DECLARE @is_unique VARCHAR(100)
	DECLARE @IndexTypeDesc VARCHAR(100)
	DECLARE @FileGroupName VARCHAR(100)
	DECLARE @is_disabled VARCHAR(100)
	DECLARE @IndexOptions VARCHAR(max)
	DECLARE @IndexColumnId INT
	DECLARE @IsDescendingKey INT
	DECLARE @IsIncludedColumn INT
	DECLARE @TSQLScripCreationIndex VARCHAR(max)

	DECLARE CursorIndex CURSOR
	FOR
	SELECT schema_name(t.schema_id) [schema_name]
		,t.NAME
		,ix.NAME
		,CASE 
			WHEN ix.is_unique = 1
				THEN 'UNIQUE '
			ELSE ''
			END
		,ix.type_desc
		,CASE 
			WHEN ix.is_padded = 1
				THEN 'PAD_INDEX = ON, '
			ELSE 'PAD_INDEX = OFF, '
			END + CASE 
			WHEN ix.allow_page_locks = 1
				THEN 'ALLOW_PAGE_LOCKS = ON, '
			ELSE 'ALLOW_PAGE_LOCKS = OFF, '
			END + CASE 
			WHEN ix.allow_row_locks = 1
				THEN 'ALLOW_ROW_LOCKS = ON, '
			ELSE 'ALLOW_ROW_LOCKS = OFF, '
			END + CASE 
			WHEN INDEXPROPERTY(t.object_id, ix.NAME, 'IsStatistics') = 1
				THEN 'STATISTICS_NORECOMPUTE = ON, '
			ELSE 'STATISTICS_NORECOMPUTE = OFF, '
			END + CASE 
			WHEN ix.ignore_dup_key = 1
				THEN 'IGNORE_DUP_KEY = ON, '
			ELSE 'IGNORE_DUP_KEY = OFF, '
			END + 'SORT_IN_TEMPDB = OFF, FILLFACTOR =50'
		,ix.is_disabled
		,FILEGROUP_NAME(ix.data_space_id) FileGroupName
	FROM sys.tables t
	INNER JOIN sys.indexes ix ON t.object_id = ix.object_id
	WHERE ix.type > 0
		AND ix.is_primary_key = 0
		AND ix.is_unique_constraint = 0
		AND ix.NAME = @index_name --and schema_name(tb.schema_id)= @SchemaName and tb.name=@TableName
		AND t.is_ms_shipped = 0
		AND t.NAME <> 'sysdiagrams'
	ORDER BY schema_name(t.schema_id)
		,t.NAME
		,ix.NAME

	OPEN CursorIndex

	FETCH NEXT
	FROM CursorIndex
	INTO @SchemaName
		,@TableName
		,@IndexName
		,@is_unique
		,@IndexTypeDesc
		,@IndexOptions
		,@is_disabled
		,@FileGroupName

	WHILE (@@fetch_status = 0)
	BEGIN
		DECLARE @IndexColumns VARCHAR(max)
		DECLARE @IncludedColumns VARCHAR(max)

		SET @IndexColumns = ''
		SET @IncludedColumns = ''

		DECLARE CursorIndexColumn CURSOR
		FOR
		SELECT col.NAME
			,ixc.is_descending_key
			,ixc.is_included_column
		FROM sys.tables tb
		INNER JOIN sys.indexes ix ON tb.object_id = ix.object_id
		INNER JOIN sys.index_columns ixc ON ix.object_id = ixc.object_id
			AND ix.index_id = ixc.index_id
		INNER JOIN sys.columns col ON ixc.object_id = col.object_id
			AND ixc.column_id = col.column_id
		WHERE ix.type > 0
			AND (
				ix.is_primary_key = 0
				OR ix.is_unique_constraint = 0
				)
			AND schema_name(tb.schema_id) = @SchemaName
			AND tb.NAME = @TableName
			AND ix.NAME = @IndexName
		ORDER BY ixc.index_column_id

		OPEN CursorIndexColumn

		FETCH NEXT
		FROM CursorIndexColumn
		INTO @ColumnName
			,@IsDescendingKey
			,@IsIncludedColumn

		WHILE (@@fetch_status = 0)
		BEGIN
			IF @IsIncludedColumn = 0
				SET @IndexColumns = @IndexColumns + @ColumnName + CASE 
						WHEN @IsDescendingKey = 1
							THEN ' DESC, '
						ELSE ' ASC, '
						END
			ELSE
				SET @IncludedColumns = @IncludedColumns + @ColumnName + ', '

			FETCH NEXT
			FROM CursorIndexColumn
			INTO @ColumnName
				,@IsDescendingKey
				,@IsIncludedColumn
		END

		CLOSE CursorIndexColumn

		DEALLOCATE CursorIndexColumn

		SET @IndexColumns = substring(@IndexColumns, 1, len(@IndexColumns) - 1)
		SET @IncludedColumns = CASE 
				WHEN len(@IncludedColumns) > 0
					THEN substring(@IncludedColumns, 1, len(@IncludedColumns) - 1)
				ELSE ''
				END
		--  print @IndexColumns
		--  print @IncludedColumns
		SET @TSQLScripCreationIndex = ''
                IF @IndexTypeDesc <> 'XML'
                   SET @TSQLScripCreationIndex = 'CREATE ' + @is_unique + @IndexTypeDesc + ' INDEX ' + QUOTENAME(@IndexName) + ' ON ' + QUOTENAME(@SchemaName) + '.' + QUOTENAME(@TableName) + '(' + @IndexColumns + ') ' + CASE 
				WHEN len(@IncludedColumns) > 0
					THEN CHAR(13) + 'INCLUDE (' + @IncludedColumns + ')'
				ELSE ''
				END + CHAR(13) + 'WITH (' + @IndexOptions + ') ON ' + QUOTENAME(@FileGroupName) + ';'
                
		SET @TSQLScripCreationIndex = @TSQLScripCreationIndex

		FETCH NEXT
		FROM CursorIndex
		INTO @SchemaName
			,@TableName
			,@IndexName
			,@is_unique
			,@IndexTypeDesc
			,@IndexOptions
			,@is_disabled
			,@FileGroupName
	END

	CLOSE CursorIndex

	DEALLOCATE CursorIndex

	RETURN ISNULL(@TSQLScripCreationIndex, '')
END
GO
------------------------------------------------------------------------------------------
-- Name        : GetCheckConstraint 
-- Description : SCRIPT TO GENERATE THE CREATION SCRIPT OF ALL PK AND UNIQUE CONSTRAINTS.
-- Input       : table_name      - the name of table
-- Example     : SELECT DBO.GetCheckConstraint ('DOMAIN$1')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION GetCheckConstraint
(
	@table_name VARCHAR(4000)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @constraint_def VARCHAR(MAX);
	SELECT @constraint_def=ConstraintDefination FROM ( SELECT OBJECT_NAME(so.parent_obj) as object,
		 'ALTER TABLE  ' +
		 QuoteName(OBJECT_NAME(so.parent_obj)) +
		 CHAR(10) +
		 ' ADD CONSTRAINT ' +
		 QuoteName(CONSTRAINT_NAME) +
		 ' CHECK ' +
		 CHECK_CLAUSE as 'ConstraintDefination'
	 FROM
		 INFORMATION_SCHEMA.CHECK_CONSTRAINTS cc
		 INNER JOIN sys.sysobjects so
		 ON cc.CONSTRAINT_NAME = so.[name]
	) MAIN WHERE MAIN.[object]=@table_name

	RETURN ISNULL(@constraint_def, '')
END
GO
------------------------------------------------------------------------------------------
-- Name        : GetForeignKey
-- Description : SCRIPT TO GENERATE THE CREATION SCRIPT OF ALL FOREIGN KEY CONSTRAINTS.
-- Input       : table_name      - the name of table
-- Example     : select dbo.GetForeignKey('PREFERENCE')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION GetForeignKey
( 
	@TABLE_NAME VARCHAR(4000)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
		DECLARE @create NVARCHAR(MAX) = N'';

		SELECT @create += N'
		ALTER TABLE ' + QUOTENAME(cs.NAME) + '.' + QUOTENAME(ct.NAME) + '  WITH CHECK  ADD CONSTRAINT ' + QUOTENAME(fk.NAME) + ' FOREIGN KEY (' + STUFF((
				SELECT ',' + QUOTENAME(c.NAME)
				-- get all the columns in the constraint table
				FROM sys.columns AS c
				INNER JOIN sys.foreign_key_columns AS fkc ON fkc.parent_column_id = c.column_id
					AND fkc.parent_object_id = c.[object_id]
				WHERE fkc.constraint_object_id = fk.[object_id]
				ORDER BY fkc.constraint_column_id
				FOR XML PATH(N'')
					,TYPE
				).value(N'.[1]', N'nvarchar(max)'), 1, 1, N'') + ') REFERENCES ' + QUOTENAME(rs.NAME) + '.' + QUOTENAME(rt.NAME) + '(' + STUFF((
				SELECT ',' + QUOTENAME(c.NAME)
				-- get all the referenced columns
				FROM sys.columns AS c
				INNER JOIN sys.foreign_key_columns AS fkc ON fkc.referenced_column_id = c.column_id
					AND fkc.referenced_object_id = c.[object_id]
				WHERE fkc.constraint_object_id = fk.[object_id] and OBJECT_NAME(fkc.parent_object_id)=@table_name
				ORDER BY fkc.constraint_column_id
				FOR XML PATH(N'')
					,TYPE
				).value(N'.[1]', N'nvarchar(max)'), 1, 1, N'') + ');'
		FROM sys.foreign_keys AS fk
		INNER JOIN sys.tables AS rt -- referenced table
		ON fk.referenced_object_id = rt.[object_id]
		INNER JOIN sys.schemas AS rs ON rt.[schema_id] = rs.[schema_id]
		INNER JOIN sys.tables AS ct -- constraint table
		ON fk.parent_object_id = ct.[object_id]
		INNER JOIN sys.schemas AS cs ON ct.[schema_id] = cs.[schema_id]
		WHERE rt.is_ms_shipped = 0 
		AND ct.is_ms_shipped = 0;
		
		RETURN ISNULL(@create,'');
END
GO
------------------------------------------------------------------------------------------
-- Name        : GetPrimaryKey
-- Description : SCRIPT TO GENERATE THE CREATION SCRIPT OF ALL PK AND UNIQUE CONSTRAINTS.
-- Input       : table_name      - the name of table
-- Example     : SELECT dbo.GetPrimaryKey('DOMAIN')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION GetPrimaryKey
(
	@table_name VARCHAR(4000)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @SchemaName VARCHAR(100)
	DECLARE @TableName VARCHAR(256) = @table_name
	DECLARE @IndexName VARCHAR(256)
	DECLARE @ColumnName VARCHAR(100)
	DECLARE @is_unique_constraint VARCHAR(100)
	DECLARE @IndexTypeDesc VARCHAR(100)
	DECLARE @FileGroupName VARCHAR(100)
	DECLARE @is_disabled VARCHAR(100)
	DECLARE @IndexOptions VARCHAR(MAX)
	DECLARE @IndexColumnId INT
	DECLARE @IsDescendingKey INT
	DECLARE @IsIncludedColumn INT
	DECLARE @TSQLScripCreationIndex VARCHAR(MAX)
	DECLARE @TSQLScripDisableIndex VARCHAR(MAX)
	DECLARE @is_primary_key VARCHAR(100)

	DECLARE CursorIndex CURSOR
	FOR
	SELECT schema_name(t.schema_id) [schema_name]
		,t.NAME
		,ix.NAME
		,CASE 
			WHEN ix.is_unique_constraint = 1
				THEN ' UNIQUE '
			ELSE ''
			END
		,CASE 
			WHEN ix.is_primary_key = 1
				THEN ' PRIMARY KEY '
			ELSE ''
			END
		,ix.type_desc
		,CASE 
			WHEN ix.is_padded = 1
				THEN 'PAD_INDEX = ON, '
			ELSE 'PAD_INDEX = OFF, '
			END + CASE 
			WHEN ix.allow_page_locks = 1
				THEN 'ALLOW_PAGE_LOCKS = ON, '
			ELSE 'ALLOW_PAGE_LOCKS = OFF, '
			END + CASE 
			WHEN ix.allow_row_locks = 1
				THEN 'ALLOW_ROW_LOCKS = ON, '
			ELSE 'ALLOW_ROW_LOCKS = OFF, '
			END + CASE 
			WHEN INDEXPROPERTY(t.object_id, ix.NAME, 'IsStatistics') = 1
				THEN 'STATISTICS_NORECOMPUTE = ON, '
			ELSE 'STATISTICS_NORECOMPUTE = OFF, '
			END + CASE 
			WHEN ix.ignore_dup_key = 1
				THEN 'IGNORE_DUP_KEY = ON, '
			ELSE 'IGNORE_DUP_KEY = OFF, '
			END + 'SORT_IN_TEMPDB = OFF, FILLFACTOR =' + CAST(ix.fill_factor AS VARCHAR(3)) AS IndexOptions
		,FILEGROUP_NAME(ix.data_space_id) FileGroupName
	FROM sys.tables t
	INNER JOIN sys.indexes ix ON t.object_id = ix.object_id
	WHERE ix.type > 0
		AND (
			ix.is_primary_key = 1
			OR ix.is_unique_constraint = 1
			)
		AND t.NAME = @TableName --and schema_name(tb.schema_id)= @SchemaName
		AND t.is_ms_shipped = 0
		AND t.NAME <> 'sysdiagrams'
	ORDER BY schema_name(t.schema_id)
		,t.NAME
		,ix.NAME

	OPEN CursorIndex

	FETCH NEXT
	FROM CursorIndex
	INTO @SchemaName
		,@TableName
		,@IndexName
		,@is_unique_constraint
		,@is_primary_key
		,@IndexTypeDesc
		,@IndexOptions
		,@FileGroupName

	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		DECLARE @IndexColumns VARCHAR(MAX)
		DECLARE @IncludedColumns VARCHAR(MAX)

		SET @IndexColumns = ''
		SET @IncludedColumns = ''

		DECLARE CursorIndexColumn CURSOR
		FOR
		SELECT col.NAME
			,ixc.is_descending_key
			,ixc.is_included_column
		FROM sys.tables tb
		INNER JOIN sys.indexes ix ON tb.object_id = ix.object_id
		INNER JOIN sys.index_columns ixc ON ix.object_id = ixc.object_id
			AND ix.index_id = ixc.index_id
		INNER JOIN sys.columns col ON ixc.object_id = col.object_id
			AND ixc.column_id = col.column_id
		WHERE ix.type > 0
			AND (
				ix.is_primary_key = 1
				OR ix.is_unique_constraint = 1
				)
			AND schema_name(tb.schema_id) = @SchemaName
			AND tb.NAME = @TableName
			AND ix.NAME = @IndexName
		ORDER BY ixc.index_column_id

		OPEN CursorIndexColumn

		FETCH NEXT
		FROM CursorIndexColumn
		INTO @ColumnName
			,@IsDescendingKey
			,@IsIncludedColumn

		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			IF @IsIncludedColumn = 0
				SET @IndexColumns = @IndexColumns + @ColumnName + CASE 
						WHEN @IsDescendingKey = 1
							THEN ' DESC, '
						ELSE ' ASC, '
						END
			ELSE
				SET @IncludedColumns = @IncludedColumns + @ColumnName + ', '

			FETCH NEXT
			FROM CursorIndexColumn
			INTO @ColumnName
				,@IsDescendingKey
				,@IsIncludedColumn
		END

		CLOSE CursorIndexColumn

		DEALLOCATE CursorIndexColumn

		SET @IndexColumns = SUBSTRING(@IndexColumns, 1, LEN(@IndexColumns) - 1)
		SET @IncludedColumns = CASE 
				WHEN LEN(@IncludedColumns) > 0
					THEN SUBSTRING(@IncludedColumns, 1, LEN(@IncludedColumns) - 1)
				ELSE ''
				END
		--  print @IndexColumns
		--  print @IncludedColumns
		SET @TSQLScripCreationIndex = ''
		SET @TSQLScripDisableIndex = ''
		SET @TSQLScripCreationIndex = 'ALTER TABLE ' + QUOTENAME(@SchemaName) + '.' + QUOTENAME(@TableName) + ' ADD CONSTRAINT ' + QUOTENAME(@IndexName) + @is_unique_constraint + @is_primary_key + + @IndexTypeDesc + '(' + @IndexColumns + ') ' + CASE 
				WHEN LEN(@IncludedColumns) > 0
					THEN CHAR(13) + 'INCLUDE (' + @IncludedColumns + ')'
				ELSE ''
				END + CHAR(13) + 'WITH (' + @IndexOptions + ') ON ' + QUOTENAME(@FileGroupName) + ';'

		SET @TSQLScripCreationIndex=@TSQLScripCreationIndex
		

		FETCH NEXT
		FROM CursorIndex
		INTO @SchemaName,@TableName	,@IndexName,@is_unique_constraint,@is_primary_key,@IndexTypeDesc,@IndexOptions,@FileGroupName 
		END

	CLOSE CursorIndex
	DEALLOCATE CursorIndex
	RETURN ISNULL(@TSQLScripCreationIndex,'');
END
GO
/*
-- USAGE: exec usp_GetDDL GMACT
--   or   exec usp_GetDDL 'bob.example'
--   or   exec usp_GetDDL '[schemaname].[tablename]'
--   or   exec usp_GetDDL #temp
--#############################################################################
CREATE OR ALTER PROCEDURE [usp_GetDDL]
	@TBL	VARCHAR(255)
AS
BEGIN
  SET NOCOUNT ON
  DECLARE     @TBLNAME                VARCHAR(200),
              @SCHEMANAME             VARCHAR(255),
              @STRINGLEN              INT,
              @TABLE_ID               INT,
              @FINALSQL               VARCHAR(MAX),
              @CONSTRAINTSQLS         VARCHAR(MAX),
              @CHECKCONSTSQLS         VARCHAR(MAX),
              @RULESCONSTSQLS         VARCHAR(MAX),
              @FKSQLS                 VARCHAR(MAX),
              @TRIGGERSTATEMENT       VARCHAR(MAX),
              @EXTENDEDPROPERTIES     VARCHAR(MAX),
              @INDEXSQLS              VARCHAR(MAX),
              @MARKSYSTEMOBJECT       VARCHAR(MAX),
              @vbCrLf                 CHAR(2),
              @ISSYSTEMOBJECT         INT,
              @PROCNAME               VARCHAR(256),
              @input                  VARCHAR(MAX),
              @ObjectTypeFound        VARCHAR(255),
              @ObjectDataTypeLen      INT

--##############################################################################
-- INITIALIZE
--##############################################################################
  SET @input = ''
  --new code: determine whether this proc is marked as a system proc with sp_ms_marksystemobject,
  --which flips the is_ms_shipped bit in sys.objects
    SELECT @ISSYSTEMOBJECT = ISNULL(is_ms_shipped,0),@PROCNAME = ISNULL(name,'usp_GetDDL') FROM sys.objects WHERE OBJECT_ID = @@PROCID
  IF @ISSYSTEMOBJECT IS NULL 
    SELECT @ISSYSTEMOBJECT = ISNULL(is_ms_shipped,0),@PROCNAME = ISNULL(name,'usp_GetDDL') FROM master.sys.objects WHERE OBJECT_ID = @@PROCID
  IF @ISSYSTEMOBJECT IS NULL 
    SET @ISSYSTEMOBJECT = 0  
  IF @PROCNAME IS NULL
    SET @PROCNAME = 'usp_GetDDL'
  --SET @TBL =  '[DBO].[WHATEVER1]'
  --does the tablename contain a schema?
  SET @vbCrLf = CHAR(13) + CHAR(10)
  SELECT @SCHEMANAME = ISNULL(PARSENAME(@TBL,2),'dbo') ,
         @TBLNAME    = PARSENAME(@TBL,1)
  SELECT
    @TBLNAME    = [name],
    @TABLE_ID   = [OBJECT_ID]
  FROM sys.objects OBJS
  WHERE [TYPE]          IN ('S','U')
    AND [name]          <>  'dtproperties'
    AND [name]           =  @TBLNAME
    AND [SCHEMA_ID] =  SCHEMA_ID(@SCHEMANAME) ;

 SELECT @ObjectDataTypeLen = MAX(LEN(name)) from sys.types
--##############################################################################
-- Check If TEMP TableName is Valid
--##############################################################################
  IF LEFT(@TBLNAME,1) = '#'
    BEGIN
      PRINT '--TEMP TABLE  ' + quotename(@TBLNAME) + '  FOUND'
      IF OBJECT_ID('tempdb..' + quotename(@TBLNAME)) IS NOT NULL
        BEGIN
          PRINT '--GOIN TO TEMP PROCESSING'
          GOTO TEMPPROCESS
        END
    END
  ELSE
    BEGIN
      PRINT '--Non-Temp Table, ' + quotename(@TBLNAME) + ' continue Processing'
    END
--##############################################################################
-- Check If TableName is Valid
--##############################################################################
  IF ISNULL(@TABLE_ID,0) = 0
    BEGIN
      --V309 code: see if it is an object and not a table.
      SELECT
        @TBLNAME    = [name],
        @TABLE_ID   = [OBJECT_ID],
        @ObjectTypeFound = type_desc
      FROM sys.objects OBJS
      --WHERE [type_desc]     IN('SQL_STORED_PROCEDURE','VIEW','SQL_TRIGGER','AGGREGATE_FUNCTION','SQL_INLINE_TABLE_VALUED_FUNCTION','SQL_TABLE_VALUED_FUNCTION','SQL_SCALAR_FUNCTION','SYNONYMN')
      WHERE [TYPE]          IN ('P','V','TR','AF','IF','FN','TF','SN')
        AND [name]          <>  'dtproperties'
        AND [name]           =  @TBLNAME
        AND [SCHEMA_ID] =  SCHEMA_ID(@SCHEMANAME) ;
      IF ISNULL(@TABLE_ID,0) <> 0  
        BEGIN
          --adding a drop statement.
          --adding a sp_ms_marksystemobject if needed

          SELECT @MARKSYSTEMOBJECT = CASE 
                                       WHEN is_ms_shipped = 1 
                                       THEN '
GO
--#################################################################################################
--Mark as a system object
EXECUTE sp_ms_marksystemobject  ''' + quotename(@SCHEMANAME) +'.' + quotename(@TBLNAME) + '''
--#################################################################################################
' 
                                       ELSE '
GO
' 
                                     END 
          FROM sys.objects OBJS 
          WHERE object_id = @TABLE_ID

          --adding a drop statement.
          --adding a drop statement.
          IF @ObjectTypeFound = 'SYNONYM'
            BEGIN
               SELECT @FINALSQL = 
                'IF EXISTS(SELECT * FROM sys.synonyms WHERE name = ''' 
                                + name 
                                + ''''
                                + ' AND base_object_name <> ''' + base_object_name + ''')'
                                + @vbCrLf
                                + '  DROP SYNONYM ' + quotename(name) + ''
                                + @vbCrLf
                                +'GO'
                                + @vbCrLf
                                +'IF NOT EXISTS(SELECT * FROM sys.synonyms WHERE name = ''' 
                                + name 
                                + ''')'
                                + @vbCrLf
                                + 'CREATE SYNONYM ' + quotename(name) + ' FOR ' + base_object_name +';'
                                from sys.synonyms
                                WHERE  [name]   =  @TBLNAME
                                AND [SCHEMA_ID] =  SCHEMA_ID(@SCHEMANAME);
            END
          ELSE
            BEGIN
          SELECT @FINALSQL = 
          'IF OBJECT_ID(''' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ''') IS NOT NULL ' + @vbcrlf
          + 'DROP ' + CASE 
                        WHEN OBJS.[type] IN ('P')
                        THEN ' PROCEDURE '
                        WHEN OBJS.[type] IN ('V')
                        THEN ' VIEW      '
                        WHEN OBJS.[type] IN ('TR')
                        THEN ' TRIGGER   '
                        ELSE ' FUNCTION  '
                      END 
                      + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ' ' + @vbcrlf + 'GO' + @vbcrlf
          + def.definition + @MARKSYSTEMOBJECT
          FROM sys.objects OBJS 
            INNER JOIN sys.sql_modules def
              ON OBJS.object_id = def.object_id
          WHERE OBJS.[type]          IN ('P','V','TR','AF','IF','FN','TF')
            AND OBJS.[name]          <>  'dtproperties'
            AND OBJS.[name]           =  @TBLNAME
            AND OBJS.[schema_id] =  SCHEMA_ID(@SCHEMANAME) ;
            END
          SET @input = @FINALSQL  
          
        SELECT @input AS Item
         RETURN;
        END
      ELSE
        BEGIN
        SET @FINALSQL = 'Object ' + quotename(@SCHEMANAME) + '.' + quotename(@TBLNAME) + ' does not exist in Database ' + quotename(DB_NAME())   + ' '  
                      + CASE 
                          WHEN @ISSYSTEMOBJECT = 0 THEN @vbCrLf + ' (also note that ' + @PROCNAME + ' is not marked as a system proc and cross db access to sys.tables will fail.)'
                          ELSE ''
                        END
      IF LEFT(@TBLNAME,1) = '#' 
        SET @FINALSQL = @FINALSQL + ' OR in The tempdb database.'
      SELECT @FINALSQL AS Item;
      RETURN 0
        END  
      
    END
--##############################################################################
-- Valid Table, Continue Processing
--##############################################################################
 SELECT 
   @FINALSQL =  'IF OBJECT_ID(''' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ''') IS NOT NULL ' + @vbcrlf
              + 'DROP TABLE ' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ' ' + @vbcrlf + 'GO' + @vbcrlf
              + 'CREATE TABLE ' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ' ( '
  --removed invalid code here which potentially selected wrong table--thanks David Grifiths @SSC!
  SELECT
    @STRINGLEN = MAX(LEN(COLS.[name])) + 1
  FROM sys.objects OBJS
    INNER JOIN sys.columns COLS
      ON  OBJS.[object_id] = COLS.[object_id]
      AND OBJS.[object_id] = @TABLE_ID;
--##############################################################################
--Get the columns, their definitions and defaults.
--##############################################################################
  SELECT
    @FINALSQL = @FINALSQL
    + CASE
        WHEN COLS.[is_computed] = 1
        THEN @vbCrLf
             + QUOTENAME(COLS.[name])
             + ' '
             + SPACE(@STRINGLEN - LEN(COLS.[name]))
             + 'AS ' + ISNULL(CALC.definition,'')
             + CASE 
                 WHEN CALC.is_persisted = 1 
                 THEN ' PERSISTED'
                 ELSE ''
               END
        ELSE @vbCrLf
             + QUOTENAME(COLS.[name])
             + ' '
             + SPACE(@STRINGLEN - LEN(COLS.[name]))
             + UPPER(TYPE_NAME(COLS.[user_type_id]))
             + CASE
-- data types with precision and scale  IE DECIMAL(18,3), NUMERIC(10,2)
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('decimal','numeric')
               THEN '('
                    + CONVERT(VARCHAR,COLS.[precision])
                    + ','
                    + CONVERT(VARCHAR,COLS.[scale])
                    + ') '
                    + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[precision])
                    + ','
                    + CONVERT(VARCHAR,COLS.[scale])))
                    + SPACE(7)
                    + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                    + CASE
                        WHEN COLUMNPROPERTY ( @TABLE_ID , COLS.[name] , 'IsIdentity' ) = 0
                        THEN ''
                        ELSE ' IDENTITY('
                               + CONVERT(VARCHAR,ISNULL(IDENT_SEED(@TBLNAME),1) )
                               + ','
                               + CONVERT(VARCHAR,ISNULL(IDENT_INCR(@TBLNAME),1) )
                               + ')'
                        END
                    + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN COLS.[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
-- data types with scale  IE datetime2(7),TIME(7)
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('datetime2','datetimeoffset','time')
               THEN CASE 
                      WHEN COLS.[scale] < 7 THEN
                      '('
                      + CONVERT(VARCHAR,COLS.[scale])
                      + ') '
                    ELSE 
                      '    '
                    END
                    + SPACE(4)
                    + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                    + '        '
                    + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN COLS.[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END

--data types with no/precision/scale,IE  FLOAT
               WHEN  TYPE_NAME(COLS.[user_type_id]) IN ('float') --,'real')
               THEN
               --addition: if 53, no need to specifically say (53), otherwise display it
                    CASE
                      WHEN COLS.[precision] = 53
                      THEN SPACE(11 - LEN(CONVERT(VARCHAR,COLS.[precision])))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,COLS.[precision])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[precision])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      END
--data type with max_length		ie CHAR (44), VARCHAR(40), BINARY(5000),
--##############################################################################
-- COLLATE STATEMENTS
-- personally i do not like collation statements,
-- but included here to make it easy on those who do
--##############################################################################
               WHEN  TYPE_NAME(COLS.[user_type_id]) IN ('char','varchar','binary','varbinary')
               THEN CASE
                      WHEN  COLS.[max_length] = -1
                      THEN  '(max)'
                            + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[max_length])))
                            + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                            ----collate to comment out when not desired
                            --+ CASE
                            --    WHEN COLS.collation_name IS NULL
                            --    THEN ''
                            --    ELSE ' COLLATE ' + COLS.collation_name
                            --  END
                            + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN COLS.[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
                      ELSE '('
                           + CONVERT(VARCHAR,COLS.[max_length])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[max_length])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
--data type with max_length ( BUT DOUBLED) ie NCHAR(33), NVARCHAR(40)
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('nchar','nvarchar')
               THEN CASE
                      WHEN  COLS.[max_length] = -1
                      THEN '(max)'
                           + SPACE(5 - LEN(CONVERT(VARCHAR,(COLS.[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN  ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,(COLS.[max_length] / 2))
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,(COLS.[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END

               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('datetime','money','text','image','real')
               THEN SPACE(18 - LEN(TYPE_NAME(COLS.[user_type_id])))
                    + '              '
                    + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN COLS.[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END

--  other data type 	IE INT, DATETIME, MONEY, CUSTOM DATA TYPE,...
               ELSE SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                            + CASE
                                WHEN COLUMNPROPERTY ( @TABLE_ID , COLS.[name] , 'IsIdentity' ) = 0
                                THEN '              '
                                ELSE ' IDENTITY('
                                     + CONVERT(VARCHAR,ISNULL(IDENT_SEED(@TBLNAME),1) )
                                     + ','
                                     + CONVERT(VARCHAR,ISNULL(IDENT_INCR(@TBLNAME),1) )
                                     + ')'
                              END
                            + SPACE(2)
                            + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN COLS.[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
               END
             + CASE
                 WHEN COLS.[default_object_id] = 0
                 THEN ''
                 --ELSE ' DEFAULT '  + ISNULL(def.[definition] ,'')
                 --optional section in case NAMED default constraints are needed:
                 ELSE '  CONSTRAINT ' + quotename(DEF.name) + ' DEFAULT ' + ISNULL(DEF.[definition] ,'')
                        --i thought it needed to be handled differently! NOT!
               END  --CASE cdefault
      END --iscomputed
    + ','
    FROM sys.columns COLS
      LEFT OUTER JOIN  sys.default_constraints  DEF
        ON COLS.[default_object_id] = DEF.[object_id]
      LEFT OUTER JOIN sys.computed_columns CALC
         ON  COLS.[object_id] = CALC.[object_id]
         AND COLS.[column_id] = CALC.[column_id]
    WHERE COLS.[object_id]=@TABLE_ID
    ORDER BY COLS.[column_id]
--##############################################################################
--used for formatting the rest of the constraints:
--##############################################################################
  SELECT
    @STRINGLEN = MAX(LEN([name])) + 1
  FROM sys.objects OBJS
--##############################################################################
--PK/Unique Constraints and Indexes, using the 2005/08 INCLUDE syntax
--##############################################################################
  DECLARE @Results  TABLE (
                    [SCHEMA_ID]             INT,
                    [SCHEMA_NAME]           VARCHAR(255),
                    [OBJECT_ID]             INT,
                    [OBJECT_NAME]           VARCHAR(255),
                    [index_id]              INT,
                    [index_name]            VARCHAR(255),
                    [ROWS]                  BIGINT,
                    [SizeMB]                DECIMAL(19,3),
                    [IndexDepth]            INT,
                    [TYPE]                  INT,
                    [type_desc]             VARCHAR(30),
                    [fill_factor]           INT,
                    [is_unique]             INT,
                    [is_primary_key]        INT ,
                    [is_unique_constraint]  INT,
                    [index_columns_key]     VARCHAR(MAX),
                    [index_columns_include] VARCHAR(MAX),
                    [has_filter] bit ,
                    [filter_definition] VARCHAR(MAX),
                    [currentFilegroupName]  varchar(128),
                    [CurrentCompression]    varchar(128))
  INSERT INTO @Results
    SELECT
      SCH.schema_id, SCH.[name] AS SCHEMA_NAME,
      OBJS.[object_id], OBJS.[name] AS OBJECT_NAME,
      IDX.index_id, ISNULL(IDX.[name], '---') AS index_name,
      partitions.ROWS, partitions.SizeMB, INDEXPROPERTY(OBJS.[object_id], IDX.[name], 'IndexDepth') AS IndexDepth,
      IDX.type, IDX.type_desc, IDX.fill_factor,
      IDX.is_unique, IDX.is_primary_key, IDX.is_unique_constraint,
      ISNULL(Index_Columns.index_columns_key, '---') AS index_columns_key,
      ISNULL(Index_Columns.index_columns_include, '---') AS index_columns_include,
      IDX.[has_filter],
      IDX.[filter_definition],
      filz.name,
      ISNULL(p.data_compression_desc,'')
    FROM sys.objects OBJS
      INNER JOIN sys.schemas SCH ON OBJS.schema_id=SCH.schema_id
      INNER JOIN sys.indexes IDX ON OBJS.[object_id]=IDX.[object_id]
      INNER JOIN sys.filegroups filz ON IDX.data_space_id = filz.data_space_id
      INNER JOIN sys.partitions p     ON  IDX.object_id =  p.object_id  AND IDX.index_id = p.index_id
      INNER JOIN (
                  SELECT
                    [object_id], index_id, SUM(row_count) AS ROWS,
                    CONVERT(NUMERIC(19,3), CONVERT(NUMERIC(19,3), SUM(in_row_reserved_page_count+lob_reserved_page_count+row_overflow_reserved_page_count))/CONVERT(NUMERIC(19,3), 128)) AS SizeMB
                  FROM sys.dm_db_partition_stats STATS
                  GROUP BY [OBJECT_ID], index_id
                 ) AS partitions 
        ON  IDX.[object_id]=partitions.[object_id] 
        AND IDX.index_id=partitions.index_id

    CROSS APPLY (
                 SELECT
                   LEFT(index_columns_key, LEN(index_columns_key)-1) AS index_columns_key,
                  LEFT(index_columns_include, LEN(index_columns_include)-1) AS index_columns_include
                 FROM
                      (
                       SELECT
                              (
                              SELECT QUOTENAME(COLS.[name]) + CASE WHEN IXCOLS.is_descending_key = 0 THEN ' asc' ELSE ' desc' END + ',' + ' '
                               FROM sys.index_columns IXCOLS
                                 INNER JOIN sys.columns COLS
                                   ON  IXCOLS.column_id   = COLS.column_id
                                   AND IXCOLS.[object_id] = COLS.[object_id]
                               WHERE IXCOLS.is_included_column = 0
                                 AND IDX.[object_id] = IXCOLS.[object_id] 
                                 AND IDX.index_id = IXCOLS.index_id
                               ORDER BY key_ordinal
                               FOR XML PATH('')
                              ) AS index_columns_key,
                             (
                             SELECT QUOTENAME(COLS.[name]) + ',' + ' '
                              FROM sys.index_columns IXCOLS
                                INNER JOIN sys.columns COLS
                                  ON  IXCOLS.column_id   = COLS.column_id
                                  AND IXCOLS.[object_id] = COLS.[object_id]
                              WHERE IXCOLS.is_included_column = 1
                                AND IDX.[object_id] = IXCOLS.[object_id] 
                                AND IDX.index_id = IXCOLS.index_id
                              ORDER BY index_column_id
                              FOR XML PATH('')
                             ) AS index_columns_include
                      ) AS Index_Columns
                ) AS Index_Columns
    WHERE SCH.[name]  LIKE CASE 
                                     WHEN @SCHEMANAME = '' 
                                     THEN SCH.[name] 
                                     ELSE @SCHEMANAME 
                                   END
    AND OBJS.[name] LIKE CASE 
                                  WHEN @TBLNAME = ''  
                                  THEN OBJS.[name] 
                                  ELSE @TBLNAME 
                                END
    ORDER BY 
      SCH.[name], 
      OBJS.[name], 
      IDX.[name]
--@Results table has both PK,s Uniques and indexes in thme...pull them out for adding to funal results:
  SET @CONSTRAINTSQLS = ''
  SET @INDEXSQLS      = ''

--##############################################################################
--constraints
--##############################################################################
  SELECT @CONSTRAINTSQLS = @CONSTRAINTSQLS 
         + CASE
             WHEN is_primary_key = 1 OR is_unique = 1
             THEN @vbCrLf
                  + 'CONSTRAINT   ' + quotename(index_name) + ' '
                  + CASE  
                      WHEN is_primary_key = 1 
                      THEN ' PRIMARY KEY ' 
                      ELSE CASE  
                             WHEN is_unique = 1     
                             THEN ' UNIQUE      '      
                             ELSE '' 
                           END 
                    END
                  + type_desc 
                  + CASE 
                      WHEN type_desc='NONCLUSTERED' 
                      THEN '' 
                      ELSE '   ' 
                    END
                  + ' (' + index_columns_key + ')'
                  + CASE 
                      WHEN index_columns_include <> '---' 
                      THEN ' INCLUDE (' + index_columns_include + ')' 
                      ELSE '' 
                    END
                  + CASE
                      WHEN [has_filter] = 1 
                      THEN ' ' + [filter_definition]
                      ELSE ' '
                    END
                  + CASE WHEN fill_factor <> 0 OR [CurrentCompression] <> 'NONE'
                  THEN ' WITH (' + CASE
                                    WHEN fill_factor <> 0 
                                    THEN 'FILLFACTOR = ' + CONVERT(VARCHAR(30),fill_factor) 
                                    ELSE '' 
                                  END
                                + CASE
                                    WHEN fill_factor <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    WHEN fill_factor <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN fill_factor  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    ELSE '' 
                                  END
                                  + ')'

                  ELSE '' 
                  END 
                      
             ELSE ''
           END + ','
  FROM @RESULTS
  WHERE [type_desc] != 'HEAP'
    AND is_primary_key = 1 
    OR  is_unique = 1
  ORDER BY 
    is_primary_key DESC,
    is_unique DESC
--##############################################################################
--indexes
--##############################################################################
  SELECT @INDEXSQLS = @INDEXSQLS 
         + CASE
             WHEN is_primary_key = 0 OR is_unique = 0
             THEN @vbCrLf
                  + 'CREATE ' + type_desc + ' INDEX ' + quotename(index_name) + ' '
                  + @vbCrLf
                  + '   ON ' + quotename([schema_name]) + '.' + quotename([OBJECT_NAME])
                  + ' (' + index_columns_key + ')'
                  + CASE 
                     WHEN index_columns_include <> '---' 
                     THEN @vbCrLf + '   INCLUDE (' + index_columns_include + ')' 
                     ELSE '' 
                   END
                  --2008 filtered indexes syntax
                  + CASE 
                      WHEN has_filter = 1 
                      THEN @vbCrLf + '   WHERE ' + filter_definition
                      ELSE ''
                    END
                  + CASE WHEN fill_factor <> 0 OR [CurrentCompression] <> 'NONE'
                  THEN ' WITH (' + CASE
                                    WHEN fill_factor <> 0 
                                    THEN 'FILLFACTOR = ' + CONVERT(VARCHAR(30),fill_factor) 
                                    ELSE '' 
                                  END
                                + CASE
                                    WHEN fill_factor <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression]+' '
                                    WHEN fill_factor <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN fill_factor  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression]+' '
                                    ELSE '' 
                                  END
                                  + ')'

                  ELSE '' 
                  END 
           END
  FROM @RESULTS
  WHERE [type_desc] != 'HEAP'
    AND is_primary_key = 0 
    AND is_unique = 0
  ORDER BY 
    is_primary_key DESC,
    is_unique DESC

  IF @INDEXSQLS <> ''
    SET @INDEXSQLS = @vbCrLf + 'GO' + @vbCrLf + @INDEXSQLS
--##############################################################################
--CHECK Constraints
--##############################################################################
  SET @CHECKCONSTSQLS = ''
  SELECT
    @CHECKCONSTSQLS = @CHECKCONSTSQLS
    + @vbCrLf
    + ISNULL('CONSTRAINT   ' + quotename(OBJS.[name]) + ' '
    + SPACE(@STRINGLEN - LEN(OBJS.[name]))
    + ' CHECK ' + ISNULL(CHECKS.definition,'')
    + ',','')
  FROM sys.objects OBJS
    INNER JOIN sys.check_constraints CHECKS ON OBJS.[object_id] = CHECKS.[object_id]
  WHERE OBJS.type = 'C'
    AND OBJS.parent_object_id = @TABLE_ID
--##############################################################################
--FOREIGN KEYS
--##############################################################################
  SET @FKSQLS = '' ;
    SELECT
    @FKSQLS=@FKSQLS
    + @vbCrLf + Command FROM
(
SELECT
  DISTINCT
  --FK must be added AFTER the PK/unique constraints are added back.
  850 AS ExecutionOrder,
  'CONSTRAINT ' 
  + QUOTENAME(conz.name) 
  + ' FOREIGN KEY (' 
  + ChildCollection.ChildColumns 
  + ') REFERENCES ' 
  + QUOTENAME(SCHEMA_NAME(conz.schema_id)) 
  + '.' 
  + QUOTENAME(OBJECT_NAME(conz.referenced_object_id)) 
  + ' (' + ParentCollection.ParentColumns 
  + ') ' 

  +  CASE conz.update_referential_action
                                        WHEN 0 THEN '' --' ON UPDATE NO ACTION '
                                        WHEN 1 THEN ' ON UPDATE CASCADE '
                                        WHEN 2 THEN ' ON UPDATE SET NULL '
                                        ELSE ' ON UPDATE SET DEFAULT '
                                    END
                  + CASE conz.delete_referential_action
                                        WHEN 0 THEN '' --' ON DELETE NO ACTION '
                                        WHEN 1 THEN ' ON DELETE CASCADE '
                                        WHEN 2 THEN ' ON DELETE SET NULL '
                                        ELSE ' ON DELETE SET DEFAULT '
                                    END
                  + CASE conz.is_not_for_replication
                        WHEN 1 THEN ' NOT FOR REPLICATION '
                        ELSE ''
                    END
  + ',' AS Command
FROM   sys.foreign_keys conz
       INNER JOIN sys.foreign_key_columns colz
         ON conz.object_id = colz.constraint_object_id
      
       INNER JOIN (--gets my child tables column names   
SELECT
 conz.name,
 ChildColumns = STUFF((SELECT 
                         ',' + REFZ.name
                       FROM   sys.foreign_key_columns fkcolz
                              INNER JOIN sys.columns REFZ
                                ON fkcolz.parent_object_id = REFZ.object_id
                                   AND fkcolz.parent_column_id = REFZ.column_id
                       WHERE fkcolz.parent_object_id = conz.parent_object_id
                           AND fkcolz.constraint_object_id = conz.object_id
                         ORDER  BY
                        fkcolz.constraint_column_id
                      FOR XML PATH(''), TYPE).value('.','varchar(max)'),1,1,'')
FROM   sys.foreign_keys conz
      INNER JOIN sys.foreign_key_columns colz
        ON conz.object_id = colz.constraint_object_id
        WHERE conz.parent_object_id= @TABLE_ID
GROUP  BY
conz.name,
conz.parent_object_id,--- without GROUP BY multiple rows are returned
 conz.object_id
    ) ChildCollection
         ON conz.name = ChildCollection.name
       INNER JOIN (--gets the parent tables column names for the FK reference
                  SELECT
                     conz.name,
                     ParentColumns = STUFF((SELECT
                                              ',' + REFZ.name
                                            FROM   sys.foreign_key_columns fkcolz
                                                   INNER JOIN sys.columns REFZ
                                                     ON fkcolz.referenced_object_id = REFZ.object_id
                                                        AND fkcolz.referenced_column_id = REFZ.column_id
                                            WHERE  fkcolz.referenced_object_id = conz.referenced_object_id
                                              AND fkcolz.constraint_object_id = conz.object_id
                                            ORDER BY fkcolz.constraint_column_id
                                            FOR XML PATH(''), TYPE).value('.','varchar(max)'),1,1,'')
                   FROM   sys.foreign_keys conz
                          INNER JOIN sys.foreign_key_columns colz
                            ON conz.object_id = colz.constraint_object_id
                           -- AND colz.parent_column_id 
                   GROUP  BY
                    conz.name,
                    conz.referenced_object_id,--- without GROUP BY multiple rows are returned
                    conz.object_id
                  ) ParentCollection
         ON conz.name = ParentCollection.name
)MyAlias


--##############################################################################
--RULES
--##############################################################################
  SET @RULESCONSTSQLS = ''
  SELECT
    @RULESCONSTSQLS = @RULESCONSTSQLS
    + ISNULL(
             @vbCrLf
             + 'if not exists(SELECT [name] FROM sys.objects WHERE TYPE=''R'' AND schema_id = ' + CONVERT(VARCHAR(30),OBJS.schema_id) + ' AND [name] = ''' + quotename(OBJECT_NAME(COLS.[rule_object_id])) + ''')' + @vbCrLf
             + MODS.definition  + @vbCrLf + 'GO' +  @vbCrLf
             + 'EXEC sp_binderule  ' + quotename(OBJS.[name]) + ', ''' + quotename(OBJECT_NAME(COLS.[object_id])) + '.' + quotename(COLS.[name]) + '''' + @vbCrLf + 'GO' ,'')
  FROM sys.columns COLS 
    INNER JOIN sys.objects OBJS
      ON OBJS.[object_id] = COLS.[object_id]
    INNER JOIN sys.sql_modules MODS
      ON COLS.[rule_object_id] = MODS.[object_id]
  WHERE COLS.[rule_object_id] <> 0
    AND COLS.[object_id] = @TABLE_ID
--##############################################################################
--TRIGGERS
--##############################################################################
  SET @TRIGGERSTATEMENT = ''
  SELECT
    @TRIGGERSTATEMENT = @TRIGGERSTATEMENT +  @vbCrLf + MODS.[definition] + @vbCrLf + 'GO'
  FROM sys.sql_modules MODS
  WHERE [OBJECT_ID] IN(SELECT
                         [OBJECT_ID]
                       FROM sys.objects OBJS
                       WHERE TYPE = 'TR'
                       AND [parent_object_id] = @TABLE_ID)
  IF @TRIGGERSTATEMENT <> ''
    SET @TRIGGERSTATEMENT = @vbCrLf + 'GO' + @vbCrLf + @TRIGGERSTATEMENT
--##############################################################################
--NEW SECTION QUERY ALL EXTENDED PROPERTIES
--##############################################################################
  SET @EXTENDEDPROPERTIES = ''
  SELECT  @EXTENDEDPROPERTIES =
          @EXTENDEDPROPERTIES + @vbCrLf +
         'EXEC sys.sp_addextendedproperty
          @name = N''' + [name] + ''', @value = N''' + REPLACE(CONVERT(VARCHAR(MAX),[VALUE]),'''','''''') + ''',
          @level0type = N''SCHEMA'', @level0name = ' + quotename(@SCHEMANAME) + ',
          @level1type = N''TABLE'', @level1name = ' + quotename(@TBLNAME) + ';'
 --SELECT objtype, objname, name, value
  FROM fn_listextendedproperty (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, NULL, NULL);
  --OMacoder suggestion for column extended properties http://www.sqlservercentral.com/Forums/FindPost1651606.aspx
   ;WITH obj AS (
	SELECT split.a.value('.', 'VARCHAR(20)') AS name
	FROM ( 
		SELECT CAST ('<M>' + REPLACE('column,constraint,index,trigger,parameter', ',', '</M><M>') + '</M>' AS XML) AS data 
		) AS A 
		CROSS APPLY data.nodes ('/M') AS split(a)
	)
  SELECT 
  @EXTENDEDPROPERTIES =
		 @EXTENDEDPROPERTIES + @vbCrLf + @vbCrLf +
         'EXEC sys.sp_addextendedproperty
         @name = N''' + lep.[name] + ''', @value = N''' + REPLACE(convert(varchar(max),lep.[value]),'''','''''') + ''',
         @level0type = N''SCHEMA'', @level0name = ' + quotename(@SCHEMANAME) + ',
         @level1type = N''TABLE'', @level1name = ' + quotename(@TBLNAME) + ',
         @level2type = N''' + UPPER(obj.name)  + ''', @level2name = ' + quotename(lep.[objname]) + ';'
  --SELECT objtype, objname, name, value
  FROM obj 
	CROSS APPLY fn_listextendedproperty (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, obj.name, NULL) AS lep;  
  
  IF @EXTENDEDPROPERTIES <> ''
    SET @EXTENDEDPROPERTIES = @vbCrLf + 'GO' + @vbCrLf + @EXTENDEDPROPERTIES
--##############################################################################
--FINAL CLEANUP AND PRESENTATION
--##############################################################################
--at this point, there is a trailing comma, or it blank
  SELECT
    @FINALSQL = @FINALSQL
                + @CONSTRAINTSQLS
                + @CHECKCONSTSQLS
                + @FKSQLS
--note that this trims the trailing comma from the end of the statements
  SET @FINALSQL = SUBSTRING(@FINALSQL,1,LEN(@FINALSQL) -1) ;
  SET @FINALSQL = @FINALSQL + ')' + @vbCrLf ;

  SET @input = @vbCrLf
       + @FINALSQL
       + @INDEXSQLS
       + @RULESCONSTSQLS
       + @TRIGGERSTATEMENT
       + @EXTENDEDPROPERTIES

  SELECT @input AS Item;
  RETURN 0;     
--##############################################################################
-- END Normal Table Processing
--############################################################################## 
    
--simple, primitive version to get the results of a TEMP table from the TEMP db.  
--##############################################################################
-- NEW Temp Table Logic
--##############################################################################     
TEMPPROCESS:
  SELECT @TABLE_ID = OBJECT_ID('tempdb..' + @TBLNAME)

--##############################################################################
-- Valid temp Table, Continue Processing
--##############################################################################
SELECT 
  @FINALSQL =  'IF OBJECT_ID(''tempdb.' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ''') IS NOT NULL ' + @vbcrlf
               + 'DROP TABLE ' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ' ' + @vbcrlf + 'GO' + @vbcrlf
               + 'CREATE TABLE ' + quotename(@SCHEMANAME) + '.' + quotename(@TBLNAME) + ' ( '
  --removed invalud cide here which potentially selected wrong table--thansk David Grifiths @SSC!
  SELECT
    @STRINGLEN = MAX(LEN(COLS.[name])) + 1
  FROM tempdb.sys.objects OBJS
    INNER JOIN tempdb.sys.columns COLS
      ON  OBJS.[object_id] = COLS.[object_id]
      AND OBJS.[object_id] = @TABLE_ID;
--##############################################################################
--Get the columns, their definitions and defaults.
--##############################################################################
  SELECT
    @FINALSQL = @FINALSQL
    + CASE
        WHEN COLS.[is_computed] = 1
        THEN @vbCrLf
             + QUOTENAME(COLS.[name])
             + ' '
             + SPACE(@STRINGLEN - LEN(COLS.[name]))
             + 'AS ' + ISNULL(CALC.definition,'')
              + CASE 
                 WHEN CALC.is_persisted = 1 
                 THEN ' PERSISTED'
                 ELSE ''
               END
        ELSE @vbCrLf
             + QUOTENAME(COLS.[name])
             + ' '
             + SPACE(@STRINGLEN - LEN(COLS.[name]))
             + UPPER(TYPE_NAME(COLS.[user_type_id]))
             + CASE
-- data types with precision and scale  IE DECIMAL(18,3), NUMERIC(10,2)
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('decimal','numeric')
               THEN '('
                    + CONVERT(VARCHAR,COLS.[precision])
                    + ','
                    + CONVERT(VARCHAR,COLS.[scale])
                    + ') '
                    + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[precision])
                    + ','
                    + CONVERT(VARCHAR,COLS.[scale])))
                    + SPACE(7)
                    + SPACE(16 - LEN(TYPE_NAME(COLS.[user_type_id])))
                    + CASE
                        WHEN COLS.is_identity = 1
                        THEN ' IDENTITY(1,1)'
                        ELSE ''
                        ----WHEN COLUMNPROPERTY ( @TABLE_ID , COLS.[name] , 'IsIdentity' ) = 1
                        ----THEN ' IDENTITY('
                        ----       + CONVERT(VARCHAR,ISNULL(IDENT_SEED('tempdb..' + @TBLNAME),1) )
                        ----       + ','
                        ----       + CONVERT(VARCHAR,ISNULL(IDENT_INCR('tempdb..' + @TBLNAME),1) )
                        ----       + ')'
                        ----ELSE ''
                        END
                    + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN COLS.[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
-- data types with scale  IE datetime2(7),TIME(7)
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('datetime2','datetimeoffset','time')
               THEN CASE 
                      WHEN COLS.[scale] < 7 THEN
                      '('
                      + CONVERT(VARCHAR,COLS.[scale])
                      + ') '
                    ELSE 
                      '    '
                    END
                    + SPACE(4)
                    + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                    + '        '
                    + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN COLS.[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
--data types with no/precision/scale,IE  FLOAT
               WHEN  TYPE_NAME(COLS.[user_type_id]) IN ('float') --,'real')
               THEN
               --addition: if 53, no need to specifically say (53), otherwise display it
                    CASE
                      WHEN COLS.[precision] = 53
                      THEN SPACE(11 - LEN(CONVERT(VARCHAR,COLS.[precision])))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,COLS.[precision])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[precision])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      END
--ie VARCHAR(40)
--##############################################################################
-- COLLATE STATEMENTS in tempdb!
-- personally i do not like collation statements,
-- but included here to make it easy on those who do
--##############################################################################

               WHEN  TYPE_NAME(COLS.[user_type_id]) IN ('char','varchar','binary','varbinary')
               THEN CASE
                      WHEN  COLS.[max_length] = -1
                      THEN  '(max)'
                            + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[max_length])))
                            + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                            ----collate to comment out when not desired
                            --+ CASE
                            --    WHEN COLS.collation_name IS NULL
                            --    THEN ''
                            --    ELSE ' COLLATE ' + COLS.collation_name
                            --  END
                            + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN COLS.[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
                      ELSE '('
                           + CONVERT(VARCHAR,COLS.[max_length])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,COLS.[max_length])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
--data type with max_length ( BUT DOUBLED) ie NCHAR(33), NVARCHAR(40)
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('nchar','nvarchar')
               THEN CASE
                      WHEN  COLS.[max_length] = -1
                      THEN '(max)'
                           + SPACE(5 - LEN(CONVERT(VARCHAR,(COLS.[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           -- --collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN  ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,(COLS.[max_length] / 2))
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,(COLS.[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                           -- --collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN COLS.[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
--  other data type 	IE INT, DATETIME, MONEY, CUSTOM DATA TYPE,...
               WHEN TYPE_NAME(COLS.[user_type_id]) IN ('datetime','money','text','image','real')
               THEN SPACE(18 - LEN(TYPE_NAME(COLS.[user_type_id])))
                    + '              '
                    + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN COLS.[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END

--IE INT
               ELSE SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME(COLS.[user_type_id])))
                            + CASE
                                WHEN COLS.is_identity = 1
                                THEN ' IDENTITY(1,1)'
                                ELSE '              '
                                ----WHEN COLUMNPROPERTY ( @TABLE_ID , COLS.[name] , 'IsIdentity' ) = 1
                                ----THEN ' IDENTITY('
                                ----     + CONVERT(VARCHAR,ISNULL(IDENT_SEED('tempdb..' + @TBLNAME),1) )
                                ----     + ','
                                ----     + CONVERT(VARCHAR,ISNULL(IDENT_INCR('tempdb..' + @TBLNAME),1) )
                                ----     + ')'
                                ----ELSE '              '
                              END
                            + SPACE(2)
                            + CASE  WHEN COLS.[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN COLS.[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
               END
             + CASE
                 WHEN COLS.[default_object_id] = 0
                 THEN ''
                 ELSE ' DEFAULT '  + ISNULL(DEF.[definition] ,'')
                 --optional section in case NAMED default cosntraints are needed:
                 --ELSE ' CONSTRAINT [' + DEF.name + '] DEFAULT '+ REPLACE(REPLACE(ISNULL(DEF.[definition] ,''),'((','('),'))',')')
                        --i thought it needed to be handled differently! NOT!
               END  --CASE cdefault



      END --iscomputed
    + ','
    FROM tempdb.sys.columns COLS
      LEFT OUTER JOIN  tempdb.sys.default_constraints  DEF
        ON COLS.[default_object_id] = DEF.[object_id]
      LEFT OUTER JOIN tempdb.sys.computed_columns CALC
         ON  COLS.[object_id] = CALC.[object_id]
         AND COLS.[column_id] = CALC.[column_id]
    WHERE COLS.[object_id]=@TABLE_ID
    ORDER BY COLS.[column_id]
--##############################################################################
--used for formatting the rest of the constraints:
--##############################################################################
  SELECT
    @STRINGLEN = MAX(LEN([name])) + 1
  FROM tempdb.sys.objects OBJS
--##############################################################################
--PK/Unique Constraints and Indexes, using the 2005/08 INCLUDE syntax
--##############################################################################
  DECLARE @Results2  TABLE (
                    [SCHEMA_ID]             INT,
                    [SCHEMA_NAME]           VARCHAR(255),
                    [OBJECT_ID]             INT,
                    [OBJECT_NAME]           VARCHAR(255),
                    [index_id]              INT,
                    [index_name]            VARCHAR(255),
                    [ROWS]                  BIGINT,
                    [SizeMB]                DECIMAL(19,3),
                    [IndexDepth]            INT,
                    [TYPE]                  INT,
                    [type_desc]             VARCHAR(30),
                    [fill_factor]           INT,
                    [is_unique]             INT,
                    [is_primary_key]        INT ,
                    [is_unique_constraint]  INT,
                    [index_columns_key]     VARCHAR(MAX),
                    [index_columns_include] VARCHAR(MAX),
                    [has_filter] bit ,
                    [filter_definition] VARCHAR(MAX),
                    [currentFilegroupName]  varchar(128),
                    [CurrentCompression]    varchar(128))
  INSERT INTO @Results2
    SELECT
      SCH.schema_id, SCH.[name] AS SCHEMA_NAME,
      OBJS.[object_id], OBJS.[name] AS OBJECT_NAME,
      IDX.index_id, ISNULL(IDX.[name], '---') AS index_name,
      partitions.ROWS, partitions.SizeMB, INDEXPROPERTY(OBJS.[object_id], IDX.[name], 'IndexDepth') AS IndexDepth,
      IDX.type, IDX.type_desc, IDX.fill_factor,
      IDX.is_unique, IDX.is_primary_key, IDX.is_unique_constraint,
      ISNULL(Index_Columns.index_columns_key, '---') AS index_columns_key,
      ISNULL(Index_Columns.index_columns_include, '---') AS index_columns_include,
      IDX.has_filter,
      IDX.filter_definition,
      filz.name,
      ISNULL(p.data_compression_desc,'')
    FROM tempdb.sys.objects OBJS
      INNER JOIN tempdb.sys.schemas SCH ON OBJS.schema_id=SCH.schema_id
      INNER JOIN tempdb.sys.indexes IDX ON OBJS.[object_id]=IDX.[object_id]
      INNER JOIN sys.filegroups filz ON IDX.data_space_id = filz.data_space_id
      INNER JOIN sys.partitions p     ON  IDX.object_id =  p.object_id  AND IDX.index_id = p.index_id
      INNER JOIN (
                  SELECT
                    [object_id], index_id, SUM(row_count) AS ROWS,
                    CONVERT(NUMERIC(19,3), CONVERT(NUMERIC(19,3), SUM(in_row_reserved_page_count+lob_reserved_page_count+row_overflow_reserved_page_count))/CONVERT(NUMERIC(19,3), 128)) AS SizeMB
                  FROM tempdb.sys.dm_db_partition_stats STATS
                  GROUP BY [OBJECT_ID], index_id
                 ) AS partitions 
        ON  IDX.[object_id]=partitions.[object_id] 
        AND IDX.index_id=partitions.index_id
    CROSS APPLY (
                 SELECT
                   LEFT(index_columns_key, LEN(index_columns_key)-1) AS index_columns_key,
                  LEFT(index_columns_include, LEN(index_columns_include)-1) AS index_columns_include
                 FROM
                      (
                       SELECT
                              (
                              SELECT QUOTENAME(COLS.[name]) + CASE WHEN IXCOLS.is_descending_key = 0 THEN ' asc' ELSE ' desc' END + ',' + ' '
                               FROM tempdb.sys.index_columns IXCOLS
                                 INNER JOIN tempdb.sys.columns COLS
                                   ON  IXCOLS.column_id   = COLS.column_id
                                   AND IXCOLS.[object_id] = COLS.[object_id]
                               WHERE IXCOLS.is_included_column = 0
                                 AND IDX.[object_id] = IXCOLS.[object_id] 
                                 AND IDX.index_id = IXCOLS.index_id
                               ORDER BY key_ordinal
                               FOR XML PATH('')
                              ) AS index_columns_key,
                             (
                             SELECT QUOTENAME(COLS.[name]) + ',' + ' '
                              FROM tempdb.sys.index_columns IXCOLS
                                INNER JOIN tempdb.sys.columns COLS
                                  ON  IXCOLS.column_id   = COLS.column_id
                                  AND IXCOLS.[object_id] = COLS.[object_id]
                              WHERE IXCOLS.is_included_column = 1
                                AND IDX.[object_id] = IXCOLS.[object_id] 
                                AND IDX.index_id = IXCOLS.index_id
                              ORDER BY index_column_id
                              FOR XML PATH('')
                             ) AS index_columns_include
                      ) AS Index_Columns
                ) AS Index_Columns
    WHERE SCH.[name]  LIKE CASE 
                                     WHEN @SCHEMANAME = '' 
                                     THEN SCH.[name] 
                                     ELSE @SCHEMANAME 
                                   END
    AND OBJS.[name] LIKE CASE 
                                  WHEN @TBLNAME = ''  
                                  THEN OBJS.[name] 
                                  ELSE @TBLNAME 
                                END
    ORDER BY 
      SCH.[name], 
      OBJS.[name], 
      IDX.[name]
--@Results2 table has both PK,s Uniques and indexes in thme...pull them out for adding to funal results:
  SET @CONSTRAINTSQLS = ''
  SET @INDEXSQLS      = ''

--##############################################################################
--constriants
--##############################################################################
  SELECT @CONSTRAINTSQLS = @CONSTRAINTSQLS 
         + CASE
             WHEN is_primary_key = 1 OR is_unique = 1
             THEN @vbCrLf
                  + 'CONSTRAINT   ' + quotename(index_name) + ' '
                  + SPACE(@STRINGLEN - LEN(index_name))
                  + CASE  
                      WHEN is_primary_key = 1 
                      THEN ' PRIMARY KEY ' 
                      ELSE CASE  
                             WHEN is_unique = 1     
                             THEN ' UNIQUE      '      
                             ELSE '' 
                           END 
                    END
                  + type_desc 
                  + CASE 
                      WHEN type_desc='NONCLUSTERED' 
                      THEN '' 
                      ELSE '   ' 
                    END
                  + ' (' + index_columns_key + ')'
                  + CASE 
                      WHEN index_columns_include <> '---' 
                      THEN ' INCLUDE (' + index_columns_include + ')' 
                      ELSE '' 
                    END
                  + CASE
                      WHEN [has_filter] = 1 
                      THEN ' ' + [filter_definition]
                      ELSE ' '
                    END
                  + CASE WHEN fill_factor <> 0 OR [CurrentCompression] <> 'NONE'
                  THEN ' WITH (' + CASE
                                    WHEN fill_factor <> 0 
                                    THEN 'FILLFACTOR = ' + CONVERT(VARCHAR(30),fill_factor) 
                                    ELSE '' 
                                  END
                                + CASE
                                    WHEN fill_factor <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    WHEN fill_factor <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN fill_factor  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    ELSE '' 
                                  END
                                  + ')'

                  ELSE '' 
                  END 
             ELSE ''
           END + ','
  FROM @Results2
  WHERE [type_desc] != 'HEAP'
    AND is_primary_key = 1 
    OR  is_unique = 1
  ORDER BY 
    is_primary_key DESC,
    is_unique DESC
--##############################################################################
--indexes
--##############################################################################
  SELECT @INDEXSQLS = @INDEXSQLS 
         + CASE
             WHEN is_primary_key = 0 OR is_unique = 0
             THEN @vbCrLf
                  + 'CREATE ' + type_desc + ' INDEX ' + quotename(index_name) + ' '
                  + @vbCrLf
                   + '   ON ' + quotename([schema_name]) + '.' + quotename([OBJECT_NAME])
                  + ' (' + index_columns_key + ')'
                  + CASE 
                     WHEN index_columns_include <> '---' 
                     THEN @vbCrLf + '   INCLUDE (' + index_columns_include + ')' 
                     ELSE '' 
                   END
                  --2008 filtered indexes syntax
                  + CASE 
                      WHEN has_filter = 1 
                      THEN @vbCrLf + '   WHERE ' + filter_definition
                      ELSE ''
                    END
                  + CASE WHEN fill_factor <> 0 OR [CurrentCompression] <> 'NONE'
                  THEN ' WITH (' + CASE
                                    WHEN fill_factor <> 0 
                                    THEN 'FILLFACTOR = ' + CONVERT(VARCHAR(30),fill_factor) 
                                    ELSE '' 
                                  END
                                + CASE
                                    WHEN fill_factor <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    WHEN fill_factor <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN fill_factor  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    ELSE '' 
                                  END
                                  + ')'

                  ELSE '' 
                  END 
           END
  FROM @Results2
  WHERE [type_desc] != 'HEAP'
    AND is_primary_key = 0 
    AND is_unique = 0
  ORDER BY 
    is_primary_key DESC,
    is_unique DESC

  IF @INDEXSQLS <> ''
    SET @INDEXSQLS = @vbCrLf + 'GO' + @vbCrLf + @INDEXSQLS
--##############################################################################
--CHECK Constraints
--##############################################################################
  SET @CHECKCONSTSQLS = ''
  SELECT
    @CHECKCONSTSQLS = @CHECKCONSTSQLS
    + @vbCrLf
    + ISNULL('CONSTRAINT   ' + quotename(OBJS.[name]) + ' '
    + SPACE(@STRINGLEN - LEN(OBJS.[name]))
    + ' CHECK ' + ISNULL(CHECKS.definition,'')
    + ',','')
  FROM tempdb.sys.objects OBJS
    INNER JOIN tempdb.sys.check_constraints CHECKS ON OBJS.[object_id] = CHECKS.[object_id]
  WHERE OBJS.type = 'C'
    AND OBJS.parent_object_id = @TABLE_ID
--##############################################################################
--FOREIGN KEYS
--##############################################################################
  SET @FKSQLS = '' ;
    SELECT
    @FKSQLS=@FKSQLS
    + @vbCrLf + Command FROM
(
SELECT
  DISTINCT
  --FK must be added AFTER the PK/unique constraints are added back.
  850 AS ExecutionOrder,
  'CONSTRAINT ' 
  + QUOTENAME(conz.name) 
  + ' FOREIGN KEY (' 
  + ChildCollection.ChildColumns 
  + ') REFERENCES ' 
  + QUOTENAME(SCHEMA_NAME(conz.schema_id)) 
  + '.' 
  + QUOTENAME(OBJECT_NAME(conz.referenced_object_id)) 
  + ' (' + ParentCollection.ParentColumns 
  + ') ' 
   +  CASE conz.update_referential_action
                                        WHEN 0 THEN '' --' ON UPDATE NO ACTION '
                                        WHEN 1 THEN ' ON UPDATE CASCADE '
                                        WHEN 2 THEN ' ON UPDATE SET NULL '
                                        ELSE ' ON UPDATE SET DEFAULT '
                                    END
                  + CASE conz.delete_referential_action
                                        WHEN 0 THEN '' --' ON DELETE NO ACTION '
                                        WHEN 1 THEN ' ON DELETE CASCADE '
                                        WHEN 2 THEN ' ON DELETE SET NULL '
                                        ELSE ' ON DELETE SET DEFAULT '
                                    END
                  + CASE conz.is_not_for_replication
                        WHEN 1 THEN ' NOT FOR REPLICATION '
                        ELSE ''
                    END
  + ',' AS Command
FROM   sys.foreign_keys conz
       INNER JOIN sys.foreign_key_columns colz
         ON conz.object_id = colz.constraint_object_id
      
       INNER JOIN (--gets my child tables column names   
SELECT
 conz.name,
 ChildColumns = STUFF((SELECT 
                         ',' + REFZ.name
                       FROM   sys.foreign_key_columns fkcolz
                              INNER JOIN sys.columns REFZ
                                ON fkcolz.parent_object_id = REFZ.object_id
                                   AND fkcolz.parent_column_id = REFZ.column_id
                       WHERE fkcolz.parent_object_id = conz.parent_object_id
                           AND fkcolz.constraint_object_id = conz.object_id
                         ORDER  BY
                        fkcolz.constraint_column_id
                       FOR XML PATH(''), TYPE).value('.','varchar(max)'),1,1,'')
FROM   sys.foreign_keys conz
      INNER JOIN sys.foreign_key_columns colz
        ON conz.object_id = colz.constraint_object_id
 WHERE conz.parent_object_id= @TABLE_ID
GROUP  BY
conz.name,
conz.parent_object_id,--- without GROUP BY multiple rows are returned
 conz.object_id
    ) ChildCollection
         ON conz.name = ChildCollection.name
       INNER JOIN (--gets the parent tables column names for the FK reference
                  SELECT
                     conz.name,
                     ParentColumns = STUFF((SELECT
                                              ',' + REFZ.name
                                            FROM   sys.foreign_key_columns fkcolz
                                                   INNER JOIN sys.columns REFZ
                                                     ON fkcolz.referenced_object_id = REFZ.object_id
                                                        AND fkcolz.referenced_column_id = REFZ.column_id
                                            WHERE  fkcolz.referenced_object_id = conz.referenced_object_id
                                              AND fkcolz.constraint_object_id = conz.object_id
                                            ORDER BY fkcolz.constraint_column_id
                                            FOR XML PATH(''), TYPE).value('.','varchar(max)'),1,1,'')
                   FROM   sys.foreign_keys conz
                          INNER JOIN sys.foreign_key_columns colz
                            ON conz.object_id = colz.constraint_object_id
                           -- AND colz.parent_column_id 
                   GROUP  BY
                    conz.name,
                    conz.referenced_object_id,--- without GROUP BY multiple rows are returned
                    conz.object_id
                  ) ParentCollection
         ON conz.name = ParentCollection.name
)MyAlias

--##############################################################################
--RULES
--##############################################################################
  SET @RULESCONSTSQLS = ''
  SELECT
    @RULESCONSTSQLS = @RULESCONSTSQLS
    + ISNULL(
             @vbCrLf
             + 'if not exists(SELECT [name] FROM tempdb.sys.objects WHERE TYPE=''R'' AND schema_id = ' + CONVERT(VARCHAR(30),OBJS.schema_id) + ' AND [name] = ''' + quotename(OBJECT_NAME(COLS.[rule_object_id])) + ''')' + @vbCrLf
             + MODS.definition  + @vbCrLf + 'GO' +  @vbCrLf
             + 'EXEC sp_binderule  ' + quotename(OBJS.[name]) + ', ''' + quotename(OBJECT_NAME(COLS.[object_id])) + '.' + quotename(COLS.[name]) + '''' + @vbCrLf + 'GO' ,'')
  FROM tempdb.sys.columns COLS 
    INNER JOIN tempdb.sys.objects OBJS
      ON OBJS.[object_id] = COLS.[object_id]
    INNER JOIN tempdb.sys.sql_modules MODS
      ON COLS.[rule_object_id] = MODS.[object_id]
  WHERE COLS.[rule_object_id] <> 0
    AND COLS.[object_id] = @TABLE_ID
--##############################################################################
--TRIGGERS
--##############################################################################
  SET @TRIGGERSTATEMENT = ''
  SELECT
    @TRIGGERSTATEMENT = @TRIGGERSTATEMENT +  @vbCrLf + MODS.[definition] + @vbCrLf + 'GO'
  FROM tempdb.sys.sql_modules MODS
  WHERE [OBJECT_ID] IN(SELECT
                         [OBJECT_ID]
                       FROM tempdb.sys.objects OBJS
                       WHERE TYPE = 'TR'
                       AND [parent_object_id] = @TABLE_ID)
  IF @TRIGGERSTATEMENT <> ''
    SET @TRIGGERSTATEMENT = @vbCrLf + 'GO' + @vbCrLf + @TRIGGERSTATEMENT
--##############################################################################
--NEW SECTION QUERY ALL EXTENDED PROPERTIES
--##############################################################################
  SET @EXTENDEDPROPERTIES = ''
  SELECT  @EXTENDEDPROPERTIES =
          @EXTENDEDPROPERTIES + @vbCrLf +
         'EXEC tempdb.sys.sp_addextendedproperty
          @name = N''' + [name] + ''', @value = N''' + REPLACE(CONVERT(VARCHAR(MAX),[VALUE]),'''','''''') + ''',
          @level0type = N''SCHEMA'', @level0name = ' + quotename(@SCHEMANAME + ',
          @level1type = N''TABLE'', @level1name = [' + @TBLNAME) + '];'
 --SELECT objtype, objname, name, value
  FROM fn_listextendedproperty (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, NULL, NULL);
  --OMacoder suggestion for column extended properties http://www.sqlservercentral.com/Forums/FindPost1651606.aspx
  SELECT @EXTENDEDPROPERTIES =
         @EXTENDEDPROPERTIES + @vbCrLf +
         'EXEC sys.sp_addextendedproperty
         @name = N''' + [name] + ''', @value = N''' + REPLACE(convert(varchar(max),[value]),'''','''''') + ''',
         @level0type = N''SCHEMA'', @level0name = ' + quotename(@SCHEMANAME) + ',
         @level1type = N''TABLE'', @level1name = ' + quotename(@TBLNAME) + ',
         @level2type = N''COLUMN'', @level2name = ' + quotename([objname]) + ';'
  --SELECT objtype, objname, name, value
  FROM fn_listextendedproperty (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, 'column', NULL)
  IF @EXTENDEDPROPERTIES <> ''
    SET @EXTENDEDPROPERTIES = @vbCrLf + 'GO' + @vbCrLf + @EXTENDEDPROPERTIES
--##############################################################################
--FINAL CLEANUP AND PRESENTATION
--##############################################################################
--at this point, there is a trailing comma, or it blank
  SELECT
    @FINALSQL = @FINALSQL
                + @CONSTRAINTSQLS
                + @CHECKCONSTSQLS
                + @FKSQLS
--note that this trims the trailing comma from the end of the statements
  SET @FINALSQL = SUBSTRING(@FINALSQL,1,LEN(@FINALSQL) -1) ;
  SET @FINALSQL = @FINALSQL + ')' + @vbCrLf ;

  SET @input = @vbCrLf
       + @FINALSQL
       + @INDEXSQLS
       + @RULESCONSTSQLS
       + @TRIGGERSTATEMENT
       + @EXTENDEDPROPERTIES
  SELECT @input AS Item;
         
  RETURN 0;     
END --PROC
GO
--#################################################################################################
--Mark as a system object

-- TODO
-- EXECUTE sp_ms_marksystemobject 'usp_GetDDL'
GRANT EXECUTE ON dbo.usp_GetDDL TO PUBLIC;
--#################################################################################################
GO*/
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$copy_indexes
-- Description : This procedure is used to add a column to a normal or staging table.
--               In second case the column is added to $1 as well as $2 table.
-- Input       : tab_name - the name of table or (for staging) the synonym name
--               col_name - the name of column to be added
--               col_def  - the definition of column
-- Example     : EXEC dbo.STAGING_DDL$copy_indexes 'ABCDEMO1', 'ABCDEMO2'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  STAGING_DDL$copy_indexes
(
	@aSrcTableName	VARCHAR(256),
	@aDstTableName	VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @srcTableName VARCHAR(400) = UPPER(@aSrcTableName) ,
			@dstTableName VARCHAR(400) = UPPER(@aDstTableName),
			@dstIndexName VARCHAR(400),
			@ddl          NVARCHAR(4000),
			@count		  INT,
			@i			  INT = 1,
                        @sql_query varchar(4000);
                        DECLARE @index_name VARCHAR(100);

	DECLARE @table_var TABLE (
		RowId int identity(1,1),
		index_name VARCHAR(400),
		table_name VARCHAR(400)
	);
        -------------------------------------
	-- DEBUG destination table indexes
        INSERT INTO @table_var
		SELECT DISTINCT i.[name],OBJECT_NAME(i.[object_id]) 
		FROM [sys].[indexes] i
		JOIN sys.index_columns ic ON ic.object_id = i.object_id and i.index_id = ic.index_id
		INNER JOIN sys.objects so on so.object_id = i.object_id
		WHERE OBJECTPROPERTY(i.[object_id], 'IsUserTable') = 1 AND so.name = @aSrcTableName
		ORDER BY OBJECT_NAME(i.[object_id])

        SELECT @count = COUNT(1) FROM @table_var

        EXEC LOGGER$log 'Source table index count:'
        EXEC LOGGER$log @count
        
	IF(@count > 0)
	BEGIN
		WHILE(@i<=@count)
		BEGIN
			SELECT @index_name = INDEX_NAME FROM @table_var WHERE RowId = @i

                        EXEC LOGGER$log @index_name

                        SELECT @i=@i+1;
		END
	END
        EXEC LOGGER$log 'End source table index count:'
        --
        INSERT INTO @table_var
		SELECT DISTINCT i.[name],OBJECT_NAME(i.[object_id]) 
		FROM [sys].[indexes] i
		JOIN sys.index_columns ic ON ic.object_id = i.object_id and i.index_id = ic.index_id
		INNER JOIN sys.objects so on so.object_id = i.object_id
		WHERE OBJECTPROPERTY(i.[object_id], 'IsUserTable') = 1 AND so.name = @aDstTableName
		ORDER BY OBJECT_NAME(i.[object_id])

        SELECT @count = COUNT(1) FROM @table_var

        EXEC LOGGER$log 'Target table index count:'
        EXEC LOGGER$log @count
        
	IF(@count > 0)
	BEGIN
		WHILE(@i<=@count)
		BEGIN
			SELECT @index_name = INDEX_NAME FROM @table_var WHERE RowId = @i

                        EXEC LOGGER$log @index_name

                        SELECT @i=@i+1;
		END
	END
        EXEC LOGGER$log 'End target table index count:'
	-- END DEBUG destination table indexes
        ------------------------------------------------                
	INSERT INTO @table_var
		SELECT DISTINCT i.[name],OBJECT_NAME(i.[object_id]) 
		FROM [sys].[indexes] i
		JOIN sys.index_columns ic ON ic.object_id = i.object_id and i.index_id = ic.index_id
		INNER JOIN sys.objects so on so.object_id = i.object_id
		WHERE OBJECTPROPERTY(i.[object_id], 'IsUserTable') = 1 AND so.name = @aSrcTableName
		ORDER BY OBJECT_NAME(i.[object_id])

	SELECT @count = COUNT(1) FROM @table_var

--        EXEC LOGGER$log 'Copy index count:'
--        EXEC LOGGER$log @count
        
	IF(@count > 0)
	BEGIN
		WHILE(@i<=@count)
		BEGIN
			SELECT @index_name = INDEX_NAME FROM @table_var WHERE RowId = @i

  --                      EXEC LOGGER$log @index_name

	SET @sql_query=CONCAT('DROP INDEX IF EXISTS ', @index_name, SPACE(1), 'ON ', @aDstTableName);
--        EXEC LOGGER$log @sql_query
	EXECUTE SQL_UTIL$execute3 @sql_query;

                        
			SELECT @ddl = dbo.GetIndexCreationScript(@index_name);
			SELECT @ddl = REPLACE(@ddl, @srcTableName, @dstTableName);
			SELECT @ddl = REPLACE(@ddl, @index_name, dbo.STAGING$get_index_name2(@index_name, @aDstTableName));
--                        EXEC LOGGER$log @ddl
			EXECUTE SQL_UTIL$execute3 @ddl
			SELECT @i=@i+1;
		END
	END
END
GO
------------------------------------------------------------------------
-- Name        : STAGING_DDL$rename_table 
-- Description : This method returns a list of object names returned
--               by given query.
-- Input       : query     - the object name query
--               @aTableName - a TABLE value
-- Output      : the list of object names
--Example	   : EXEC STAGING_DDL$rename_table 'abcdemo3','$1'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$rename_table 
(
	@aTableName VARCHAR(256),
	@suffix  VARCHAR(200)
)
AS
BEGIN
	DECLARE @dstTableName	VARCHAR(256),
	@cons					DDL$type_constraints,
	@indx					DDL$type_object_name_list,
	@name					VARCHAR(100),
	@count					INT,
	@i						INT = 1,
	@schema					NVARCHAR(30) = SCHEMA_NAME(),
	@query					NVARCHAR(500),
	@msg					VARCHAR(4000);		

	SELECT @dstTableName = DBO.STAGING$get_table_name(@aTableName, @suffix);
--        EXEC LOGGER$log @dstTableName, 0
	IF (OBJECT_ID(@dstTableName) IS NOT NULL)
	BEGIN
		EXEC DDL$drop_table @dstTableName;
	END

	EXEC DDL$rename_table @aTableName, @dstTableName, '';

	EXEC DDL$create_synonym @aTableName, @dstTableName;

	INSERT INTO @cons
		EXEC  DDL$get_constraints @dstTableName, NULL, NULL;

	SELECT @count = COUNT(1) FROM @cons;
	IF(@count>0)
	BEGIN
             EXEC LOGGER$log 'Process table constraints:', 0
		WHILE(@i<=@count)
		BEGIN
			DECLARE @constraint_name VARCHAR(200)
			SELECT @constraint_name=CONSTRAINT_NAME FROM @cons where row=@i;
--                        EXEC LOGGER$log @constraint_name, 0
			SELECT @name=dbo.STAGING$get_constraint_name(@constraint_name,@dstTableName);
			
			IF(@name=@constraint_name)	
			BEGIN	
				SELECT @msg=CAST(@constraint_name  AS VARCHAR(4000)) + ' does not abides the naming rules of Enfinity Suite constraints.';
				EXEC LOGGER$log  @msg, 0;
			END
			ELSE IF (@constraint_name LIKE 'PK_%')
			BEGIN
				SELECT @msg=CAST(@constraint_name  AS VARCHAR(4000)) + ' starts with "PK_". It is handled as system constraint.';
				EXEC LOGGER$log  @msg, 0;
			END
			ELSE
			BEGIN
				DECLARE @OldValue NVARCHAR(300) = '[' + @schema + '].[' +@constraint_name + ']'
				EXEC sp_rename @OldValue, @name
			END
			SELECT @i=@i+1;
		END
	END
	ELSE
	BEGIN
		SELECT @msg=CAST(@aTableName  AS VARCHAR(4000)) + ' does not possess any constraints.';
		EXEC LOGGER$log @msg, 0;
	END

	SET @count=0
	SET @i=1			
	INSERT INTO @indx
		EXEC DDL$get_indexes @dstTableName, ''

	SELECT @count = COUNT(1) FROM  @indx;

        PRINT CONCAT('Indexes: ', @count)

	IF(@count > 0)
	BEGIN
		WHILE(@i <= @count)
		BEGIN
			DECLARE @index_name VARCHAR(100);
			SELECT @index_name=objectName FROM @indx WHERE row = @i;
                        EXEC LOGGER$log @index_name, 0
			SELECT @name = dbo.STAGING$get_index_name(@index_name, @dstTableName, '');
                        EXEC LOGGER$log @name, 0
			
			IF(@name = @index_name)
			BEGIN
				SELECT @msg='Can not rename index '+CAST(@index_name  AS VARCHAR(4000)) + ' TO ' + @name;
				EXEC LOGGER$log @msg, 0;
			END
			ELSE IF @index_name LIKE 'PK_%' 
			BEGIN
				SELECT @msg= CAST(@index_name as varchar(100)) +' is a system constraint and need not to be renamed.';
				EXEC LOGGER$log @msg, 0;
			END
			ELSE IF @index_name IS NULL 
			BEGIN
				SELECT @msg= CAST(@index_name as varchar(100)) +' is NULL. Ignoring!';
				EXEC LOGGER$log @msg, 0;
			END
			ELSE
			BEGIN
				DECLARE @OldValueIndex NVARCHAR(300) = CONCAT('[', @schema, '].[', @dstTableName, '].[', @index_name ,']');
                                EXEC LOGGER$log @OldValueIndex, 0
				EXEC sp_rename @OldValueIndex ,@name , N'INDEX';
			END;
			SET @i=@i+1;
		END
	END
	ELSE
	BEGIN
		SELECT @msg= 'No indexes found for table '+@aTableName;
		EXEC LOGGER$log @msg, 0;
	END
	-- make sure correct live table name suffix is set
	SET @query = CONCAT('UPDATE ', @schema, '.STAGINGTABLE SET LIVETABLENAMESUFFIX = ''', @SUFFIX, ''', OCA = OCA + 1, LASTMODIFIED=GETDATE() WHERE TABLENAME = ''', @aTableName, '''')
	EXEC SQL_UTIL$execute3 @query
	
END
GO
------------------------------------------------------------------------
-- Name        : STAGING_DDL$restore_table
-- Description : This procedure is used to restore original table.
--               All indexes and constraints are renamed, too.
-- Input       : tableName - the name of table
------------------------------------------------------------------------------------------
--Example	   : EXEC dbo.STAGING_DDL$restore_table 'DOMAIN'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$restore_table 
(
	@aTableName VARCHAR(100)		
)
AS
BEGIN
	DECLARE @liveTableName	VARCHAR(100),
			@cons			DDL$type_constraints,
			@indx			DDL$type_object_name_list,
			@name			VARCHAR(100),
			@count			INT,
			@i				INT = 1,
			@msg			VARCHAR(4000),
			@schema 		NVARCHAR(30) = SCHEMA_NAME();		
							
	SELECT @liveTableName = PARSENAME(base_object_name, 1) FROM sys.synonyms WHERE name = @aTableName;
			
	IF(@liveTableName IS NULL)
		RETURN;
		
	EXEC DDL$drop_synonym @aTableName;
	EXEC DDL$rename_table @liveTableName, @aTableName, '';

	INSERT INTO @cons
		EXEC  DDL$get_constraint @aTableName, '';
			
	SELECT @count = COUNT(1) FROM @cons 
	IF(@count > 0)
	BEGIN
		WHILE(@i <= @count)
		BEGIN
			DECLARE @constraint_name VARCHAR(200);
			SELECT @constraint_name = CONSTRAINT_NAME FROM @cons WHERE row = @i;
			SELECT @name = REPLACE (@constraint_name, '$1', '');
			SELECT @name = REPLACE(@name, '$2', '');

			IF(@name <> @constraint_name)
			BEGIN
				DECLARE @OldValue NVARCHAR(300) = CONCAT('[', @schema, '].[', @constraint_name, ']');
				EXEC sp_rename @OldValue, @name
			END
			SELECT @i=@i+1;
		END

	END
	ELSE
	BEGIN
		SELECT @msg=CAST(@aTableName  AS VARCHAR(4000)) + ' does not possess any constraints.';
		EXEC LOGGER$log @msg, 0;
	END

	-- rename indexes
	SET @count=0
	SET @i=1

	INSERT INTO @indx
		EXEC DDL$get_indexes @aTableName, ''

	SELECT @count=COUNT(1) FROM  @indx

	IF(@count>0)
	BEGIN
		WHILE(@i <= @count)
		BEGIN
			DECLARE @index_name VARCHAR(100);
			SELECT @index_name = objectName FROM @indx WHERE row = @i;
			SELECT @name=REPLACE(@index_name, '$1', '');
			SELECT @name=REPLACE(@name, '$2', '');
			
			IF(@name <> @index_name)
			BEGIN
				DECLARE @OldValueIndex NVARCHAR(300) = CONCAT('[', @schema, '].[', @aTableName, '].[', @Index_name, ']');
				EXEC sp_rename @OldValueIndex, @name , N'INDEX';
			END
			SET @i=@i+1;
		END
	END
	ELSE
	BEGIN
		SELECT @msg= 'No indexes found for table '+@aTableName;
		EXEC LOGGER$log @msg, 0;
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$prepare_table
-- Description : This procedure is used to copy all constraints (foreign keys and unique)
--               from source to destination table.
-- Input       : tableName - the name of staging table
-- Example     : EXEC STAGING_DDL$prepare_table 'constraints', 'STAGINGPROCESSCOMPONENT'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$prepare_table
(
	@aTableName			VARCHAR(256),
	@aEnfinityVersion	VARCHAR(4000)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @aTable							STAGING$type_staging_table_ROWTYPE,
			@tableName						VARCHAR(300)= upper(@aTableName),
			@table$1						VARCHAR(300),
			@table$2						VARCHAR(300),
			@constraints					DDL$type_constraints,
			@live_table						VARCHAR(200),
			@STAGING_type_switch_synonyms	STAGING$type_switch_synonyms,
			@stmt							varchar(max),
			@stmt_comment					varchar(max),
			@count							INT,
			@i								INT=1,
			@stmt_enftab					VARCHAR(2000),
			@preparationflag				INT,
			@msg							VARCHAR(MAX),
			@atable_def						VARCHAR(MAX),
			@sql_query						NVARCHAR(MAX),
			@suffix							VARCHAR(250),
			@shadowSuffix					VARCHAR(250),
			@schemaName						VARCHAR(256) = SCHEMA_NAME(),
			@constraintsList				DDL$type_constraints;

	DECLARE @Table_defination TABLE
	(
		Table_defination	VARCHAR(MAX)
	)

        EXEC LOGGER$log @aTableName, 0
        
	INSERT INTO @STAGING_type_switch_synonyms
		SELECT @tableName

	INSERT INTO  @atable
		EXEC STAGING$get_staging_table @STAGING_type_switch_synonyms
		
	SELECT @suffix= LIVETABLENAMESUFFIX FROM @atable
	SELECT @preparationflag=preparationflag FROM @aTable

	IF @preparationflag=1
	BEGIN
		SELECT @msg='Staging table '+ISNULL(@aTableName, '')+' is already prepared!';
		EXEC  LOGGER$log @msg, 0
	END

	SELECT @table$1=dbo.STAGING$get_table_name(@tablename,@suffix);

	IF @suffix='$1' 
           BEGIN
		SET @table$2 = dbo.STAGING$get_table_name(@tableName, '$2');
		SET @shadowSuffix = '$2'
	   END	
        ELSE
            BEGIN
		SET @table$2 = dbo.STAGING$get_table_name(@tableName, '$1');
		SET @shadowSuffix = '$1'
	    END
            
	IF dbo.DDL$is_synonym(@tableName) = 1
	BEGIN
		EXEC LOGGER$log 'Staging environment already exists. Restore original table first...', 0;
		EXEC STAGING_DDL$restore_table @tableName;
	END

	EXEC LOGGER$log 'Staging environment does not exists. Starting creating it...', 0;
	EXEC  dbo.STAGING_DDL$rename_table @tableName, @suffix;
	EXEC DDL$drop_table @table$2 ;

	INSERT INTO @Table_defination
	EXEC	dbo.sp_GetDDL @table$1

	SELECT @atable_def = Table_defination FROM @Table_defination
	SELECT  @atable_def = REPLACE(@atable_def,@table$1, @table$2);
	SELECT  @atable_def = REPLACE(@atable_def,@suffix, @shadowSuffix);

        EXEC LOGGER$log 'Create second staging table'
        EXEC LOGGER$log @atable_def
        EXEC SQL_UTIL$executeDDL @atable_def

	IF @atable_def LIKE '%CREATE TABLE%' 
	BEGIN
                        -- log all time to
			EXEC LOGGER$log 'Copy indexes of table'
			EXEC LOGGER$log @table$1
			EXEC LOGGER$log @table$2

        		EXEC STAGING_DDL$copy_indexes @table$1, @table$2
	END

	SELECT @sql_query='  MERGE INTO ' + @schemaName + '.enfinitytable d
                USING (
                        SELECT ''_table$1_'' AS tableName, ''_version_'' AS version, cartridgeName, category, comments, oca
                            FROM ' + @schemaName + '.enfinitytable
                            WHERE UPPER(tableName) = UPPER(''_table_'')
                            AND UPPER(version)   = UPPER(''_version_'')
                            UNION
                        SELECT ''_table$2_'' AS tableName, ''_version_'' AS version, cartridgeName, category, comments, oca
                            FROM ' + @schemaName + '.enfinitytable
                            WHERE UPPER(tableName) = UPPER(''_table_'')
                            AND UPPER(version)   = UPPER(''_version_'')
                        ) s
                    ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
                    WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, category, version, lastModified, comments, oca)
                                        VALUES (s.tableName, s.cartridgeName, s.category, s.version, getdate(), s.comments, s.oca)
                ;'

	SELECT @sql_query = REPLACE(@sql_query, '_table$1_',  @table$1);
    SELECT @sql_query = REPLACE(@sql_query, '_table$2_',  @table$2);
    SELECT @sql_query = REPLACE(@sql_query, '_table_',    @tableName);
    SELECT @sql_query = REPLACE(@sql_query, '_version_',  @aEnfinityVersion);
	EXECUTE SQL_UTIL$execute3 @sql_query
	
	SELECT @sql_query= 'DELETE FROM ' + @schemaName + '.enfinitytable WHERE UPPER(tableName) = UPPER(''_table_'') AND version = ''_version_''';

	SELECT @sql_query= REPLACE(@sql_query, '_table_',   @tableName);
	SELECT @sql_query = REPLACE(@sql_query, '_version_', @aEnfinityVersion);
	EXECUTE SQL_UTIL$execute3 @sql_query
	SELECT @sql_query = CONCAT('UPDATE ', @schemaName, '.STAGINGTABLE SET PREPARATIONFLAG = 1, OCA = OCA + 1, LASTMODIFIED = GETDATE() WHERE TABLENAME = UPPER(''', @aTableName, ''')');
	EXECUTE SQL_UTIL$execute3 @sql_query
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$prepare_staging_table
-- Description : This procedure is used to prepare all staging tables.
-- Input       : log_behaviour - the log behaviour
--               aEnfinityVersion - the enfinity version number
-- Example     : EXEC STAGING_DDL$prepare_staging_table 'Domain', '', '0'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$prepare_staging_table
(
	@aTableName         VARCHAR(256),
	@aEnfinityVersion   VARCHAR(256),
	@log_behaviour		INT = 1
)
AS
BEGIN
	SET NOCOUNT ON;

	EXEC SQL_UTIL$set_log_behaviour @log_behaviour;
	EXEC STAGING_DDL$prepare_table  @aTableName, @aEnfinityVersion;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$prepare_staging_tables
-- Description : This procedure is used to prepare all staging tables.
-- Input       : log_behaviour - the log behaviour
--               aEnfinityVersion - the enfinity version number
-- Example     : exec STAGING_DDL$prepare_staging_tables
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$prepare_staging_tables
(
	@aEnfinityVersion   VARCHAR(256),
	@log_behaviour		INT = 1
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sql_query		 NVARCHAR(4000),
			@table_list		 DDL$type_object_name_list,
			@count			INT,
			@i				INT;

	EXEC SQL_UTIL$set_log_behaviour @log_behaviour;

	INSERT INTO @table_list 
		SELECT tableName  FROM STAGINGTABLE(NOLOCK) ORDER BY 1;

	SELECT @count = COUNT(1) FROM @table_list;

	IF @count = 0 
	BEGIN
		EXEC LOGGER$log 'No unprepared staging tables found.', 0;
		RETURN;
	END;
	WHILE(@i < @count)
	BEGIN
		DECLARE @table_name varchar(256);
		SELECT @table_name =objectname FROM @table_list WHERE row = @i;
		EXEC STAGING_DDL$prepare_table  @table_name , @aEnfinityVersion;
		SELECT @i = @i+1;
	END	
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$copy_named_constraints
-- Description : This procedure is used to copy all constraints (foreign keys and unique)
--               from source to destination table.
-- Input       : tableName - the name of staging table
-- Example     : EXEC STAGING_DDL$copy_named_constraints 'constraints', '', 'STAGINGPROCESSCOMPONENT'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$copy_named_constraints
(
	@constraints	DDL$type_constraints READONLY,
	@srcTableName	VARCHAR(4000) ,
	@dstTableName	VARCHAR(4000)
)
AS
BEGIN
	--SELECT dbo.STAGING$get_constraint_name('PK_DOMAIN_uuid', 'DOMAIN')
	SET NOCOUNT ON;
	DECLARE @stmt		NVARCHAR(3000),
	@script				NVARCHAR(4000),
	@count				INT,
	@i					INT=1,
	@constraintsList	DDL$type_constraints;
		
	--select * from @constraints
	-- -- remove all foreign keys of destination table
	INSERT INTO @constraintsList
		EXEC DDL$get_constraints @dstTableName,'F',''

	EXEC DDL$drop_constraints  @constraintsList
		
	-- remove all unique constraints of destination table
	INSERT INTO @constraintsList
		EXEC dbo.DDL$get_constraints @dstTableName,'UQ',''

	-- remove all PRIMARY constraints of destination table
	INSERT INTO @constraintsList
		EXEC DDL$get_constraints @dstTableName,'PK',''

	EXEC DDL$drop_constraints  @constraintsList

	SELECT @count=COUNT(1) FROM @constraints
	IF @count > 0
	BEGIN
		WHILE(@I <= @count)
		BEGIN
			--get all key of source table (primay key and unique key)
			SELECT @script = dbo.GetPrimaryKey(@srcTableName)
			--ALTER TABLE [dbo].[STAGINGPROCESSCOMPONENT] ADD CONSTRAINT [SYS_C0010138] PRIMARY KEY CLUSTERED(STAGINGPROCESSID ASC, STAGINGGROUPID ASC, STAGINGDOMAINID ASC)  WITH (PAD_INDEX = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, SORT_IN_TEMPDB = OFF, FILLFACTOR =0) ON [PRIMARY];
			SELECT @script = REPLACE(@script,@srcTableName,@dstTableName)
			EXECUTE SQL_UTIL$execute3 @script

			SELECT @script = dbo.GetForeignKey(@srcTableName)
			SELECT @script = REPLACE(@script,@srcTableName,@dstTableName)
			EXECUTE SQL_UTIL$execute3  @script

			SELECT @i=@i+1;
		END
	END
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$prepare_constraints
-- Description : This procedure is used to prepare constraints.
-- Input       : tableName - the name table
--
-- Example     : EXEC dbo.STAGING_DDL$prepare_constraints 'DOMAIN'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$prepare_constraints
(
	@aTableName	VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@aTable					STAGING$type_staging_table_ROWTYPE,
	@tableName						VARCHAR(256) = UPPER(@aTableName),
	@table$1						VARCHAR(256),
	@table$2						VARCHAR(256),
	@constraints					DDL$type_constraints,
	@live_table						VARCHAR(256),
	@STAGING_type_switch_synonyms	STAGING$type_switch_synonyms;	
		
	INSERT INTO @STAGING_type_switch_synonyms
		SELECT @tableName

	INSERT INTO  @atable
		EXEC STAGING$get_staging_table @STAGING_type_switch_synonyms
		
	SELECT @live_table = LIVETABLENAMESUFFIX FROM @aTable

	SELECT @table$1 = dbo.STAGING$get_table_name(@tablename,@live_table);
		
	IF @live_table='$1' 
		SET  @table$2 = dbo.STAGING$get_table_name(@tableName, '$2');
	ELSE
		SET @table$2 = dbo.STAGING$get_table_name(@tableName, '$1');
     
	INSERT INTO @constraints
		EXEC dbo.DDL$get_constraints @aTableName, NULL,''

	EXEC STAGING_DDL$copy_named_constraints @constraints, @table$1, @table$2
		
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$prepare_stg_tables_constraints
-- Description : This procedure is used to prepare all staging tables.
-- Input       : log_behaviour - the log behaviour
--               aEnfinityVersion - the enfinity version number
-- Example     : EXEC STAGING_DDL$prepare_stg_tables_constraints 0
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$prepare_stg_tables_constraints
(
	@log_behaviour		INT =1
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sql_query	NVARCHAR(4000),
			@table_list	DDL$type_object_name_list,
			@count		INT,
			@query		NVARCHAR(500),
			@i			INT;

	EXEC SQL_UTIL$set_log_behaviour @log_behaviour;
	SET @query = CONCAT('SELECT tableName  FROM ', SCHEMA_NAME(),'.STAGINGTABLE ORDER BY 1');
	INSERT INTO @table_list 
		EXEC SQL_UTIL$execute3 @query;

	SELECT @count = COUNT(1) FROM @table_list;

	IF @count=0 
	BEGIN
		EXEC LOGGER$log 'No unprepared staging tables found.', 0;
		RETURN;
	END ;		
	WHILE(@i<@count)
	BEGIN
		DECLARE @table_name VARCHAR(256);
		SELECT @table_name = objectname FROM @table_list WHERE row=@i;
		EXEC STAGING_DDL$prepare_constraints @table_name;
		SELECT @i = @i+1;
	END

END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$prepare_stg_table_constraints
-- Description : This procedure is used to prepare all staging tables.
-- Input       : log_behaviour - the log behaviour
--               aEnfinityVersion - the enfinity version number
-- Example     : EXEC STAGING_DDL$prepare_stg_table_constraints 'DOMAIN', 0
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$prepare_stg_table_constraints
(
	@aTableName       VARCHAR(256),
	@log_behaviour		INT =1
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sql_query	NVARCHAR(4000),
			@table_list	DDL$type_object_name_list,
			@count		INT,
			@i			INT;	

	EXEC SQL_UTIL$set_log_behaviour @log_behaviour;

	EXEC STAGING_DDL$prepare_constraints @aTableName;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$replace_ref_table
-- Description : This procedure is used in procedure STAGING_DDL$add_constraint.
-- Input       : clause          - the constraint clause
--               suffic          - the suffix, if any needto be used.
-- Example     : SELECT dbo.STAGING_DDL$replace_ref_table ('FOREIGN KEY (domainid) REFERENCES domain(uuid)','')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING_DDL$replace_ref_table
(
	@clause VARCHAR(4000),
	@suffix VARCHAR(4000)
)
RETURNS VARCHAR(2000)
AS
BEGIN
	DECLARE @ref_tab VARCHAR(256),
			@ref_tab_clause_part VARCHAR(2000);

	-- split into ref tab and ref tab + part
	DECLARE @msg_tab VARCHAR(3000)
	SELECT @msg_tab =SUBSTRING(@clause, CHARINDEX('REFERENCES', @clause), LEN(@clause)) 
	SELECT @ref_tab_clause_part=SUBSTRING(@msg_tab, 0, CHARINDEX('(', @msg_tab) + 1)
	SELECT @ref_tab=SUBSTRING(@msg_tab, CHARINDEX('REFERENCES', @msg_tab) + LEN('REFERENCES') , LEN(@msg_tab) - CHARINDEX('(', @msg_tab) + 2) 
	-- only set $1/2 part for ref table if ref tab is also a staging table
	IF dbo.STAGING$is_prepared(@ref_tab) =1
	BEGIN
		SET @clause = REPLACE
							(
								@clause,
								@ref_tab_clause_part,
								REPLACE(@ref_tab_clause_part, @ref_tab, dbo.STAGING$get_table_name(@ref_tab, @suffix))
							);
	END 
	RETURN @clause
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$add_constraint
-- Description : This procedure is used to add a constraint on a table with given name.
--               If table is a staging table and it is prepared, the constraint is added
--               to both tables ending with '$1' and '$2'. In case of a simple table the
--               constraint is added directly.
-- Input       : table_name      - the name of table
--               constraint_name - the name of constraint
--               clause          - the constraint clause
-- Example     : EXEC dbo.STAGING_DDL$add_constraint 'domain$1', 'BASICADDRESS_CO001', 'FOREIGN KEY (domainid) REFERENCES domain(uuid)'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$add_constraint
(
	@table_name			VARCHAR(256),
	@constraint_name	VARCHAR(256),
	@clause				VARCHAR(4000)
)
AS
BEGIN
	DECLARE @l_clause VARCHAR(2000) = @clause,
			@n VARCHAR(4000),
			@aConstraintName VARCHAR(100) = @constraint_name;

	IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
		SET @n = dbo.STAGING$get_table_name(@table_name, '$1');
		SET @l_clause =  dbo.STAGING_DDL$replace_ref_table(@l_clause, '$1');

		SELECT @aConstraintName =dbo.STAGING$get_constraint_name(@constraint_name, @n);
		EXEC DDL$migrate_constraint @n, @aConstraintName, @l_clause;

		SET @n = dbo.STAGING$get_table_name(@table_name, '$2');
		SET @l_clause = dbo.STAGING_DDL$replace_ref_table(@l_clause, '$2');

		SELECT @aConstraintName =dbo.STAGING$get_constraint_name(@constraint_name, @n);
		EXEC DDL$migrate_constraint @n, @aConstraintName, @l_clause;
	END
	ELSE 
	BEGIN
		EXEC DDL$migrate_constraint @table_name, @aConstraintName, @l_clause;
	END 
END
GO
------------------------------------------------------------------------
-- Name        : STAGING_DDL$get_constraints 
-- Description : This method returns a list of object names returned
--               by given query.
-- Input       : query     - the object name query
--               @aTableName - a TABLE value
-- Output      : the list of object names
--Example	   : EXEC dbo.STAGING_DDL$get_constraints 'ABCDEMO1',','
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$get_constraints
(
	@aTableName VARCHAR(100),
	@cons_type  VARCHAR(200) = ''
)
AS
BEGIN
	SET NOCOUNT ON;
	EXECUTE DDL$get_constraints @aTableName, @cons_type, '';
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_staging_table
-- Description : This procedure is used to drop a table of a normal or staging table.
--               In second case the table is dropped as $1 as well as $2 table.
-- Input       : table_name  - the name of table or (for staging) the synonym name
-- Example     : EXEC dbo.STAGING_DDL$drop_staging_table 'ABCDEMO1'
--Comment	   : Will thow exception if supplied parameter have dependencies on other object	
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$drop_staging_table
(
	@table_name	VARCHAR(256)
)
AS
BEGIN
	DECLARE @sql_query NVARCHAR(4000),
			@tableName VARCHAR(200);
	IF dbo.STAGING$is_prepared(@table_name)=1
	BEGIN
		SELECT @tableName = dbo.STAGING$get_table_name(@table_name,'$1');
		EXEC dbo.DDL$drop_table @tableName;

		SELECT @tableName = dbo.STAGING$get_table_name(@table_name,'$2');
		EXEC dbo.DDL$drop_table @tableName;

		SELECT @tableName = dbo.STAGING$get_table_name(@table_name,'$S');
		EXEC dbo.DDL$drop_view @tableName;

		EXEC dbo.DDL$drop_synonym @table_name;
	END
	ELSE
	BEGIN
		EXEC dbo.DDL$drop_table @table_name;
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_column
-- Description : This procedure is used to drop a column of a normal or staging table.
--               In second case the column is dropped in $1 as well as $2 table.
-- Input       : table_name  - the name of table or (for staging) the synonym name
--               column_name - the name of column to be dropped
-- Example     : EXEC dbo.STAGING_DDL$drop_column 'ABCDEMO', 'ID'
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$drop_column
(
	@table_name		VARCHAR(256),
	@column_name	VARCHAR(256)
)
AS
BEGIN
	DECLARE @sql_query NVARCHAR(4000);			
	IF dbo.STAGING$is_prepared(@table_name)=1
	BEGIN
		IF EXISTS(SELECT TOP 1 1 FROM INFORMATION_SCHEMA.COLUMNS  WHERE [TABLE_NAME] = @table_name AND [COLUMN_NAME] = @column_name)
		BEGIN
			SET @sql_query=CONCAT('ALTER TABLE ',dbo.STAGING$get_table_name(@table_name,'$1'),SPACE(1),'DROP COLUMN  ', @column_name);
			EXECUTE SP_EXECUTESQL @sql_query;

			SET @sql_query=CONCAT('ALTER TABLE ',dbo.STAGING$get_table_name(@table_name,'$2'),SPACE(1),'DROP COLUMN  ', @column_name);
			EXECUTE SQL_UTIL$execute3 @sql_query;
		END
	END
	ELSE
	BEGIN
		IF EXISTS(SELECT TOP 1 1 FROM INFORMATION_SCHEMA.COLUMNS  WHERE [TABLE_NAME] = @table_name AND [COLUMN_NAME] = @column_name)
		BEGIN
			SET @sql_query=CONCAT('ALTER TABLE ',@table_name,SPACE(1),'DROP COLUMN ',@column_name);
			EXECUTE SQL_UTIL$execute3 @sql_query;
		END
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : drop_index
-- Description : This procedure is used to drop an index of a normal or staging table.
--               In second case the index is dropped for $1 as well as $2 table.
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
-- Example     : EXEC dbo.STAGING_DDL$drop_constraint 'CK_ABCDEMO1', 'ABCDEMO1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$drop_constraint
(
	@constraint_name	VARCHAR(4000),
	@table_name			VARCHAR(256)
)
AS
BEGIN
	DECLARE @sql_query NVARCHAR(4000),
	@tab VARCHAR(200),
	@con VARCHAR(200)
		
	IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
		SELECT @tab=dbo.STAGING$get_table_name(@table_name, '$1');
		SELECT @con=dbo.STAGING$get_constraint_name(@constraint_name, @tab);
		
		IF dbo.DDL$is_object_exists(@con, 'D') = 1 OR dbo.DDL$is_object_exists( @con, 'F') = 1
		BEGIN
			SET @sql_query=CONCAT('ALTER TABLE   ', @tab,SPACE(1),' DROP CONSTRAINT ', @con);
			EXECUTE SP_EXECUTESQL @sql_query;
        END
		
        IF dbo.DDL$is_object_exists(@constraint_name, 'D') = 1 OR dbo.DDL$is_object_exists( @constraint_name, 'F') = 1
        BEGIN
			SET @sql_query=CONCAT('ALTER TABLE   ', @tab,SPACE(1),' DROP CONSTRAINT ', @constraint_name);
			EXECUTE SP_EXECUTESQL @sql_query;
		END

		SELECT @tab=dbo.STAGING$get_table_name(@table_name,'$2');
		SELECT @con=dbo.STAGING$get_constraint_name(@constraint_name, @tab);

		IF dbo.DDL$is_object_exists(@con, 'D') = 1 OR dbo.DDL$is_object_exists( @con, 'F') = 1
		BEGIN
			SET @sql_query=CONCAT('ALTER TABLE   ',@tab,SPACE(1),' DROP CONSTRAINT ',@con);
			EXECUTE SP_EXECUTESQL @sql_query;
		END
		
		IF dbo.DDL$is_object_exists(@constraint_name, 'D') = 1 OR dbo.DDL$is_object_exists( @constraint_name, 'F') = 1
		BEGIN
			SET @sql_query=CONCAT('ALTER TABLE   ', @tab,SPACE(1),' DROP CONSTRAINT ', @constraint_name);
			EXECUTE SP_EXECUTESQL @sql_query;
		END
	END
	ELSE
	BEGIN
		IF dbo.DDL$is_object_exists(@table_name, 'U') = 1 AND (dbo.DDL$is_object_exists(@constraint_name, 'D') = 1 OR dbo.DDL$is_object_exists( @constraint_name, 'F') = 1)
		BEGIN
			SET @sql_query=CONCAT('ALTER TABLE ', @table_name,SPACE(1), ' DROP CONSTRAINT ', @constraint_name);
			EXECUTE SP_EXECUTESQL @sql_query;		
		END            
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : drop_index
-- Description : This procedure is used to drop an index of a normal or staging table.
--               In second case the index is dropped for $1 as well as $2 table.
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
-- Example     : EXEC dbo.STAGING_DDL$drop_index 'NonClusteredIndex-20170824-183202', 'tESTcLOB'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$drop_index
(
	@index_name		VARCHAR(256),
	@table_name		VARCHAR(256)
)
AS
BEGIN
	DECLARE @sql_query NVARCHAR(4000);

	SET @sql_query=CONCAT('DROP INDEX IF EXISTS ', dbo.STAGING$get_index_name(@index_name, @table_name, ''), SPACE(1), 'ON ', @table_name);
	EXECUTE SQL_UTIL$execute3 @sql_query;

	SET @sql_query=CONCAT('DROP INDEX  IF EXISTS ', dbo.STAGING$get_index_name(@index_name, @table_name, '$1'), SPACE(1), 'ON ', @table_name);
	EXECUTE SQL_UTIL$execute3 @sql_query;

	SET @sql_query=CONCAT('DROP INDEX  IF EXISTS ', dbo.STAGING$get_index_name(@index_name, @table_name, '$2'), SPACE(1), 'ON ', @table_name);
	EXECUTE SQL_UTIL$execute3 @sql_query;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_ctx_indexes
-- Description : This procedure is used to drop all context index of a normal or staging table.
--               In second case the index is dropped for $1 as well as $2 table.
-- Input       : table_name  - the name of table or (for staging) the synonym name
-- Example     : EXEC STAGING_DDL$drop_ctx_indexes 'testClob'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$drop_ctx_indexes
(
	@table_name	VARCHAR(256)
)
AS
BEGIN
	DECLARE @tableName VARCHAR(256);
	EXEC DDL$drop_ctx_indexes @table_name;

	SELECT @tableName = dbo.STAGING$get_table_name(@table_name, '$1');
	EXEC DDL$drop_ctx_indexes @tableName;

	SELECT @tableName = dbo.STAGING$get_table_name(@table_name, '$2');
	EXEC DDL$drop_ctx_indexes @tableName;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_Foreign_key
-- Description : Drops primary key of given table. If given table is a staging table the
--               primary key of both $ tables is dropped, otherwise the original primary
--               key is dropped.
-- Input       : table_name - name of table
-- Output      : none
-- Example     : exec STAGING_DDL$drop_Foreign_key 'DOMAIN'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$drop_Foreign_key
(
	@table_name		VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @stmt VARCHAR(300);
 
	-- Cursor to generate ALTER TABLE DROP CONSTRAINT statements  
	DECLARE cur CURSOR FOR
	SELECT CONCAT('ALTER TABLE ', OBJECT_SCHEMA_NAME(parent_object_id), '.', OBJECT_NAME(parent_object_id), ' DROP CONSTRAINT ', name)
	FROM sys.foreign_keys 
	WHERE OBJECT_NAME(referenced_object_id) = @table_name;
	OPEN cur;
	FETCH cur INTO @stmt;
	-- Drop each found foreign key constraint 
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC (@stmt);
		FETCH cur INTO @stmt;
	END
 
	CLOSE cur;
	DEALLOCATE cur;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_primary_key
-- Description : Drops primary key of given table. If given table is a staging table the
--               primary key of both $ tables is dropped, otherwise the original primary
--               key is dropped.
-- Input       : table_name - name of table
-- Output      : none
-- Example     : EXEC dbo.STAGING_DDL$drop_primary_key 'abcdemo1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$drop_primary_key
(
	@table_name		VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sql_query NVARCHAR(4000),
			@name	   VARCHAR(400);

	EXEC STAGING_DDL$drop_Foreign_key @table_name

	SELECT @name = [name] FROM sys.key_constraints WHERE  [type] = 'PK' AND [parent_object_id] = Object_id(@table_name) --AND [name] NOT LIKE 'SYS_%' ;			

	IF  @name IS NOT NULL
	BEGIN
		IF dbo.STAGING$is_prepared(@table_name)=1 
		BEGIN
			SET @sql_query = CONCAT('ALTER TABLE ', dbo.STAGING$get_table_name(@table_name, '$1'), SPACE(1), ' DROP CONSTRAINT ', @name);
			EXECUTE SP_EXECUTESQL @sql_query;

			SET @sql_query = CONCAT('ALTER TABLE ', dbo.STAGING$get_table_name(@table_name, '$2'), SPACE(1), ' DROP CONSTRAINT ', @name);
			EXECUTE SP_EXECUTESQL @sql_query;
		END
		ELSE
		BEGIN
			SET @sql_query = CONCAT('ALTER TABLE ', @table_name, SPACE(1), ' DROP CONSTRAINT ', @name);
			EXECUTE SP_EXECUTESQL @sql_query;
		END
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : alter_table
-- Description : alters given table(s). Depending on table is a staging table
--               the update statement will be performed in $1/$2 table.
-- Input       : table_name - name of table
--               modify_clause - the update clause
--               ignoreErrorCode - the error which should be ignored.
-- Example     : EXEC dbo.STAGING_DDL$alter_table 'abcdemo1', 'ALTER COLUMN A NUMERIC(13) NOT NULL'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$alter_table
(
	@table_name			VARCHAR(256),
	@alter_clause		VARCHAR(4000),
	@ignoreErrorCode	VARCHAR(4000) = -1451
)
AS
BEGIN
	DECLARE @sql_query NVARCHAR(4000);
	SET @sql_query = CONCAT('ALTER TABLE ', @table_name, SPACE(1), @alter_clause);
	EXECUTE SQL_UTIL$execute3 @sql_query;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$get_indexes
-- Description : This function returns true if given object is an synonym.
-- Input       : aObjectName - the object name
-- Output      : true if given object is a synonym
-- Example     : exec STAGING_DDL$get_indexes 'domain'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$get_indexes
(
	@tableName varchar(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	EXEC DDL$get_indexes @tableName, ''
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$is_synonym
-- Description : This function returns true if given object is an synonym.
-- Input       : aObjectName - the object name
-- Output      : true if given object is a synonym
-- Example     : SELECT  dbo.STAGING_DDL$is_synonym('MyProduct')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING_DDL$is_synonym
(
	@objectName VARCHAR(100)
)
RETURNS  INT
AS
BEGIN
	DECLARE @i INT
	SELECT @i = COUNT(*) FROM  sys.synonyms WHERE name = UPPER(@objectName)

	RETURN 
		CASE 
			WHEN @i > 0 THEN
				1
			ELSE
				0
		END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$create_index
-- Description : This procedure is used to create an index for a normal or staging table.
--               In second case the index is created for $1 as well as $2 table.
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
--               columns_def - the list of indexed columns
--               tablespace  - the tablespace of index
--               uniqueness  - uniqueness of index, values UNIQUE or NONUNIQUE, default is NONUNIQUE
--               recreate    - is '1' if index should be dropped before
--               clustered   - clustered/unclustered option
-- Example     : EXEC STAGING_DDL$create_index 'ServiceLineItem_FK003', 'ABCDEMO', '(ID)', '', 'NONCLUSTERED'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$create_index
(			
	@index_name		VARCHAR(256),
	@table_name		VARCHAR(256),
	@columns_def	VARCHAR(256),
	@tableSpace		VARCHAR(256),
	@uniqueness		VARCHAR(256)  = 'NONUNIQUE',
	@recreate		VARCHAR(256)  = '',
	@clustered      VARCHAR(100)  = 'NONCLUSTERED'
)
AS
BEGIN
	DECLARE @def			DDL$type_object_name_list,
			@dymmy			INT,
			@idx_name		VARCHAR(256),
			@atable_name	VARCHAR(256);

	IF @recreate = 1 
	BEGIN
		EXEC STAGING_DDL$drop_index @index_name, @table_name;
	END

	IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
		SELECT	@idx_name		= dbo.STAGING$get_index_name(@index_name, @table_name, '$1')
		SELECT	@atable_name	= dbo.STAGING$get_table_name(@table_name, '$1')
		EXEC	DDL$migrate_index @idx_name, @atable_name ,@columns_def, @tablespace, @uniqueness, @clustered;

		SELECT	@idx_name		= dbo.STAGING$get_index_name(@index_name, @table_name, '$2')
		SELECT	@atable_name	= dbo.STAGING$get_table_name(@table_name, '$2')
		EXEC    DDL$migrate_index @idx_name, @atable_name,@columns_def, @tablespace, @uniqueness, @clustered;
	END
	ELSE
	BEGIN
		EXEC    DDL$migrate_index @index_name, @table_name,@columns_def, @tablespace, @uniqueness, @clustered;
	END

END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_index_on 
-- Description : This procedure is used to drop an index of a normal or staging table.
--               In second case the index is dropped for $1 as well as $2 table.
-- Input       : tab_name - the name of table or (for staging) the synonym name
--               col_name - the name of column with index to be dropped
--               col_pos  - the position of column in index (default = 1)
-- Example     : EXEC STAGING_DDL$drop_index_on 'testClob', 'a' 
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$drop_index_on 
(
	@tab_name VARCHAR(256),
	@col_name VARCHAR(256),
	@col_pos  INT = 1
)
AS
BEGIN
	DECLARE @cols			DDL$type_object_name_list,
			@count			INT,
			@tablename		VARCHAR(256),
			@stmt			VARCHAR(256),
			@name			VARCHAR(256);

	IF dbo.STAGING$is_prepared(@tab_name) = 1
	BEGIN
		SELECT @tablename=dbo.STAGING$get_table_name(@tab_name, '$1')
		EXEC  STAGING_DDL$drop_index_on @tablename, @col_name, @col_pos;

		SELECT @tablename=dbo.STAGING$get_table_name(@tab_name, '$2')
		EXEC STAGING_DDL$drop_index_on @tablename, @col_name, @col_pos;
	END
	ELSE
	BEGIN
		SELECT @name = i.name  FROM sys.indexes AS i  
		INNER JOIN sys.index_columns AS ic   
		ON i.object_id = ic.object_id AND i.index_id = ic.index_id  
		WHERE i.object_id = OBJECT_ID(@tab_name)
		and COL_NAME(ic.object_id,ic.column_id) = @col_name and key_ordinal=@col_pos
		IF LEN(@name) > 0
		BEGIN
		
			SELECT @stmt = CONCAT('DROP INDEX IF EXISTS ', @name, ' ON ', @tab_name);
			PRINT @stmt
			EXEC SQL_UTIL$execute @stmt, 0;
		END
	END ;

	IF(@@ROWCOUNT=0)
	BEGIN
		SELECT @stmt='Index on '+@tab_name+'('+@col_name+') already dropped.';
		EXEC  LOGGER$log @stmt, 0;
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$get_tab_columns
-- Description : This function returns true if given object is an synonym.
-- Input       : aObjectName - the object name
-- Output      : true if given object is a synonym
-- Example     : EXEC STAGING_DDL$get_tab_columns 'domain'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$get_tab_columns
(
	@tableName varchar(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	IF (SELECT COUNT(1) from  DDL$get_tab_columns(@tableName)) > 0 
		SELECT * from  DDL$get_tab_columns(@tableName)
	ELSE
	BEGIN
		SELECT * from  DDL$get_tab_columns(dbo.STAGING$get_table_name(@tableName, '$1'))
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$create_primary_key
-- Description : Creates a new primary key consisting of given columns. If given table is
--               a staging table the primary key of both $ tables is created, otherwise
--               the original primary key is created.
-- Input       : table_name  - name of table
--               columns_def - the definition of columns
-- Output      : none
-- Example     : EXEC dbo.STAGING_DDL$create_primary_key 'abcdemo1', '(a)'
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$create_primary_key
(
	@table_name		VARCHAR(256) ,
	@columns_def	VARCHAR(4000)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @sql_query NVARCHAR(4000),
			@name	   VARCHAR(400);

	EXEC  STAGING_DDL$drop_primary_key @table_name		
	SELECT @name=REPLACE(REPLACE(REPLACE(@columns_def,'(',''),')',''),', ','_')
	
	IF dbo.STAGING$is_prepared(@table_name)=1
	BEGIN
		SET @sql_query=CONCAT('ALTER TABLE ',dbo.STAGING$get_table_name(@table_name, '$1'),SPACE(1),' ADD CONSTRAINT ','PK_',@table_name,'_',@name,' PRIMARY KEY CLUSTERED  ',@columns_def);
		EXECUTE SQL_UTIL$execute3 @sql_query;

		SET @sql_query=CONCAT('ALTER TABLE ',dbo.STAGING$get_table_name(@table_name, '$2'),SPACE(1),' ADD CONSTRAINT ','PK_',@table_name,'_',@name,' PRIMARY KEY CLUSTERED  ',@columns_def);
		EXECUTE SQL_UTIL$execute3 @sql_query;
	END
	ELSE
	BEGIN
		SET @sql_query=CONCAT('ALTER TABLE ',@table_name,SPACE(1),' ADD CONSTRAINT ','PK_',@table_name,'_',@name,' PRIMARY KEY CLUSTERED  ',@columns_def);
		EXECUTE SQL_UTIL$execute3 @sql_query;
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : copy_comment
-- Description : This procedure copies the database comment from table$1 to table$2.
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$copy_comment
(
	@table$1 VARCHAR(256),
	@table$2 VARCHAR(256)
)
AS
BEGIN
	BEGIN TRY
		DECLARE @comments	NVARCHAR(300),
				@schema		NVARCHAR(256);
		
		SELECT  @schema = TABLE_SCHEMA, @comments = CAST(ex2.value AS NVARCHAR(300)) FROM INFORMATION_SCHEMA.Tables 
		LEFT JOIN sys.extended_properties ex2 ON ex2.major_id = Object_id(TABLE_NAME) AND ex2.name = 'MS_Description' WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME = @table$1;

		IF @comments IS NOT NULL 
		BEGIN
			EXEC sys.sp_addextendedproperty 
				@name = N'MS_Description', 
				@value = @comments, 
				@level0type = N'SCHEMA', @level0name = @schema, 
				@level1type = N'TABLE',  @level1name = @table$2;
		END
	END TRY
	BEGIN CATCH
		--Empty catch block as this is not required to be logged.
	END CATCH
END
GO
------------------------------------------------------------------------------------------
-- Name        : get_cs_string
-- Description : This function returns a string representation of give object name list.
-- Input       : list   - a list of object names
--               prefix - the prefix used in comma separated list for each column
-- Output      : string representation of given list
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING_DDL$get_cs_string
(
	@list DDL$type_object_name_list READONLY,
	@prefix VARCHAR(256) = NULL
)
RETURNS VARCHAR(4000)
BEGIN
	DECLARE @count		INT,
			@counter	INT = 1,
			@result		VARCHAR(4000),
			@value		VARCHAR(256);
	SELECT @count = COUNT(1) FROM @list
	WHILE @counter <= @count
	BEGIN
		SELECT @value = objectName FROM @list WHERE row = @counter
		SET @result = CONCAT(@result, ',', @value)
		SET @counter = @counter + 1
	END 
    -- cut first character and return the string
    RETURN SUBSTRING(@result, 2, LEN(@result));
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$join_columns
-- Description : This function returns a string representing a join between given column
--               lists
-- Input       : prefix1 - the prefix of first column list
--               cols1 - a list of column names
--               prefix2 - the prefix of second column list
--               cols2 - a list of column names
-- Output      : string representation of join
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING_DDL$join_columns
(
	@prefix1 VARCHAR(256),
	@cols1 DDL$type_object_name_list READONLY,
    @prefix2 VARCHAR(256),
	@cols2 DDL$type_object_name_list READONLY
)
RETURNS VARCHAR(4000)
AS
BEGIN
	DECLARE @count		INT,
			@count2		INT,
			@counter	INT = 1,
			@result		VARCHAR(4000),
			@value		VARCHAR(256),
			@value2		VARCHAR(256);
	
	SELECT @count = COUNT(1) FROM @cols1
	SELECT @count2 = COUNT(1) FROM @cols2

	IF @count = @count2 AND @count > 0
	BEGIN
		WHILE(@counter <= @count)
		BEGIN
			SELECT @value = objectName FROM @cols1 WHERE row = @counter
			SELECT @value2 = objectName FROM @cols2 WHERE row = @counter
			SET @result = CONCAT(@result, ' AND ', @prefix1, @value, '=', @prefix2, @value2)
			SET @counter = @counter + 1
		END
	END
	RETURN SUBSTRING(@result, 6, LEN(@result));
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$get_domainid_columns
-- Description : This function returns the name of all columns referencing a domain.
-- Input       : tableName - the name of table
-- Output      : domainid columns
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING_DDL$get_domainid_columns
(
	@tableName VARCHAR(256)
)
RETURNS @ColumnList TABLE
(
	ColumnName VARCHAR(256)
)
BEGIN
	DECLARE	@nr			INT = 0;
    -- check if there is a column with name 'DOMAINID'
	SELECT @nr = count(*)  FROM INFORMATION_SCHEMA.COLUMNS
        WHERE COLUMN_NAME ='DOMAINID'
        AND (TABLE_NAME = @tableName OR table_name = dbo.STAGING$get_table_name(@tableName, '$1'));

    IF @nr > 0	-- use standard domainid column
	BEGIN
		INSERT INTO @columnList
			VALUES('DOMAINID');
	END
    ELSE
	BEGIN
		INSERT INTO @columnList
			SELECT KCU.COLUMN_NAME [referencing_column_name]
				FROM   INFORMATION_SCHEMA.TABLE_CONSTRAINTS C 
					   INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU 
						 ON C.CONSTRAINT_SCHEMA = KCU.CONSTRAINT_SCHEMA 
							AND C.CONSTRAINT_NAME = KCU.CONSTRAINT_NAME 
					   INNER JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC 
						 ON C.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
							AND C.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 
					   INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS C2 
						 ON RC.UNIQUE_CONSTRAINT_SCHEMA = C2.CONSTRAINT_SCHEMA 
							AND RC.UNIQUE_CONSTRAINT_NAME = C2.CONSTRAINT_NAME 
					   INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU2 
						 ON C2.CONSTRAINT_SCHEMA = KCU2.CONSTRAINT_SCHEMA 
							AND C2.CONSTRAINT_NAME = KCU2.CONSTRAINT_NAME 
							AND KCU.ORDINAL_POSITION = KCU2.ORDINAL_POSITION 
				WHERE  C.CONSTRAINT_TYPE = 'FOREIGN KEY' AND (C2.TABLE_NAME = 'DOMAIN' OR C2.TABLE_NAME LIKE 'DOMAIN$%')
				AND (C.TABLE_NAME = @tableName OR C.TABLE_NAME = dbo.STAGING$get_table_name(@tableName, '$1'))
				ORDER BY C.CONSTRAINT_NAME
    END
    RETURN;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$create_source_view
-- Description : This procedure is used to create the source view.
-- Input       : stagingTable - the staging table
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$create_source_view
(
	@stagingTable	STAGING$type_staging_table_ROWTYPE READONLY
)
AS
BEGIN
	DECLARE @domainColumns			DDL$type_object_name_list,
			@domainColumn			VARCHAR(200),
			@liveTableName			VARCHAR(200),
			@srcConstraints			DDL$ENABLE_CONSTRAINTS_type_constraints,
			@srcConstraint			DDL$ENABLE_CONSTRAINTS_type_constraints,
			@refConstraint			DDL$ENABLE_CONSTRAINTS_type_constraints,
			@fk						DDL$type_object_name_list,
			@pk						DDL$type_object_name_list,
			@cols					VARCHAR(4000),
			@domainSpecificFlag		BIT,
			@aTableName				VARCHAR(100),
			@view_aTableName		VARCHAR(100),
			@tableName				VARCHAR(100),
			@scr_tableName			VARCHAR(100),
			@count					INT,
			@constraint_name		VARCHAR(100),
			@scr_constraint_name	VARCHAR(100),
			@r_constraint_name		VARCHAR(100),
			@i						INT = 1 ,
			@sqlQuery				NVARCHAR(MAX),
			@where					NVARCHAR(MAX),
			@domainFKFound			BIT = 0;

	SELECT @aTableName=tableName FROM @stagingTable

	SELECT @liveTableName= dbo.STAGING$get_live_table_name(@aTableName)

	INSERT INTO @domainColumns
		SELECT * FROM dbo.STAGING_DDL$get_domainid_columns(@aTableName)

	SELECT @domainSpecificFlag=domainSpecificFlag FROM @stagingTable
	 
	IF(SELECT COUNT(1) FROM @domainColumns)>1 AND 	@domainSpecificFlag=1 
	BEGIN
		INSERT INTO @srcConstraints
		EXEC dbo.DDL$get_enable_constraints NULL,''
		IF NOT EXISTS(SELECT 1 FROM  @srcConstraints)
			RETURN;
				
		WHILE(@i<=@count)
		BEGIN
			INSERT INTO @srcConstraint(CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,R_CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED  ,STATUS)
			SELECT CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,R_CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED, STATUS  FROM @srcConstraints WHERE ROW = @i

			SELECT @r_constraint_name		= r_constraint_name		 from @srcConstraints where row=@i
			SELECT @scr_constraint_name		= constraint_name		 from @srcConstraints where row=@i
			SELECT @scr_tableName=TABLE_NAME from @srcConstraints where row=@i							

			INSERT INTO @refConstraint
			EXEC DDL$get_enable_constraints @r_constraint_name,''

			SELECT @tableName=TABLE_NAME from @refConstraint where row=@i
			SELECT @constraint_name=constraint_name from @refConstraint where row=@i

			INSERT INTO @domainColumns
			EXEC  dbo.STAGING_DDL$get_domainid_columns @tableName

			IF(SELECT COUNT(1) FROM @domainColumns )>0
			BEGIN
				INSERT INTO @fk
				EXEC DDL$get_cons_columns @scr_constraint_name

				INSERT INTO @pk
				EXEC DDL$get_cons_columns @constraint_name

				SELECT @cols = dbo.STAGING_DDL$get_cs_string(dbo.GET_STAGING_get_tab_columns(@scr_tableName),'src.');
				SELECT @domainColumn = objectName FROM @domainColumns WHERE row = @i
				DECLARE @str VARCHAR(500)='src.'+@domainColumn;
				SELECT	@cols = REPLACE(@cols, @str,'');
				SELECT	@cols = REPLACE(@cols, ',,', ',');
				SELECT	@cols = LTRIM(@cols);
				SELECT	@cols = RTRIM(@cols);
				SELECT @where = dbo.STAGING_DDL$join_columns('src.', @fk, 'ref.', @pk);

				SELECT @view_aTableName=DBO.STAGING$get_table_name(@aTableName, '$S')
				SELECT @sqlQuery='CREATE VIEW '+@view_aTableName+' AS SELECT '+@cols+', ref.'+@str+' FROM '+@scr_tableName+' src, '+@tableName+' ref'+' WHERE '+@where+''
				EXECUTE SP_EXECUTESQL @sqlQuery
			END
		SET @i = @i + 1;
		END
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$add_column
-- Description : This procedure is used to add a column to a normal or staging table.
--               In second case the column is added to $1 as well as $2 table.
-- Input       : tab_name - the name of table or (for staging) the synonym name
--               col_name - the name of column to be added
--               col_def  - the definition of column
-- Example     : EXEC STAGING_DDL$add_column 'ABCDEMO', 'ID', 'NUMERIC'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$add_column
(
	@tab_name VARCHAR(256),
	@col_name VARCHAR(256),
	@col_def VARCHAR(256)
)
AS
        
BEGIN
	DECLARE @table_name									VARCHAR(256),
		@STAGING_type_staging_table_ROWTYPE				STAGING$type_staging_table_ROWTYPE,
		@STAGING_type_switch_synonyms					STAGING$type_switch_synonyms,
		@sqlQuery										NVARCHAR(MAX);

	DECLARE @Table_defination TABLE
	(
		Table_defination	VARCHAR(256)
	)
		
	INSERT INTO @STAGING_type_switch_synonyms
	SELECT @tab_name

	IF dbo.STAGING$is_prepared(@tab_name) =1
	BEGIN
		SELECT @table_name=DBO.STAGING$get_table_name(@tab_name, '$1')
		EXEC STAGING_DDL$add_column @table_name, @col_name, @col_def;
			
		SELECT @table_name=DBO.STAGING$get_table_name(@tab_name, '$2')
		EXEC STAGING_DDL$add_column @table_name, @col_name, @col_def;
			
		INSERT INTO @STAGING_type_staging_table_ROWTYPE
		EXEC STAGING$get_staging_table @STAGING_type_switch_synonyms

		EXEC dbo.STAGING_DDL$create_source_view @STAGING_type_staging_table_ROWTYPE
	END
	ELSE
		BEGIN
		IF(SELECT COUNT(1) FROM SYS.SYSCOLUMNS WHERE OBJECT_NAME(id) = UPPER(@tab_name) AND  name = UPPER(@col_name))=0
		BEGIN
			SET @sqlQuery= CONCAT('ALTER TABLE ', @tab_name, ' ADD  ', @col_name, ' ', @col_def)
			EXECUTE SQL_UTIL$executeDDL @sqlQuery, 0
		END
		ELSE
		BEGIN	
			DECLARE @msg VARCHAR(1000)='Table '+@tab_name+' possesses already a column with name '+@col_name+'.';
			EXEC LOGGER$log @msg, 0
		END
	END			 
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$drop_staging_trigger
-- Description : This procedure is used to drop an index of a normal or staging table.
--               In second case the index is dropped for $1 as well as $2 table.
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
-- Example     : EXEC dbo.STAGING_DDL$drop_staging_trigger 'ServiceLineItem'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING_DDL$drop_staging_trigger
(
	@table_name	VARCHAR(256)
)
AS
BEGIN
	DECLARE @sql_query NVARCHAR(4000),
			@tableName VARCHAR(256);
		
	IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
		SELECT @table_name = dbo.STAGING$get_table_name(@table_name,'$1');
		SELECT @tableName = CONCAT('T$', @tableName);
		EXEC DDL$DROP_TRIGGER @tableName

		SELECT @table_name = dbo.STAGING$get_table_name(@table_name,'$2');
		SELECT @tableName = CONCAT('T$', @tableName);
		EXEC DDL$DROP_TRIGGER @tableName
	END
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$create_xml_index
-- Description : This procedure is used to create xml indexes of a normal or staging table.
--               In case an index already exists it will drop it first
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
--               column_name - the name of the column for which the index will be created
-- Example     : EXEC dbo.STAGING_DDL$create_xml_index 'TestIndex', 'Test_Table', 'col1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$create_xml_index
(			
	@index_name		VARCHAR(256),
	@table_name		VARCHAR(256),
	@column_name	VARCHAR(256)
)
AS
BEGIN
	DECLARE @query			VARCHAR(256),
			@idx_name		VARCHAR(256),
			@atable_name	VARCHAR(256);

	IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
		SELECT	@idx_name		= dbo.STAGING$get_index_name(@index_name, @table_name, '$1')
		SELECT	@atable_name	= dbo.STAGING$get_table_name(@table_name, '$1')
		EXEC 	DDL$create_xml_index @idx_name, @atable_name, @column_name

		SELECT	@idx_name		= dbo.STAGING$get_index_name(@index_name, @table_name, '$2')
		SELECT	@atable_name	= dbo.STAGING$get_table_name(@table_name, '$2')
		EXEC 	DDL$create_xml_index @idx_name, @atable_name, @column_name
	END
	ELSE
	BEGIN
		EXEC 	DDL$create_xml_index @index_name, @table_name, @column_name
	END
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING_DDL$create_ft_index
-- Description : This procedure is used to prepare the fulltext index of a normal
--               or staging table
-- Input       : table_name  - the name of table or (for staging) the synonym name
--               column_name - the name(s) of the included table column(s)
--               tableType   - one of 'Live', 'Shadow', 'Both'
--               doRecreate  - if the old index should be dropped before
-- Example     : EXEC dbo.STAGING_DDL$create_ft_index 'PRODUCT', 'attributes', 'Both', 1
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING_DDL$create_ft_index
(
	@table_name		VARCHAR(256),
	@column_name	VARCHAR(256),
	@tableType		VARCHAR(256),
	@doRecreate		BIT
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@live_table	VARCHAR(200);

	IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
		IF @tableType = 'Live' 
		BEGIN
			SELECT @live_table = dbo.STAGING$get_live_table_name(@table_name)
			EXEC   DDL$create_ft_index @live_table, @column_name, @doRecreate;
		END
		ELSE IF @tableType='Shadow' 
		BEGIN
			SELECT @live_table = dbo.STAGING$get_shadow_table_name(@table_name)
			EXEC   DDL$create_ft_index @live_table, @column_name, @doRecreate;
		END
		ELSE
		BEGIN
			SELECT @live_table = dbo.STAGING$get_table_name(@table_name,'$1')
			EXEC   DDL$create_ft_index @live_table, @column_name, @doRecreate;

			SELECT @live_table = dbo.STAGING$get_table_name(@table_name,'$2')
			EXEC   DDL$create_ft_index @live_table, @column_name, @doRecreate;
		END 
	END
	ELSE
	BEGIN
		EXEC   DDL$create_ft_index @table_name, @column_name, @doRecreate;
	END
END

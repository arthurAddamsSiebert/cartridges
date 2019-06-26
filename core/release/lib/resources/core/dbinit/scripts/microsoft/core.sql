------------------------------------------------------------------------------------------
-- Name			: getLastNumberLength
-- Description	: Returns the last number and it's length of a sequence
-- Input		: seriesName - a series name
-- Output		: l_len - The length of the last number
--               l_lastNumber - The last number
-- Example		: SELECT dbo.CORE$getLastNumberLength('CountBy1')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION CORE$getLastNumberLength(
	@seriesName  VARCHAR(4000)
)
RETURNS decimal 
AS
BEGIN	
	DECLARE @l_len INT;	
    SELECT @l_len = LEN(CAST(current_value AS VARCHAR(50)))  FROM sys.sequences WHERE [name] = UPPER(@seriesName);
    RETURN @l_len;
END;
GO

------------------------------------------------------------------------------------------
-- Name        : CORE$incrementSequence
-- Description : Increments a sequence by count
-- Input       : sequenceName - a sequence name
--               cnt - a count
-- Output      : The next value.
-- Example     :    
--					DECLARE @OUTPUT INT 
--					EXEC dbo.CORE$incrementSequence 'CountBy1',3, @OUTPUT OUTPUT 
--					SELECT @OUTPUT
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$incrementSequence
   @sequenceName varchar(4000),
   @cnt float(53),  
   @return_value_argument BIGINT  OUTPUT
AS 
BEGIN
	BEGIN TRY
		BEGIN TRAN
			DECLARE  @l_seq BIGINT, 
					@l_inc BIGINT, 
					@l_str NVARCHAR(100);

			SELECT @l_inc = CAST(increment AS BIGINT) FROM sys.sequences WHERE UPPER(name) = UPPER(@sequenceName);
	
			SET @l_str = CONCAT('ALTER SEQUENCE ',  @sequenceName , ' INCREMENT BY  ', CAST(@cnt AS NVARCHAR(MAX)));
			PRINT @l_str
			EXECUTE sp_executesql @l_str;
			EXEC LOGGER$log @l_str, 0
	
			SELECT  @l_str = CAST(current_value AS NVARCHAR(100))  FROM sys.sequences WHERE [name] = UPPER(@sequenceName);
			PRINT @l_str

			SET @l_str = CONCAT('SELECT  @l_seq = NEXT VALUE FOR ', @sequenceName)
			EXECUTE sp_executesql @l_str, N'@l_seq BIGINT OUTPUT', @l_seq OUTPUT 
			EXEC LOGGER$log @l_str, 0
			SET @return_value_argument = @l_seq;

			SET @l_str = 'ALTER SEQUENCE ' + ISNULL(@sequenceName, '') + ' INCREMENT BY ' + ISNULL(CAST(@l_inc AS NVARCHAR(MAX)), '');
			EXECUTE sp_executesql @l_str;
			EXEC LOGGER$log @l_str, 0
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK
	END CATCH
END
GO
------------------------------------------------------------------------------------------
-- Name        : CORE$incrementSequenceByNextval
-- Description : Increments a sequence by next value cnt times.
-- Input       : sequenceName - a sequence name
--               cnt -  a loop counter
-- Output      : The next value.
-- Example	   :
--				DECLARE @OUTPUT INT 
--				EXEC dbo.CORE$incrementSequenceByNextval 'CountBy1', 3, @OUTPUT OUTPUT 
--				SELECT @OUTPUT 
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$incrementSequenceByNextval
   @sequenceName VARCHAR(MAX),
    @cnt BIGINT,
   @return_value_argument BIGINT OUTPUT
AS 
BEGIN
	DECLARE  @l_seq BIGINT, 
			@l_inc BIGINT, 
			@l_str NVARCHAR(200),
			@COUNT INT = 1;
 
	While(@COUNT <=@cnt)
	BEGIN
	
		SET @l_str = CONCAT('SELECT  @l_seq = NEXT VALUE FOR ', @sequenceName);
		BEGIN TRY
			EXECUTE sp_executesql @l_str,N'@l_seq BIGINT OUTPUT',@l_seq OUTPUT
		END TRY
		BEGIN CATCH
			-- Exception related with invalid object name should be passed.
		END CATCH
		SET @return_value_argument = @l_seq

		SET @COUNT=@COUNT+1
	END
END
GO

------------------------------------------------------------------------------------------
-- Name        : CORE$getSequenceName
-- Description : Gets a sequence name based on the series id
-- Input       : seriesID - a series id
-- Output      : The sequence name.
-- Example	   : SELECT dbo.CORE$getSequenceName('SellerOrder.DocumentNo.aEYKAB1USk0AAAFY.8EaArZQ')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION CORE$getSequenceName 
( 
   @seriesID varchar(4000)
)
RETURNS varchar(4000)
AS 
BEGIN
	DECLARE   @l_sequenceName varchar(30)

	SELECT @l_sequenceName = us.name
	FROM BASICSERIESENTRY  AS bse(NOLOCK) 
	INNER JOIN sys.sequences  AS us ON (us.name = UPPER(bse.SEQUENCENAME) COLLATE database_default)
	WHERE bse.IDENTIFIER = @seriesID
    
	RETURN @l_sequenceName
   END
GO
------------------------------------------------------------------------------------------
--	Name        : dbo.CORE$sequenceExists
--	Description : Checks if a sequence exists
--	Input       : seriesID - a series id
--	Output      : The number of sequences that exist.
--	Example		: SELECT dbo.CORE$sequenceExists('UserSeries')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION CORE$sequenceExists 
( 
   @seriesID VARCHAR(4000)
)
RETURNS BIGINT
AS 
BEGIN
	DECLARE @l_cnt BIGINT;
	SELECT @l_cnt = COUNT(1) FROM BASICSERIESENTRY  AS bse(NOLOCK) 
	JOIN sys.sequences  AS us ON (us.name = UPPER(bse.SEQUENCENAME) COLLATE database_default)
	WHERE bse.IDENTIFIER = @seriesID
	RETURN @l_cnt

END
GO
------------------------------------------------------------------------------------------
-- Name        : CORE$LPAD
-- Description : The LPAD function returns an expression, left-padded to a specified length with the specified characters
--               
-- Input       :@string VARCHAR(MAX),  Initial string
--					  @length INT,           Size of final string
--					  @pad CHAR              Pad character
-- Output      : 
-- example	   :SELECT dbo.LPAD('tech1',6,'1')
------------------------------------------------------------------------------------------
 CREATE OR ALTER FUNCTION CORE$LPAD
(
    @string VARCHAR(MAX), -- Initial string
    @length INT,          -- Size of final string
    @pad CHAR             -- Pad character
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN CONCAT(REPLICATE(@pad, @length - LEN(@string)), @string, '');
END
GO
------------------------------------------------------------------------------------------
-- Name        : CORE$getmaxusedid
-- Description : Returns the maximum used number
-- Input       : tableName - a table name
--               columnName - a column name
--               domainUUID - the domain id
--               seriesName - the series name
--               numberPattern - the number pattern
-- Output      : The maximum number
--Example		: EXEC dbo.CORE$getmaxusedid 'DOMAIN$1','UUID','SDFSDF234234SDFSDFSD','SERRIES001','789'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$getmaxusedid
( 
	@tableName		VARCHAR(100), 
	@columnName		VARCHAR(100), 
	@domainUUID		VARCHAR(100), 
	@seriesName		VARCHAR(100), 
	@numberPattern	VARCHAR(100)
) 
AS
BEGIN 
	DECLARE @l_number				INT, 
			@l_maxNumber			INT= 0, 
			@l_patternUsedLength	INT = LEN(@numberPattern) - dbo.CORE$getLastNumberLength(@seriesName);
		
	DECLARE @tempTable TABLE (columnname VARCHAR(50));
	DECLARE @l_id	VARCHAR(256), 
			@like	VARCHAR(256); 
	SELECT @like = dbo.CORE$LPAD('', SUBSTRING(@numberPattern, 1, 1), CAST(@l_patternUsedLength AS VARCHAR(100)));

	DECLARE @l_sqlstring NVARCHAR(max) ='SELECT '+ @columnName +'  FROM ' + @tableName +' WHERE domainid = '''+@domainUUID+''' AND LEN('''+@numberPattern+''') = LEN('''+ @columnName +''') 
									AND ' +@columnName+' LIKE '''+@like+'''';
	INSERT INTO @tempTable
		EXECUTE SQL_UTIL$execute3 @l_sqlstring;
 
	DECLARE @msg VARCHAR(4000)= CONCAT('getMaxUsedID.sqlstring: ', @l_sqlstring);
	EXEC LOGGER$log @msg, 0;

	SET @msg = CONCAT('getMaxUsedID.sqlstring.binds: ''', CAST(@domainUUID AS VARCHAR(100)), ''',''', CAST(@numberPattern AS VARCHAR(100)), ''',''', CAST(@numberPattern AS VARCHAR(100)), ''',''', CAST(@l_patternUsedLength AS VARCHAR(100)), '''')
	EXEC LOGGER$log @msg, 0 

	DECLARE maxidcursor 
	CURSOR
	FOR 
	SELECT * FROM   @tempTable

	OPEN maxidcursor 
	FETCH next 	FROM  maxidcursor 	INTO  @l_id 
	WHILE @@FETCH_STATUS = 0 
	BEGIN 
		SET @l_number = Cast(@l_id AS INT) ; 
		IF (@l_number > @l_maxNumber)
			SET @l_maxNumber = @l_number
		FETCH next 
		FROM  maxidcursor 
		INTO   @l_id
	END 
	CLOSE maxidcursor     
	DEALLOCATE maxidcursor  
	SELECT @l_maxNumber
END
GO
------------------------------------------------------------------------
-- Name        : CORE$set_tab_stats
-- Description : set initial table statistics and SQL Server does not support table statistics, it won't perform any action.
-- Input       : tablename, table name
--               nrows, number rows
-- Example     : exec CORE$set_tab_stats('LOCATION');
--             : exec CORE$set_tab_stats('LOCATION', 200000);
--
--               SELECT table_name,last_analyzed,num_rows
--                 FROM user_tables
--                WHERE table_name like 'LOCATION%';
--
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$set_tab_stats
(
    @tablename   VARCHAR(256),
    @nrows       BIGINT = 100000
)
AS
BEGIN
	DECLARE @l_tab_name  VARCHAR(256) = UPPER(dbo.STAGING$GET_LIVE_TABLE_NAME(@tablename));
    -- set table stats
    -- SQL Server does not support table statistics, only index statistics are supported.
	--DECLARE @msg VARCHAR(400) = CONCAT(@l_tab_name, ', set table stats, number rows: ', @nrows, '.');
	DECLARE @msg VARCHAR(400) = 'SQL Server does not support table statistics, only index and column statistics are supported.';
    EXEC LOGGER$log @msg, 0;
END;
GO

------------------------------------------------------------------------
-- Name        : CORE$set_idx_stats
-- Description : set initial index statistics
--
-- Input       : tablename, table name
--               idx_col    indexed column
--               nrows      number of rows in the index
--               ndistrows  number of distinct keys in the index
--               nlblks     number of leaf blocks in the index
--
-- Example     : EXEC CORE$set_idx_stats 'LOCATION', 'ID',              50000, 50000, 10;
--               exec CORE$set_idx_stats 'LOCATION', 'STATEPROVINCEID', 50000, 10, 50000;
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$set_idx_stats
(
    @tablename   VARCHAR(256),
    @idx_col     VARCHAR(256),
    @nrows       INT, --The parameter is not used.
    @ndistrows   INT, --The parameter is not used.
    @nlblks      INT --The parameter is not used.
)
AS
BEGIN
    DECLARE @l_tab_name	VARCHAR(256) = UPPER(dbo.STAGING$GET_LIVE_TABLE_NAME(@tablename)),
			@l_col_name	VARCHAR(256) = UPPER(@idx_col),
			@msg		VARCHAR(400),
			@query		NVARCHAR(500),
			@count		INT,
			@counter	INT = 1,
			@indexName	VARCHAR(256);
    -- stats for given indexed table column
	DECLARE @TableIndexColList TABLE
	(
		ID INT IDENTITY,
		IndexName VARCHAR(256)
	)
	BEGIN TRY
		INSERT INTO @TableIndexColList
			SELECT DISTINCT 
			I.Name 'Index Name'
			FROM sys.indexes I 
			 INNER JOIN sys.index_columns IC 
			  ON  I.object_id = IC.object_id AND I.index_id = IC.index_id 
			 INNER JOIN sys.columns C 
			  ON IC.object_id = C.object_id and IC.column_id = C.column_id 
			 INNER JOIN sys.tables T 
			  ON I.object_id = T.object_id 
			WHERE T.name = @l_tab_name AND C.name = @l_col_name
		SELECT @count = COUNT(1) FROM @TableIndexColList
		WHILE (@counter <= @count)
		BEGIN
			SELECT @indexName = IndexName FROM @TableIndexColList WHERE ID = @counter
			SET @query = CONCAT('UPDATE statistics ', @tablename, '(', @indexName,')')
			PRINT @query 
			EXEC SQL_UTIL$execute3 @query
			SET @msg = CONCAT(@l_tab_name, ' - ', @indexName, ', set index stats.')
			EXEC LOGGER$log @msg, 0;
			SET @msg = CONCAT(' number of rows in the index: ', @nrows)
			EXEC LOGGER$log @msg, 0;
			SET @msg = CONCAT(' number of distinct keys in the index: ', @ndistrows)
			EXEC LOGGER$log @msg, 0;
			SET @msg = CONCAT(' number of leaf blocks in the index: ', @nlblks)
			EXEC LOGGER$log @msg, 0;
			SET @counter = @counter + 1
		END
	END TRY
	BEGIN CATCH
		--No Exception catched.
	END CATCH
END;
GO
------------------------------------------------------------------------
-- Name        : CORE$optimize_ctx_index3
-- Description : optimize a text index
-- Input       : index_name, ... parallel_degree
-- Example     : exec CORE$optimize_ctx_index3 'PRODUCT_CTX$1'
--             : exec CORE$optimize_ctx_index3('PRODUCT_CTX$1','FULL',2)
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$optimize_ctx_index3
(
	@index_name			VARCHAR(256),
	@optlevel			VARCHAR(20) = '80', --Fill Factor to be passed.
	@tableName			VARCHAR(256)
)
AS
BEGIN
	DECLARE @query	NVARCHAR(600);
	SET @query = CONCAT('ALTER FULLTTEXT INDEX [',@index_name, '] ON ', @tableName, ' START FULL POPULATION')
	BEGIN TRY
		EXEC SQL_UTIL$executeDDL @query, 1088
	END TRY
	BEGIN CATCH
		-- Do not do anything in case exceptions comming
	END CATCH
END;
GO
------------------------------------------------------------------------
-- Name        : CORE$optimize_ctx_index2
-- Description : optimize a text index
-- Input       : index_name, ... parallel_degree
-- Example     : exec CORE$optimize_ctx_index2 'PRODUCT_CTX$1'
--             : exec CORE$optimize_ctx_index2 'PRODUCT_CTX$1','80',2
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$optimize_ctx_index2
(
	@index_name			VARCHAR(256),
	@optlevel			VARCHAR(20) = '80',
	@parallel_degree	INT = 1,
	@maxtime			INT = NULL,
	@token				VARCHAR(256) = NULL,
	@part_name			VARCHAR(256) = NULL,
	@token_type			INT = NULL,
	@tableName			VARCHAR(256) = ''
)
AS
BEGIN
	DECLARE @msg	VARCHAR(600),
			@indexName	VARCHAR(256),
			@count		INT,
			@counter	INT = 1,
			@query		NVARCHAR(600);
	
	DECLARE @IndexList TABLE
	(
		ID INT IDENTITY,
		TableName VARCHAR(256),
		IndexName VARCHAR(256)
	);
	
	SET @msg = CONCAT(@index_name, ': optimize...');
	EXEC LOGGER$log @msg, 0;
	
	IF @tableName = ''
	BEGIN
		INSERT INTO @IndexList
			SELECT so.name AS TableName, si.name AS IndexName
			FROM sys.indexes si INNER JOIN sys.objects so ON si.[object_id] = so.[object_id]
			WHERE so.type = 'U'    --Only get indexes for User Created Tables
				  AND si.name IS NOT NULL AND si.name = @index_name
			ORDER BY so.name, si.type
			
			SELECT @count = COUNT(1) FROM @IndexList

			WHILE (@counter <= @count)
			BEGIN
				SELECT @indexName = IndexName, @tableName = TableName FROM @IndexList WHERE ID = @counter;
				EXEC CORE$optimize_ctx_index3 @indexName, @optlevel, @tableName;
				SET @counter = @counter + 1;
			END
	END
	ELSE
	BEGIN
		EXEC CORE$optimize_ctx_index3 @index_name, @optlevel, @tableName
	END
END;
GO
------------------------------------------------------------------------
-- Name        : CORE$optimize_ctx_index
-- Description : optimize a text index for given table and column
-- Input       : tablename, column_name, ... , parallel_degree
-- Example     : exec CORE$optimize_ctx_index 'PRODUCT','ATTRIBUTES',      '80', 1
--             : exec CORE$optimize_ctx_index 'PRODUCT','ATTRIBUTES',      '70', 2
--             : exec CORE$optimize_ctx_index 'PRODUCT','ATTRIBUTES_EN_US','100', 2
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$optimize_ctx_index
(
	@tablename       VARCHAR(256),
	@column_name     VARCHAR(256),
	@optlevel        VARCHAR(20) = '80',
	@parallel_degree INT = 1 -- Parameter is not used, SQL does not support parallel degree for index build.
)
AS
BEGIN
	DECLARE @indexName	VARCHAR(256),
			@count		INT,
			@counter	INT = 1,
			@query		NVARCHAR(600);

	DECLARE @IndexList TABLE
	(
		ID INT IDENTITY,
		TableName VARCHAR(256),
		IndexName VARCHAR(256)
	);

	INSERT INTO @IndexList
		SELECT so.name AS TableName, si.name AS IndexName
		FROM sys.indexes si INNER JOIN sys.objects so ON si.[object_id] = so.[object_id]
		INNER JOIN sys.syscolumns sc ON so.name = OBJECT_NAME(sc.ID)
		WHERE so.type = 'U'    --Only get indexes for User Created Tables
			  AND si.name IS NOT NULL AND (SO.name = @tablename OR SO.name = (SELECT PARSENAME(base_object_name, 1) FROM sys.synonyms WHERE [name] = @tablename AND type = 'SN'))
			  AND sc.name = @column_name
		ORDER BY so.name, si.type 
	
	SELECT @count = COUNT(1) FROM @IndexList
	WHILE (@counter <= @count)
	BEGIN
		SELECT @indexName = IndexName, @tableName = TableName FROM @IndexList WHERE ID = @counter;
		EXEC CORE$optimize_ctx_index3 @indexName, @optlevel, @tableName;
		SET @counter = @counter + 1;
	END
END;
GO
------------------------------------------------------------------------
-- Name        : CORE$optimize_ctx_indexes
-- Description : optimize all text index for given table
-- Input       : tablename, optlevel, parallel_degree
-- Example     : exec CORE$optimize_ctx_indexes('PRODUCT', '80', 1)
-- Example     : exec CORE$optimize_ctx_indexes('PRODUCT', '100', 2)
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$optimize_ctx_indexes
(
    @tablename			VARCHAR(256),
    @optlevel			VARCHAR(20) = 'FAST',
    @parallel_degree	INT = 1
)
AS
BEGIN
	DECLARE @indexName	VARCHAR(256),
			@count		INT,
			@counter	INT = 1,
			@query		NVARCHAR(600);

	DECLARE @IndexList TABLE
	(
		ID INT IDENTITY,
		TableName VARCHAR(256),
		IndexName VARCHAR(256)
	);

	INSERT INTO @IndexList
		SELECT so.name AS TableName, si.name AS IndexName
		FROM sys.indexes si INNER JOIN sys.objects so ON si.[object_id] = so.[object_id]
		WHERE so.type = 'U'    --Only get indexes for User Created Tables
			  AND si.name IS NOT NULL AND (SO.name = @tablename OR SO.name = (SELECT PARSENAME(base_object_name, 1) FROM sys.synonyms WHERE [name] = @tablename AND type = 'SN'))
		ORDER BY so.name, si.type 
	
	SELECT @count = COUNT(1) FROM @IndexList
	WHILE (@counter <= @count)
	BEGIN
		SELECT @indexName = IndexName, @tableName = TableName FROM @IndexList WHERE ID = @counter
		EXEC CORE$optimize_ctx_index3 @indexName, @optlevel, @tableName
		SET @counter = @counter + 1;
	END
END;
GO
CREATE OR ALTER  FUNCTION [dbo].[CORE$RPAD] (@PadChar    CHAR(1), 
                            @PadToLen   INT, 
                            @BaseString VARCHAR(100)) 
RETURNS VARCHAR(1000) 
AS 
/* **************************************************** 
Description: 
Pads @BaseString to an exact length (@PadToLen) using the 
specified character (@PadChar). Base string will not be 
trimmed. Implicit type conversion should allow caller to 
pass a numeric T-SQL value for @BaseString. 
Unfortunately T-SQL string variables must be declared with an 
explicit width, so I chose 100 for the base and 1000 for the 
return. Feel free to adjust data types to suit your needs. 
Keep in mind that if you don't assign an explicit width to 
varchar it is the same as declaring varchar(1). 
Revision History: 
Date Name Description 
---- ---- ----------- 
**************************************************** */ 
BEGIN 
    DECLARE @Padded		VARCHAR(1000), 
			@BaseLen	INT;

    SET @BaseLen = Len(@BaseString);

    IF @BaseLen >= @PadToLen
    BEGIN 
        SET @Padded = @BaseString;
    END 
    ELSE 
    BEGIN 
        SET @Padded = CONCAT(@BaseString,  Replicate(@PadChar, @PadToLen - @BaseLen));
    END
    RETURN @Padded 
END 
GO
------------------------------------------------------------------------
-- Name        : CORE$optimize_all_ctx_indexes
-- Description : optimize all text indexes
-- Input       : optlevel, parallel_degree
-- Example     : exec CORE$optimize_all_ctx_indexes
--             : exec CORE$optimize_all_ctx_indexes '80', 1
--             : exec CORE$optimize_all_ctx_indexes '100', 2
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$optimize_all_ctx_indexes
(
    @optlevel			VARCHAR(20) = '80',
    @parallel_degree	INT = 2
)
AS
BEGIN
	DECLARE @l_start	DATETIME,
			@l_end		DATETIME,
			@msg		VARCHAR(200),
			@indexName	VARCHAR(256),
			@tableName	VARCHAR(256),
			@count		INT,
			@counter	INT = 1,
			@query		NVARCHAR(600);

	DECLARE @IndexList TABLE
	(
		ID INT IDENTITY,
		TableName VARCHAR(256),
		IndexName VARCHAR(256)
	);
    EXEC LOGGER$log 'Text index optimization with parameters: ', 0;
	SET @msg = CONCAT('Optlevel: ', @optlevel)
    EXEC LOGGER$log @msg, 0;
	SET @msg = CONCAT('Parallel Degree: ', @parallel_degree)
    EXEC LOGGER$log @msg, 0;

	INSERT INTO @IndexList
		SELECT so.name AS TableName, si.name AS IndexName
		FROM sys.indexes si INNER JOIN sys.objects so ON si.[object_id] = so.[object_id]
		WHERE so.type = 'U'    --Only get indexes for User Created Tables
			  AND si.name IS NOT NULL
		ORDER BY so.name, si.type 
	
	SELECT @count = COUNT(1) FROM @IndexList;
	WHILE (@counter <= @count)
	BEGIN
		SELECT @indexName = IndexName, @tableName = TableName FROM @IndexList WHERE ID = @counter;
		SET @msg = Replicate(' ', 72) + 'Tablename.Indexname ' + dbo.CORE$LPAD('OptiElaTime s. ', 14, ' ') ;
		EXEC LOGGER$log @msg, 0
		SET @l_start = GETDATE();
		EXEC CORE$optimize_ctx_index3 @indexName, @optLevel, @tableName;
		SET @l_end = GETDATE();
		SET @msg = CONCAT(dbo.CORE$LPAD(CONCAT(@tableName, '.', @indexName, ': finished.'), 72, ' '),' ', dbo.CORE$LPAD(ROUND(DATEDIFF(millisecond, @l_start, @l_end)*10/1000,2,0), 14, ' '));
		EXEC LOGGER$log @msg, 0
		SET @counter = @counter + 1;
	END
END;
GO
------------------------------------------------------------------------
-- Name        : CORE$is_data_movement_available
-- Description : As discussed with Carsten and Jens, the function should return 0 as this functionality is not required
-- Output      : N/A
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION CORE$is_data_movement_available()
RETURNS INT
BEGIN
	RETURN 0;
END;
GO
------------------------------------------------------------------------
-- Name        : CORE$suppress_data_movement
-- Description : As discussed with Carsten and Jens, the functionality is not required and should throw an exception.
-- Input       : tag - the binary tag, default 42 for all subsequent redo entries
--               The size limit for a tag value is 2000 bytes
-- Example     : EXEC SQL_UTIL$suppress_data_movement '42'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$suppress_data_movement
(
	@tag VARCHAR(2000) = '42'
)
AS
BEGIN
	EXEC LOGGER$log 'Suppress data movement (Streams) not available.', 0;
	THROW 50001, 'The functionality does not exist', 1
END
GO

------------------------------------------------------------------------
-- Name        : CORE$enable_data_movement
-- Description : it enables data movement (Oracle Streams) by setting
--               a tag to NULL for the current session.
-- Input       : none
-- Output      : none
-- Example     : exec CORE$enable_data_movement
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CORE$enable_data_movement
AS
BEGIN
	EXEC LOGGER$log 'Enable data movement (Streams) not available.', 0;
	THROW 50001, 'The functionality does not exist', 1
END
GO
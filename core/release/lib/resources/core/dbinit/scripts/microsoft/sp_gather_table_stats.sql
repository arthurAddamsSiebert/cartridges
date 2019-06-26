CREATE OR ALTER PROCEDURE gather_table_stats$log
(
	@key VARCHAR(300),
	@value VARCHAR(300) = NULL
)
AS
BEGIN
	DECLARE @stmt NVARCHAR(1000);
	SET @stmt = CONCAT(' ', dbo.CORE$RPAD(' ', 44, @key), ' : ', @value)
	EXEC LOGGER$log @stmt, 0;
END;
GO
CREATE OR ALTER PROCEDURE gather_table_stats
(
	@table_name	VARCHAR(256),
 ------------------------------------------------------------------------------
 -- start: following parameters are not used and kept to keep application sync.
 ------------------------------------------------------------------------------
	@estimate_percent NUMERIC = auto_sample_size,
	@block_sample     BIT = 0,
	@method_opt       VARCHAR(50) = 'for all columns size auto',
	@degree           NUMERIC = auto_degree,
	@granularity      VARCHAR(30) = 'auto',
	@cascade          BIT = auto_cascade,
	@no_invalidate    BIT = auto_invalidate,
	@force            BIT = 0,
 ------------------------------------------------------------------------------
 -- end: wrapped
 ------------------------------------------------------------------------------
	@pct_threshold  NUMERIC =  33.33, -- The parameter is not used.
	@force_count    BIT = 0 -- The parameter is not used.
)
------------------------------------------------------------------------------------------
-- Name        : gather_table_stats
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh  15/12/2017   initial created
--
-- Description : This procedure gathers table statistics for given table.
--
-- Input       : table_name             the base PO table
--
-- Output      : none
-- Example     : 
--
-- EXEC gather_table_stats 'PRODUCT'
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @v_table_name			VARCHAR(256) = UPPER(@table_name),
			@v_cnt					NUMERIC,
			@rowlockcount			INT,
			@rowlockwaitcount		NUMERIC,
			@rowlockwaitinms		NUMERIC,
			@pagelockcount			NUMERIC,
			@stmt					VARCHAR(50),
			@pagelockwaitcount		INT,
			@pagelockwaitinms		INT,
			@indxlckpromoattmptcnt	INT,
			@indexlockpromoncnt		INT,
			@pagelatchwaitcount		INT,
			@pagelatchwaitinms		INT,
			@pageiolatchwaitcount	INT,
			@pageiolatchwaitinms	INT,
			@counter				INT = 1,
			@count					INT;
	DECLARE @TableLockHist TABLE
	(
		ID										INT IDENTITY,
		tablename								VARCHAR(256),
		row_lock_count							INT,
		row_lock_wait_count						INT,
		row_lock_wait_in_ms						INT,
		page_lock_count							INT,
		page_lock_wait_count					INT,
		page_lock_wait_in_ms					INT,
		index_lock_promotion_attempt_count		INT,
		index_lock_promotion_count				INT,
		page_latch_wait_count					INT,
		page_latch_wait_in_ms					INT,
		page_io_latch_wait_count				INT,
		page_io_latch_wait_in_ms				INT
	)
	EXEC LOGGER$log 'Begin gather_table_stats...', 0;

	-- check for staging synonym and return the $ live table
	SELECT @v_cnt = count(*) FROM sys.synonyms WHERE PARSENAME(base_object_name, 1) = @v_table_name;
	IF @v_cnt > 0
		SELECT @v_table_name = PARSENAME(base_object_name, 1) FROM sys.synonyms WHERE PARSENAME(base_object_name, 1) = @v_table_name;

	-- return if given table does not exists
	SELECT @v_cnt = count(*) FROM sys.tables WHERE name = @v_table_name;
	IF @v_cnt = 0
	BEGIN
		SET @stmt = CONCAT('Given table ''', @v_table_name, ''' does not exits, gathering statistics failed!');
		EXEC LOGGER$log @stmt, 0;
		RETURN;
	END

   -- get table count by
   INSERT INTO @TableLockHist
	SELECT 
		object_name(at.object_id),
		row_lock_count,
		row_lock_wait_count,
		row_lock_wait_in_ms,
		page_lock_count,
		page_lock_wait_count,
		page_lock_wait_in_ms,
		index_lock_promotion_attempt_count,
		index_lock_promotion_count,
		page_latch_wait_count,
		page_latch_wait_in_ms,
		page_io_latch_wait_count,
		page_io_latch_wait_in_ms
		FROM sys.dm_db_index_operational_stats(DB_ID(), 0, NULL, NULL) at
		INNER JOIN sys.tables st ON st.object_id = at.object_id 
		WHERE st.name = @table_name;
	SELECT @count = COUNT(1) FROM @TableLockHist
	WHILE @counter <= @count
	BEGIN
		SELECT 
		@v_table_name			= tablename,
		@rowlockcount			= row_lock_count,
		@rowlockwaitcount		= row_lock_wait_count,
		@rowlockwaitinms		= row_lock_wait_in_ms,
		@pagelockcount			= page_lock_count,
		@pagelockwaitcount		= page_lock_wait_count,
		@pagelockwaitinms		= page_lock_wait_in_ms,
		@indxlckpromoattmptcnt	= index_lock_promotion_attempt_count,
		@indexlockpromoncnt		= index_lock_promotion_count,
		@pagelatchwaitcount		= page_latch_wait_count,
		@pagelatchwaitinms		= page_latch_wait_in_ms,
		@pageiolatchwaitcount	= page_io_latch_wait_count,
		@pageiolatchwaitinms	= page_io_latch_wait_in_ms
		FROM @TableLockHist WHERE ID = @counter;
		EXEC gather_table_stats$log 'Table Name', @v_table_name;
		EXEC gather_table_stats$log 'Row lock count', @rowlockcount;
		EXEC gather_table_stats$log 'Row lock wait count', @rowlockwaitcount;
		EXEC gather_table_stats$log 'Row lock wait in ms', @rowlockwaitinms;
		EXEC gather_table_stats$log 'Page lock count', @pagelockcount;
		EXEC gather_table_stats$log 'Page lock wait count', @pagelockwaitcount;
		EXEC gather_table_stats$log 'Page lock wait in ms', @pagelockwaitinms;
		EXEC gather_table_stats$log 'Index lock promotion attempt count', @indxlckpromoattmptcnt;
		EXEC gather_table_stats$log 'Index lock promotion count', @indexlockpromoncnt;
		EXEC gather_table_stats$log 'Page latch wait count', @pagelatchwaitcount;
		EXEC gather_table_stats$log 'Page lathc wait in ms', @pagelatchwaitinms;
		EXEC gather_table_stats$log 'Page io latch wait count', @pageiolatchwaitcount;
		EXEC gather_table_stats$log 'Page io latch wait in ms', @pageiolatchwaitinms;
		SET @counter = @counter + 1;
	END
	EXEC LOGGER$log 'End gather_table_stats...', 0;
END
GO
------------------------------------------------------------------------
-- Important:
-- 3 procedures moved to sql_util.sql to break cyclic dpendency!!!!
------------------------------------------------------------------------

------------------------------------------------------------------------
-- Name        : LOGGER$put_line
-- Description : logs given string to query window with given maximum
--               line width.
-- Input       : @string   - the log message
--               @len      - the maximum line width
-- Output      : none
-- Example     : EXEC LOGGER$put_line 'APPLE', 2
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE LOGGER$put_line
(
	@string VARCHAR(4000),
	@len INTEGER
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @v_curr_pos   INTEGER,
			@v_length     INTEGER,
			@v_printed_to INTEGER,
			@v_last_ws    INTEGER,
			@skipping_ws  BIT;


	IF (@string IS NULL) BEGIN
		RETURN;
	END 

	SET @v_length = LEN(@string);
	SET @v_curr_pos    =  0;
	SET @v_printed_to  = -1;
	SET @v_last_ws     = -1;
	SET @skipping_ws   = 1;

	WHILE @v_curr_pos < @v_length
	BEGIN
		IF SUBSTRING(@string, @v_curr_pos + 1, 1) = ' '
		BEGIN
			SET @v_last_ws = @v_curr_pos;
			IF @skipping_ws = 1
			BEGIN
				SET @v_printed_to = @v_curr_pos;
			END 
		END
		ELSE 
		BEGIN
			SET @skipping_ws = 0;
		END 

		IF @v_curr_pos >= @v_printed_to + @len
		BEGIN
			IF @v_last_ws <= @v_printed_to
			BEGIN
				PRINT SUBSTRING(@string, @v_printed_to + 2, @v_curr_pos - @v_printed_to);
				SET @v_printed_to = @v_curr_pos;
				SET @skipping_ws = 1;
			END
			ELSE
			BEGIN
				PRINT SUBSTRING(@string, @v_printed_to + 2, @v_last_ws - @v_printed_to);
				SET @v_printed_to = @v_last_ws;
				SET @skipping_ws = 1;
			END 
		END
		SET @v_curr_pos = @v_curr_pos + 1;
	END;
	PRINT SUBSTRING(@string, @v_printed_to + 2, LEN(@string));
END;
GO


------------------------------------------------------------------------------------------
-- Name        : LOGGER$set_log_target
-- Description : sets the new log target.
-- Input       : target - the log target identifier
-- Example     : exec LOGGER$set_log_target @target
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE LOGGER$set_log_target
(
	@target VARCHAR(100)
)
AS 
BEGIN
	SET NOCOUNT ON;
	PRINT @target;
END
GO

------------------------------------------------------------------------
-- !!! Procedure is replaced later in file with the real implementation!
-- This is a workaround to prevent DBInit warnings for cyclig
-- dependencies.
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE LOGGER$log
(
	@msg VARCHAR(4000),
	@log_prefix BIT = 0
)
AS 
BEGIN
    print 'Replaced later by implementation'
END
GO

------------------------------------------------------------------------
-- Name        : SQL_UTIL$set_log_behaviour
-- Description : Sets the log behaviour of execute methods
-- Input       : behaviour - the log behaviour
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE SQL_UTIL$set_log_behaviour
(
	@behaviour  INT
)
AS
BEGIN
	DECLARE @log_behaviour VARCHAR(50)
	SET   @log_behaviour = @behaviour;
END;
GO
------------------------------------------------------------------------
-- Name        : SQL_UTIL$get_instance_version
-- Description : Returns the version of instance.
-- Input       : none
-- Output      : the version of instance
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE SQL_UTIL$get_instance_version
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @version TABLE
	(
		ProductVersion VARCHAR(100)
	);
	DECLARE @productVersion VARCHAR(100);
	SELECT @productVersion = CONCAT('Instance Version: ', CAST(SERVERPROPERTY('ProductVersion') AS varchar(100)));
	INSERT INTO @version
		SELECT @productVersion;
	EXEC LOGGER$log @productVersion, 0;
	SELECT * FROM @version;
END;
GO
------------------------------------------------------------------------
-- Name        : SQL_UTIL$execute_internal
-- Description : It performs given statement. Use within this package only
-- Input       : stmt - the statement to be executed
-- Output      : none
-- Example     : EXEC SQL_UTIL$execute_internal 0, 'SELECT * FROM ABCDEMO', 0
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE SQL_UTIL$execute_internal
(
	@cur				INT = 0,
	@stmt				NVARCHAR(MAX),
	@ignoreErrorCode	INT = 0
)
AS
BEGIN
    DECLARE @upperbound		INT,
--			@sql_chunks		VARCHAR(300),
--			@chunk_size		SMALLINT = 256,
--			@log_prefix		bit = 1,
--			@counter		INT = 0,
			@log_behaviour	VARCHAR(20) =  'LOG_ALWAYS',
			@LOG_ALWAYS		VARCHAR(20) = 'LOG_ALWAYS',
			@LOG_ON_ERROR	VARCHAR(20);
	BEGIN TRY
-- Commented out logging! NEEDS REWORK!
--		SET @upperbound = LEN(@stmt);
--		WHILE (@counter < @upperbound)
--		BEGIN
--			SET @sql_chunks = SUBSTRING(@stmt, @counter, @chunk_size)
-- Check the LOGGING behavior around the WHILE LOOP!
--			IF @log_behaviour = @LOG_ALWAYS
--			BEGIN
--				EXEC LOGGER$log @sql_chunks, @log_prefix
--				SET @log_prefix = 0
--			END
--			SET @counter = @counter + @chunk_size
--		END
-- This is an alternative implementation
--		DECLARE @log_behaviour VARCHAR(20),
--				@LOG_ALWAYS VARCHAR(20), -- Variable value will be changed based on the reply from Intershop.
--				@LOG_ON_ERROR VARCHAR(20);-- Variable value will be changed based on the reply from Intershop.
--		IF @log_behaviour = @LOG_ALWAYS
--			EXEC LOGGER$log @stmt, 0;
-- Is the extra PRINT necessary?
--		PRINT @stmt
		EXEC sp_executesql @stmt
	END TRY
	BEGIN CATCH
		DECLARE @errorNumber INT,
				@errorMsg VARCHAR(1000),
				@errorSeverity INT;
		SELECT 
			@errorNumber = ERROR_NUMBER(),
			@errorMsg = ERROR_MESSAGE(),
			@errorSeverity = ERROR_SEVERITY()

		DECLARE @errorMessage VARCHAR(400)
        IF @errorNumber <> @ignoreErrorCode
        BEGIN
            IF @log_behaviour = @LOG_ALWAYS
			BEGIN
				SET @errorMessage = CONCAT('Failed with: ', @errorMsg)
                EXEC LOGGER$log @errorMessage, 0;
			END
            ELSE IF @log_behaviour = @LOG_ON_ERROR
			BEGIN
				SET @errorMessage = CONCAT(@errorMsg, ': ', @stmt)
                EXEC LOGGER$log @errorMessage, 0;
            END;
			THROW
		END
	END CATCH
END;
GO
------------------------------------------------------------------------
-- Name        : SQL_UTIL$execute 
-- Description : It performs given statement.
-- Input       : stmt - the statement to be executed
-- Output      : none
-- Example     : exec SQL_UTIL$execute  'DROP INDEX index_name'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE SQL_UTIL$execute
(
	@stmt NVARCHAR(MAX),
	@ignoreErrorCode INT = 0
)
AS
BEGIN
	EXEC SQL_UTIL$execute_internal 0, @stmt, @ignoreErrorCode
END;
GO
------------------------------------------------------------------------------------------
-- Name        : SQL_UTIL$executeDDL
-- Description : This procedure is used to perform given DDL statement.
-- Input       : ddlStmt         - the ddl statement as VARCHAR2
--               ignoreErrorCode - the error which should be ignored.
-- Example     : EXEC SQL_UTIL$executeDDL 'SELECT * FROM ABCDEMO', 0
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE SQL_UTIL$executeDDL
(
	@ddlStmt NVARCHAR(MAX),
	@ignoreErrorCode INT = 0
) AS
BEGIN
	EXEC SQL_UTIL$execute @ddlStmt, @ignoreErrorCode
END
GO
------------------------------------------------------------------------ 
-- Name        : SQL_UTIL$execute3 
-- Description : It performs and logs given statement. 
-- Input       : stmt            - the statement VARCHAR2 to be executed 
-- Output      : none 
-- Example     : exec SQL_UTIL$execute3 'DROP INDEX index_name' 
------------------------------------------------------------------------ 
CREATE OR ALTER PROCEDURE SQL_UTIL$execute3 
( 
  @stmt NVARCHAR(MAX) 
) AS 
BEGIN 
    EXEC SQL_UTIL$execute_internal 0, @stmt, 0; 
END; 
GO
------------------------------------------------------------------------
-- Name        : LOGGER$create_log_table
-- Description : creates the log table
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE LOGGER$create_log_table  
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @query NVARCHAR(600),
			@log_table VARCHAR(50) = 'PLSQLLOG';
	SELECT @query = CONCAT(
							'IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE NAME  = ', '''', @log_table, ''') ', 
							' BEGIN ',
							N'CREATE TABLE ', @log_table, N' (logdate DATETIME, msg VARCHAR(4000))',
							' END'
						);
	EXECUTE SQL_UTIL$execute3 @query;
END
GO
------------------------------------------------------------------------
-- Name        : LOGGER$log_into_table
-- Description : inserts data into log table and if log table does not exists, call LOGGER$create_log_table.
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE LOGGER$log_into_table
(
	@msg VARCHAR(MAX)
)
AS 
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @query NVARCHAR(600),
				@log_table VARCHAR(50) = 'PLSQLLOG';
		SELECT @query = CONCAT(
								N'INSERT INTO ', @log_table, ' VALUES(GETUTCDATE(), ''', SUBSTRING(@msg, 1, 4000), ''')'
							);
		EXECUTE sp_executesql @query;
	END TRY
	BEGIN CATCH
		DECLARE @errorNumber INT,
				@errorMsg VARCHAR(1000),
				@errorSeverity INT;
		SELECT 
			@errorNumber = ERROR_NUMBER(),
			@errorMsg = ERROR_MESSAGE(),
			@errorSeverity = ERROR_SEVERITY()
		IF @errorNumber = 208
		BEGIN
			EXEC LOGGER$create_log_table;
			EXEC LOGGER$log_into_table @msg;
		END
		ELSE
		BEGIN
			BEGIN TRY
				THROW 
			END TRY
			BEGIN CATCH
				THROW --redundent error thrown, if THROW is having issue in TRY statement.
			END CATCH
		END
	END CATCH
END
GO
------------------------------------------------------------------------
-- Name        : LOGGER$log
-- Description : logs given string to configured log target with given
--               maximum line width of 255.
-- Input       : @msg     - the log message
--             : log_prefix - if true print [datetime] prefix
-- Output      : none
-- Example     : EXEC LOGGER$log @msg, @log_prefix
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE LOGGER$log
(
	@msg VARCHAR(4000),
	@log_prefix BIT = 0
)
AS 
BEGIN
	SET NOCOUNT ON;
		DECLARE @query NVARCHAR(600),
				@log_table VARCHAR(50) = 'PLSQLLOG',
				@log_target VARCHAR(50) = '';
			
		IF @log_target = ''
		BEGIN
			IF @log_prefix = 1
			BEGIN
				SELECT @msg = CONCAT('[', CAST(GETUTCDATE() AS VARCHAR(50)), ']', @msg);
			END
			EXEC LOGGER$put_line @msg, 255
		END
		ELSE IF @log_target = @log_table
		BEGIN
			EXEC LOGGER$log_into_table @msg
		END
END
GO

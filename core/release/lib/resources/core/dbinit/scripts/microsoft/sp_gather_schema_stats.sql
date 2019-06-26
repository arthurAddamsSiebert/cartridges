CREATE OR ALTER PROCEDURE gather_schema_stats
(
    @estimate_percent NUMERIC   = 100,	-- estimate valid range is: [0.000001,100]
										-- estimate AUTO_SAMPLE_SIZE: 0 auto-sample size algorithms used
										-- compute: NULL
    @cascade          BIT   = 0,		-- TRUE/FALSE, gather statistics on the indexes as well
                                                             -- AUTO_CASCADE: NULL, Lets Oracle decide whether to collect 
                                                             -- statistics for indexes or not
    @method_opt       VARCHAR(30) = 'for all columns size auto',
    @options          VARCHAR(30) = 'gather auto',
    @block_sample     BIT  = 0,
    @degree           NUMERIC   = 0,	-- AUTO_DEGREE: 32768, Lets Oracle select the degree of parallelism 
    @granularity      VARCHAR(30) = 'auto',
    @no_invalidate    BIT  = 0,			-- TRUE/FALSE, not invalidate or invalidate the dependent cursors
										-- AUTO_INVALIDATE, NULL, Lets Oracle decide when to invalidate dependent cursors
    @force            BIT  = 0			-- Gather statistics on objects even if they are locked
)
------------------------------------------------------------------------------------------
-- Name        : gather_schema_stats
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh  12/13/2017   initial created
--
-- Description : This procedure gathers schema statistics for given user.
--
-- Input       : estimate_percent,... wrapped dbms_stats.gather_schema_stats params
--
-- Output      : none
-- Example     : EXEC sql_util.set_log_behaviour sql_util.LOG_ALWAYS
--
--               EXEC gather_schema_stats
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @flag INT = 0; --The schema related stats need not be logged as discussed with Carsten.
END
GO
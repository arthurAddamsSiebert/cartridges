CREATE OR ALTER PROCEDURE sf_execute_sql_using_rbs
(
	@sql_stmt NVARCHAR(4000),
	@domainid NVARCHAR(30),
	@lastmodified DATE,
	@rbs_name NVARCHAR(3000) -- This parameter is not being used.
)
AS
------------------------------------------------------------------------------------------
-- Name        : sf_execute_sql_using_rbs
-- Created     : Surender Singh
-- Description : This procedure is used to execute given SQL statement using the rollback
--               segment with given name. It returns the affected rows. The second and
--               third parameter define the bind variables ':domainid' and ':lastmodified'.
--               If both parameter are NULL, the will be ignored.
-- Input       : sql_stmt the SQL statement to be executed
--               domainid the domainid
--               lastmodified a lastmodified date
--               rbs_name the rollback segment to be used
-- Output      : affected rows
-- Example     : exec sf_execute_sql_using_rbs 'DELETE FROM product WHERE domainid=:domainid AND lastmodified<:lastmodified', 'oQYKAB02bxwAAAD0_aE.Wh.s', UTCTIMESTAMP(), 'RBS1'
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @affected_rows	NUMERIC = 0;
	BEGIN TRAN
		IF @domainid IS NOT NULL AND LEN(@domainid) > 0
			SET @sql_stmt = REPLACE(@sql_stmt, ':domainid', ''''+@domainid+'''');

		IF @lastmodified IS NOT NULL AND LEN(@lastmodified) > 0 
			SET @sql_stmt = REPLACE(@sql_stmt, ':lastmodified', ''''+convert(varchar(10), @lastmodified, 112)+'''');
		EXEC sp_executesql @sql_stmt
		SET @affected_rows = @@ROWCOUNT
	COMMIT
	RETURN @affected_rows;
END
GO
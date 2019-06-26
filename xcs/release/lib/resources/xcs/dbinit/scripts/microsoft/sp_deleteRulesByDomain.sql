CREATE OR ALTER PROCEDURE sp_deleteRulesByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRulesByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure cleans the staging table and used by sp_deleteRulesByDomain.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @uuid_rs	NVARCHAR(30),
			@uuid_bs	NVARCHAR(30),
			@count		INT,
			@counter	INT = 1,
			@count1		INT,
			@counter1	INT = 1,
			@sqlQuery	NVARCHAR(3000);
	DECLARE @PRuuid TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	DECLARE @BRuuid TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('RuleSet', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
    INSERT INTO @PRuuid
		EXEC sp_executesql @sqlQuery;
	
	SELECT @count = COUNT(1) FROM @PRuuid;
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid_rs FROM @PRuuid WHERE ID = @counter;
			SET @sqlQuery = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('BusinessRule', @suffix), ' WHERE rulesetid = ''', @uuid_rs, '''');
			INSERT INTO @BRuuid
				EXEC sp_executesql @sqlQuery;
			SELECT @count1 = COUNT(1) FROM @BRuuid;
			WHILE @counter1 <= @count
			BEGIN
				SELECT @uuid_bs FROM @BRuuid WHERE ID = @counter1;
				SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('TimeCondition',         @suffix), ' WHERE conditionruleid = ''', @uuid_bs, ''' or exceptionruleid = ''', @uuid_bs, '''');
				EXEC SQL_UTIL$execute @sqlQuery, 0;
				SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('WeekDayCondition',      @suffix), ' WHERE conditionruleid = ''', @uuid_bs, ''' or exceptionruleid = ''', @uuid_bs, '''');
				EXEC SQL_UTIL$execute @sqlQuery, 0;
				SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('TimeIntervalCondition', @suffix), ' WHERE conditionruleid = ''', @uuid_bs, ''' or exceptionruleid = ''', @uuid_bs, '''');
				EXEC SQL_UTIL$execute @sqlQuery, 0;

				SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('RuleSet', @suffix), ' SET conditionruleid = NULL WHERE ''', @uuid_bs, ''' = conditionruleid');
				EXEC SQL_UTIL$execute @sqlQuery, 0;
				SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('RuleSet', @suffix), ' SET exceptionruleid = NULL WHERE ''', @uuid_bs, ''' = exceptionruleid');
				EXEC SQL_UTIL$execute @sqlQuery, 0;

				SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('BusinessRule', @suffix), ' WHERE uuid = ''', @uuid_bs, '''');
				EXEC SQL_UTIL$execute @sqlQuery, 0;
				SET @counter1 = @counter1 + 1;
			END
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('RuleSetAssignment', @suffix), ' WHERE rulesetid = ''', @uuid_rs, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @counter = @counter + 1;
		END
    COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('RuleSet',               @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('BusinessRule',          @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('TimeCondition',         @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('WeekDayCondition',      @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('TimeIntervalCondition', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('BusinessRule',          @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
    COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteRulesByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRulesByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes rule related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteRulesByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('RuleSet') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteRulesByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteRulesByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteRulesByDomain$deleteFromStagingTables @domainID, NULL;
	END
END
GO
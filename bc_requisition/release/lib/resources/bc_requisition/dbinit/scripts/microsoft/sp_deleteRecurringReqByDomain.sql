CREATE OR ALTER PROCEDURE sp_deleteRecurringReqByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRecurringReqByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure clean up tables in staging scenario
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @recReq_In_stmt NVARCHAR(500) = CONCAT('
												(
												SELECT r.uuid
												FROM ', dbo.STAGING$get_table_name('RecurringRequisition', @suffix), ' r
												WHERE r.domainid = ''', @in_domainid, '''
													OR r.basketid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('Basket', @suffix), ' b WHERE b.domainid = ''', @in_domainid, ''')
													OR NOT EXISTS    (SELECT 1    FROM ', dbo.STAGING$get_table_name('Basket', @suffix), ' b WHERE b.uuid  = r.basketid)
												)'),
			@sqlQuery NVARCHAR(MAX);
	BEGIN TRAN
		--
		-- RecurringDate
		--

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('RecurringDate_AV', @suffix), '
									WHERE ownerid IN
									(
									SELECT uuid FROM ', dbo.STAGING$get_table_name('RecurringDate', @suffix), '
										WHERE RecurringRequisitionID IN ' ,  @recReq_In_stmt ,  '
									)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('RecurringDate', @suffix), '
							WHERE RecurringRequisitionID IN ' ,  @recReq_In_stmt);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--
		-- Order (RecurringRequisition)
		--
		SET @sqlQuery = CONCAT(' DELETE FROM ', dbo.STAGING$get_table_name('RecurringRequisition_AV', @suffix), '
								WHERE ownerid IN ' ,  @recReq_In_stmt);
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT(' DELETE FROM ', dbo.STAGING$get_table_name('RecurringRequisition', @suffix), '
								WHERE uuid IN ' ,  @recReq_In_stmt);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteRecurringReqByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteRecurringReqByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * RecurringRequisition
-- * RecurringRequisition_AV
--
-- * RecurringDate
-- * RecurringDate_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRecurringReqByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN

	IF dbo.sf_is_staging_table('RecurringRequisition') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deleteRecurringReqByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteRecurringReqByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteRecurringReqByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
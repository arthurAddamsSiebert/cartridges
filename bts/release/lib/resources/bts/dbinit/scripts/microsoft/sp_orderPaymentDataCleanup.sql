CREATE OR ALTER PROCEDURE sp_orderPaymentDataCleanup$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256),
	@olderThan NUMERIC
)
------------------------------------------------------------------------------------------
-- Name        : sp_orderPaymentDataCleanup
-- History     : user             date       - desc
-- Created     : Tim Enderling    04/03/2012 
-- Description : This procedure clean up staging tables ($1 resp. $2 tables) and used by sp_orderPaymentDataCleanup.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	SET @sqlQuery = CONCAT(
	'DELETE av  FROM ', dbo.STAGING$get_table_name('paymentinstrumentinf_av', @suffix), ' av WHERE av.ownerid IN (
		SELECT pii.uuid FROM ', dbo.STAGING$get_table_name('paymentinstrumentinfo', @suffix), ' pii WHERE pii.lineitemctnrid IN (
			SELECT ord.uuid FROM ', dbo.STAGING$get_table_name('isorder', @suffix), ' ord 
			WHERE ord.domainid = ''', @in_domainid, ''' AND creationdate < (GETUTCDATE() - ', @olderThan, ')
		)
		)');
	EXEC SQL_UTIL$execute @sqlQuery, 0;
END;
GO
CREATE OR ALTER PROCEDURE sp_orderPaymentDataCleanup
(
    @domainID NVARCHAR(30),    -- the domain ID in which objects are deleted 
    @olderThan NUMERIC         -- minimum number of days since creation of the order 
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_orderPaymentDataCleanup
-- History     : user             date       - desc
-- Created     : Tim Enderling    04/03/2012 
-- Description : This procedure deletes all PaymentInstrumentInfoAVs of PaymentInstrumentInfos 
--               used in Orders belonging to a given domain and older than a given number
--               of days.
-- Input       : domainID - the ID of the domain in which orders are looked up
--               olderThan -- minimum number of days since creation of the order 
-- Output      : none
-- Example     : exec sp_orderPaymentDataCleanup 'OK0KAB1LrH8AAADm9wC0ccmj', 730
--               (delete PaymentInstrumentInfoAVs for orders older than two years) 
------------------------------------------------------------------------------------------
BEGIN
	IF dbo.sf_is_staging_table('paymentinstrumentinfo') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_orderPaymentDataCleanup$deleteFromStagingTables @domainID, '$1', @olderThan;
		EXEC sp_orderPaymentDataCleanup$deleteFromStagingTables @domainID, '$2', @olderThan;
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_orderPaymentDataCleanup$deleteFromStagingTables @domainID, null, @olderThan;
	END;
END
GO
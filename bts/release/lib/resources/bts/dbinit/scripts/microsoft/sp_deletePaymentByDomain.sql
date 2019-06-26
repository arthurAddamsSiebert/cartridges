------------------------------------------------------------------------------------------
--
-- Name        : sp_deletePaymentByDomain$deletePIIFromST
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure removes all rows belonging to the domain with given uuid from staging tables and used by sp_deletePaymentByDomain.
--
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deletePaymentByDomain$deletePIIFromST
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genericPoAvDeleteByDomain 'paymenthistory', 'paymenthistory_av', @suffix, @in_domainid, 'domainid';
		EXEC sp_genericPoAvDeleteByDomain 'paymenttransaction', 'paymenttransaction_av', @suffix, @in_domainid, 'domainid';
		EXEC sp_genericPoAvDeleteByDomain 'paymentinstrumentinfo', 'paymentinstrumentinf_av', @suffix, @in_domainid, 'domainid';
	COMMIT;
END;
GO
------------------------------------------------------------------------------------------
--
-- Name        : sp_deletePaymentByDomain$deleteFromST
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure removes all rows belonging to the domain with given uuid from staging tables and used by sp_deletePaymentByDomain.
--
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deletePaymentByDomain$deleteFromST
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('paymenttaxclassassignment', @suffix)  ,  ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('paymentusergroupassignment', @suffix) ,  ' WHERE domainid = ''', @in_domainid, ''' OR usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	
		EXEC sp_genericPoAvDeleteByDomain 'paymentcost', 'paymentcost_av', @suffix, in_domainid, 'domainid';
		
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('paymentconfiguration_aa', @suffix)	 ,  ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	
		EXEC sp_genericPoAvDeleteByDomain 'paymentconfiguration', 'paymentconfiguration_av', @suffix, in_domainid, 'domainid';

		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('paymentservicedomainassignment', @suffix) ,  ' WHERE assigneddomainid = ''', @in_domainid, ''' OR domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		
		EXEC sp_genericPoAvDeleteByDomain 'paymentserviceconfiguration', 'paymentserviceconfig_av', @suffix, in_domainid, 'domainid';
	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deletePaymentByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
--
-- Name        : sp_deletePaymentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes payment related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deletePaymentByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
--
------------------------------------------------------------------------------------------
AS
BEGIN
    IF dbo.sf_is_staging_table('paymentinstrumentinfo') = 1
	BEGIN
        EXEC sp_deletePaymentByDomain$deletePIIFromST @domainID, '$1';
        EXEC sp_deletePaymentByDomain$deletePIIFromST @domainID, '$2';
	END
    ELSE
	BEGIN
        EXEC sp_deletePaymentByDomain$deletePIIFromST @domainID, null;
    END;

    IF dbo.sf_is_staging_table('paymentconfiguration') = 1
	BEGIN
        EXEC sp_deletePaymentByDomain$deleteFromST @domainID, '$1';
        EXEC sp_deletePaymentByDomain$deleteFromST @domainID, '$2';
	END
    ELSE
	BEGIN
        EXEC sp_deletePaymentByDomain$deleteFromST @domainID, null;
    END;
END
GO
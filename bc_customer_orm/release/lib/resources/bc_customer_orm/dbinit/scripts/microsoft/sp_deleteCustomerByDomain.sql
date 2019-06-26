------------------------------------------------------------------------------------------
-- Name        : sp_deleteCustomerByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure clean up tables in staging scenario.
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteCustomerByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		-- delete data from table CompanyProfile_AV 
		SET @sqlQuery = CONCAT('DELETE cp FROM ', dbo.STAGING$get_table_name('CompanyProfile_AV', @suffix), ' cp',
		' WHERE ownerid IN (SELECT cp.uuid FROM ', dbo.STAGING$get_table_name('CompanyProfile', @suffix),  ' cp ', 
		'JOIN ', dbo.STAGING$get_table_name('Customer', @suffix),  ' c ', 
		'ON (cp.customerid = c.uuid) WHERE c.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		-- delete data from table CompanyProfile with correct foreign key
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CompanyProfile', @suffix),  
		' WHERE CustomerID in (SELECT uuid FROM customer WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		-- delete data from table CustomerProfileAssignment
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('CustomerProfileAssignment', @suffix),  
		' WHERE CustomerID in (SELECT uuid FROM customer WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		-- delete data from tables CustomerTypeSetting/AV by domainid
		EXEC sp_genericPoAvDeleteByDomain 'CustomerTypeSetting', 'CustomerTypeSetting_AV', @suffix, @in_domainid, 'domainid';

		-- delete data from tables CompanyProfile/AV by domainid
		EXEC sp_genericPoAvDeleteByDomain 'CompanyProfile', 'CompanyProfile_AV', @suffix, @in_domainid, 'domainid';
		-- delete data from tables Customer/AV
		EXEC sp_genericPoAvDeleteByDomain 'Customer', 'Customer_AV', @suffix, @in_domainid, 'domainid';

	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteCustomerByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteCustomerByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes customer belonging to domain with given domainid.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteCustomerByDomain 'domainID'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('Customer') = 1
	BEGIN
		--
		-- try to clean up staging tables (resp. tables)
		--
		EXEC sp_deleteCustomerByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteCustomerByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist
		-- try to delete from original table
		--
		EXEC sp_deleteCustomerByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
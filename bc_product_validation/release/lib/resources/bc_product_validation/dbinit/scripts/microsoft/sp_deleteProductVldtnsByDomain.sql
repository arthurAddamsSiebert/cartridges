CREATE OR ALTER PROCEDURE sp_deleteProductVldtnsByDomain
(
	@in_domainid NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProductVldtnsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ProductValidationResult
-- * ValidationRuleConfiguration
-- * ValidationRuleConfigurationAttributeValue
-- * ProductValidationAssortment
-- * ProductValidationAssortmentAttributeValue
--
--  owned by a given domain
--
-- Input       : in_domainid - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteProductVldtnsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		IF dbo.sf_is_staging_table('PRODUCT_VR') = 1
		BEGIN
			--
			-- try to clean up staging tables ($1 resp. $2 tables)
			--
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PRODUCT_VR', '$1'), ' WHERE domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PRODUCT_VR', '$2'), ' WHERE domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
		END
		ELSE
		BEGIN
			--
			-- staging tables do not exist -> try to DELETE FROM
			-- original table
			--
			SET @sqlQuery = CONCAT('DELETE FROM PRODUCT_VR WHERE domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
		END;

		IF dbo.sf_is_staging_table('PRODUCTCOMPLETENESS') = 1
		BEGIN
			--
			-- try to clean up staging tables ($1 resp. $2 tables)
			--
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PRODUCTCOMPLETENESS', '$1'), ' WHERE domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
			SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PRODUCTCOMPLETENESS', '$2'), ' WHERE domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
		END
		ELSE
		BEGIN
			--
			-- staging tables do not exist -> try to DELETE FROM
			-- original table
			--
			SET @sqlQuery = CONCAT('DELETE FROM PRODUCTCOMPLETENESS WHERE domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @sqlQuery, 0;
		END;

		EXEC sp_genStagPoAvDeleteByDomain 'VALIDATIONRULECONFIGURATION', 'VALIDATIONRULECONFIG_AV', @in_domainid, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'PRODUCTVALIDATIONASSORTMENT', 'PRODUCTVALIDATIONASS_AV', @in_domainid, 'domainid';

	COMMIT;
END
GO
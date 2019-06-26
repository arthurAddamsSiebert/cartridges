-- clean up tables in staging scenario
CREATE OR ALTER PROCEDURE sp_deleteAdvShippingByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		-------------------------
		-- ShippingCondition        .domainid
		--   ShippingCondition      .parentconditionid
		--   ShippingCondition_AV   .ownerid
		-------------------------

		--
		-- ShippingCondition_AV
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('ShippingCondition_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ShippingCondition', @suffix), ' pa
												WHERE av.ownerid = pa.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ShippingCondition', @suffix), ' po
															WHERE pa.parentconditionid = po.uuid AND po.domainid = ''', @in_domainid, '''
														)
										)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		--
		-- ShippingCondition
		--
		SET @sqlQuery = CONCAT('DELETE pa FROM ', dbo.STAGING$get_table_name('ShippingCondition', @suffix), ' pa
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('ShippingCondition', @suffix), ' po
											WHERE pa.parentconditionid = po.uuid AND po.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		EXEC sp_genericPoAvDeleteByDomain 'ShippingCondition','ShippingCondition_AV', @suffix, @in_domainid, 'domainid';	

    COMMIT;

END;
GO
CREATE OR ALTER PROCEDURE sp_deleteAdvShippingByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteAdvShippingByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes Advanced Shipping tables
--
-- * SHIPPINGCONDITION
-- * SHIPPINGCONDITION_AV
--
-- * FREIGHTCLASS
-- * FREIGHTCLASS_AV
--
-- * SHIPPINGACTION
-- * SHIPPINGACTION_AV
--
-- * SHIPPINGELIG
-- * SHIPPINGELIGASS
-- * SHIPPINGELIGASS_AV
-- * SHIPPINGELIG_AV
--
-- * SHIPPINGOVERRIDE
-- * SHIPPINGOVERRIDE_AV
--
-- * SHIPPINGRULE
-- * SHIPPINGRULE_AV
--
-- * SHIPPINGSURCHARGE
-- * SHIPPINGSURCHARGE_AV
-- * ...
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteAdvShippingByDomain 'ok0kab1lrh8aaadm9wc0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('ShippingRule') = 1
	BEGIN
		--
		-- try to clean up staging tables ( resp.  tables)
		--
		EXEC sp_deleteAdvShippingByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deleteAdvShippingByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deleteAdvShippingByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
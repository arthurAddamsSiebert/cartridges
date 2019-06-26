CREATE OR ALTER PROCEDURE sp_deletePromotionByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePromotionByDomain$deleteFromStagingTables
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure clean up tables in staging scenario and used in sp_deletePromotionByDomain
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(MAX);
		-------------------------
		-- RebateAction
		-------------------------
		--
		-- RebateFilterGroupAssignment.rebateactionid
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('RebateFilterGroupAssignment', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateAction', @suffix), ' po
											WHERE av.rebateactionid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
															WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--
		-- RebateAction_AV
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('RebateAction_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateAction', @suffix), ' po
											WHERE av.ownerid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
															WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--
		-- RebateAction
		--
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateAction', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
											WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		-------------------------------------
		-- RebateCondition.parentconditionid
		-------------------------------------

		--
		-- RebateCondition_AV
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('RebateCondition_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' pa
											WHERE av.ownerid = pa.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' po
															WHERE pa.parentconditionid = po.uuid
															AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
																			WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')
														)
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--
		-- RebateCondition
		--
		SET @sqlQuery = CONCAT('DELETE pa FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' pa
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' po
											WHERE pa.parentconditionid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
															WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		-------------------------
		-- RebateCondition
		-------------------------

		--
		-- RebateFilterGroupAssignment.rebateconditionid
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('RebateFilterGroupAssignment', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' po
											WHERE av.rebateconditionid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
															WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--
		-- RebateCondition_AV
		--
		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('RebateCondition_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' po
											WHERE av.ownerid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
															WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--
		-- RebateCondition
		--
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateCondition', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
											WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		----------------------------------------
		-- RebateFilterGroup
		-- RebateFilterGroupAssignment      .rebatefiltergroupid
		-- RebateFilterObjectAssignment     .rebatefiltergroupid
		-- RebateFilterObjectAssignment     .domainid
		----------------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateFilterGroupAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateFilterGroup', @suffix), ' p
											WHERE po.rebatefiltergroupid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateFilterObjectAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RebateFilterGroup', @suffix), ' p
											WHERE po.rebatefiltergroupid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateFilterGroup', @suffix), ' po
							WHERE po.domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateFilterObjectAssignment', @suffix), ' po
							WHERE po.domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		----------------------------------------
		-- RebateFilterObjectAssignment
		----------------------------------------


		----------------------------------------
		-- RebateFilterGroupAssignment.rebateid
		----------------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateFilterGroupAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
											WHERE po.rebateid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--------------------------------
		-- RebateRuleAssignment
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('RebateRuleAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' p
											WHERE po.rebateuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		--------------------------------
		-- Rebate/AV
		--------------------------------

		EXEC sp_genericPoAvDeleteByDomain 'Rebate','Rebate_AV', @suffix, @in_domainid, 'domainid';

		--------------------------------
		-- Campaign
		--------------------------------

		EXEC sp_genericPoAvDeleteByDomain 'Campaign','Campaign_AV', @suffix, @in_domainid, 'domainid';

		--------------------------------
		-- ActivePromoProducts
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('ActivePromoProducts', null), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--------------------------------
		-- PromoCodeGroupPromoAssignment
		-- PromotionNote
		-- PromotionOrderAssignment
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromoCodeGroupPromoAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromotionNote', null), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromotionOrderAssignment', null), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--------------------------------
		-- Promotion_AA
		-- Promotion_PA
		-- Promotion/AV
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('Promotion_PA', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('Promotion_AA', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		EXEC sp_genericPoAvDeleteByDomain 'Promotion','Promotion_AV', @suffix, @in_domainid, 'domainid';

		--------------------------------
		-- PromotionCodeGroup/AV
		-- PromotionCodeGroup_AA            .promotioncodegroupid
		-- PromoCodeGroupPromoAssignment    .promocodegroupuuid
		-- PromoCodeGroupUgrpAssignment     .promocodegroupuuid
		-- PromoCodeGrpChannelAssignment    .promocodegroupuuid
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromoCodeGrpChannelAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PromotionCodeGroup', @suffix), ' p
											WHERE po.promocodegroupuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromoCodeGroupUgrpAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PromotionCodeGroup', @suffix), ' p
											WHERE po.promocodegroupuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromoCodeGroupPromoAssignment', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PromotionCodeGroup', @suffix), ' p
											WHERE po.promocodegroupuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromotionCodeGroup_AA', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PromotionCodeGroup', @suffix), ' p
											WHERE po.promotioncodegroupid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		EXEC sp_genericPoAvDeleteByDomain 'PromotionCodeGroup','PromotionCodeGroup_AV', @suffix, @in_domainid, 'domainid';

		--------------------------------
		-- PromotionCode/AV
		-- PromotionCodeOrderAssignment
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('PromotionCodeOrderAssignment', null), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('PromotionCode', @suffix), ' p
											WHERE po.promotioncodeuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		EXEC sp_genericPoAvDeleteByDomain 'PromotionCode','PromotionCode_AV', @suffix, @in_domainid, 'domainid';

		--------------------------------
		-- Rebate/AV
		--------------------------------

		SET @sqlQuery = CONCAT('DELETE av FROM ', dbo.STAGING$get_table_name('Rebate_AV', @suffix), ' av
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' po
											WHERE av.ownerid = po.uuid
												AND EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
															WHERE po.promotionuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')
											)');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @sqlQuery = CONCAT('DELETE po FROM ', dbo.STAGING$get_table_name('Rebate', @suffix), ' po
							WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('Promotion', @suffix), ' p
											WHERE po.promotionuuid = p.uuid AND p.domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		--------------------------------
		-- CompiledPromotion
		--------------------------------
		EXEC sp_genStagPoAvDeleteByDomain 'CompiledPromotion', null, @in_domainID, 'domainid';

    COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deletePromotionByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deletePromotionByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes
--
-- * PromotionPO
-- * PromotionPOAttributeValuePO
-- * RebatePO
-- * RebatePOAttributeValuePO
-- * RebateRuleAssignmentPO
-- * ...
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletepromotionbydomain 'ok0kab1lrh8aaadm9wc0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN

	IF dbo.sf_is_staging_table('Promotion') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deletePromotionByDomain$deleteFromStagingTables @domainID, '$1';
		EXEC sp_deletePromotionByDomain$deleteFromStagingTables @domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to DELETE FROM
		-- original table
		--
		EXEC sp_deletePromotionByDomain$deleteFromStagingTables @domainID, null;
	END;
END
GO
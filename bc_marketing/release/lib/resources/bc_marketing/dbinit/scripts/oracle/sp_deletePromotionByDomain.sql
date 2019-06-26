CREATE OR REPLACE PROCEDURE sp_deletePromotionByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deletePromotionByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
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
-- Example     : exec sp_deletepromotionbydomain('ok0kab1lrh8aaadm9wc0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

    -------------------------
    -- RebateAction
    -------------------------

        --
        -- RebateFilterGroupAssignment.rebateactionid
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterGroupAssignment', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateAction', suffix)||' po
                                           WHERE av.rebateactionid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                                          WHERE po.rebateid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

        --
        -- RebateAction_AV
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateAction_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateAction', suffix)||' po
                                           WHERE av.ownerid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                                          WHERE po.rebateid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

        --
        -- RebateAction
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateAction', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                           WHERE po.rebateid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

    -------------------------------------
    -- RebateCondition.parentconditionid
    -------------------------------------

        --
        -- RebateCondition_AV
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateCondition_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateCondition', suffix)||' pa
                                           WHERE av.ownerid = pa.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateCondition', suffix)||' po
                                                          WHERE pa.parentconditionid = po.uuid
                                                            AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                                                         WHERE po.rebateid = p.uuid AND p.domainid = :domainid
                                                                       )
                                                        )
                                         )'
                    USING in_domainid;

        --
        -- RebateCondition
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateCondition', suffix)||' pa
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateCondition', suffix)||' po
                                           WHERE pa.parentconditionid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                                          WHERE po.rebateid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

    -------------------------
    -- RebateCondition
    -------------------------

        --
        -- RebateFilterGroupAssignment.rebateconditionid
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterGroupAssignment', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateCondition', suffix)||' po
                                           WHERE av.rebateconditionid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                                          WHERE po.rebateid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

        --
        -- RebateCondition_AV
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateCondition_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateCondition', suffix)||' po
                                           WHERE av.ownerid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                                          WHERE po.rebateid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

        --
        -- RebateCondition
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateCondition', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                           WHERE po.rebateid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;


    ----------------------------------------
    -- RebateFilterGroup
    -- RebateFilterGroupAssignment      .rebatefiltergroupid
    -- RebateFilterObjectAssignment     .rebatefiltergroupid
    -- RebateFilterObjectAssignment     .domainid
    ----------------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterGroupAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateFilterGroup', suffix)||' p
                                           WHERE po.rebatefiltergroupid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterObjectAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RebateFilterGroup', suffix)||' p
                                           WHERE po.rebatefiltergroupid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterGroup', suffix)||' po
                            WHERE po.domainid = :domainid'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterObjectAssignment', suffix)||' po
                            WHERE po.domainid = :domainid'
                    USING in_domainid;

    ----------------------------------------
    -- RebateFilterObjectAssignment
    ----------------------------------------


    ----------------------------------------
    -- RebateFilterGroupAssignment.rebateid
    ----------------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateFilterGroupAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                           WHERE po.rebateid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

    --------------------------------
    -- RebateRuleAssignment
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RebateRuleAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' p
                                           WHERE po.rebateuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

    --------------------------------
    -- Rebate/AV
    --------------------------------

        sp_genericPoAvDeleteByDomain('Rebate','Rebate_AV', suffix, in_domainid, 'domainid');

    --------------------------------
    -- Campaign
    --------------------------------

        sp_genericPoAvDeleteByDomain('Campaign','Campaign_AV', suffix, in_domainid, 'domainid');

    --------------------------------
    -- ActivePromoProducts
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ActivePromoProducts', null)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

    --------------------------------
    -- PromoCodeGroupPromoAssignment
    -- PromotionNote
    -- PromotionOrderAssignment
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromoCodeGroupPromoAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromotionNote', null)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromotionOrderAssignment', null)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

    --------------------------------
    -- Promotion_AA
    -- Promotion_PA
    -- Promotion/AV
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Promotion_PA', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Promotion_AA', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        sp_genericPoAvDeleteByDomain('Promotion','Promotion_AV', suffix, in_domainid, 'domainid');

    --------------------------------
    -- PromotionCodeGroup/AV
    -- PromotionCodeGroup_AA            .promotioncodegroupid
    -- PromoCodeGroupPromoAssignment    .promocodegroupuuid
    -- PromoCodeGroupUgrpAssignment     .promocodegroupuuid
    -- PromoCodeGrpChannelAssignment    .promocodegroupuuid
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromoCodeGrpChannelAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PromotionCodeGroup', suffix)||' p
                                           WHERE po.promocodegroupuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromoCodeGroupUgrpAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PromotionCodeGroup', suffix)||' p
                                           WHERE po.promocodegroupuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromoCodeGroupPromoAssignment', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PromotionCodeGroup', suffix)||' p
                                           WHERE po.promocodegroupuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromotionCodeGroup_AA', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PromotionCodeGroup', suffix)||' p
                                           WHERE po.promotioncodegroupid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        sp_genericPoAvDeleteByDomain('PromotionCodeGroup','PromotionCodeGroup_AV', suffix, in_domainid, 'domainid');

    --------------------------------
    -- PromotionCode/AV
    -- PromotionCodeOrderAssignment
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PromotionCodeOrderAssignment', null)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PromotionCode', suffix)||' p
                                           WHERE po.promotioncodeuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

        sp_genericPoAvDeleteByDomain('PromotionCode','PromotionCode_AV', suffix, in_domainid, 'domainid');

    --------------------------------
    -- Rebate/AV
    --------------------------------

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rebate_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Rebate', suffix)||' po
                                           WHERE av.ownerid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                                          WHERE po.promotionuuid = p.uuid AND p.domainid = :domainid)
                                         )'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rebate', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('Promotion', suffix)||' p
                                           WHERE po.promotionuuid = p.uuid AND p.domainid = :domainid
                                         )'
                    USING in_domainid;

    --------------------------------
    -- CompiledPromotion
    --------------------------------

        sp_genStagPoAvDeleteByDomain('CompiledPromotion', null, domainID, 'domainid');


        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('Promotion') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deletePromotionByDomain;
/

show errors;


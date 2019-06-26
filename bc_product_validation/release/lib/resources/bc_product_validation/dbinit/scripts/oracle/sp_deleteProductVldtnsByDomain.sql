CREATE OR REPLACE PROCEDURE sp_deleteProductVldtnsByDomain (in_domainid IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteProductValidationsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Hristo Todorov
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
-- Example     : exec sp_deleteProductVldtnsByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    IF sf_is_staging_table('PRODUCT_VR') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PRODUCT_VR', '$1')||' WHERE domainid = :in_domainid' USING in_domainid;
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PRODUCT_VR', '$2')||' WHERE domainid = :in_domainid' USING in_domainid;
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        EXECUTE IMMEDIATE 'DELETE FROM PRODUCT_VR WHERE domainid = :in_domainid' USING in_domainid;
    END IF;
	
    IF sf_is_staging_table('PRODUCTCOMPLETENESS') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PRODUCTCOMPLETENESS', '$1')||' WHERE domainid = :in_domainid' USING in_domainid;
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PRODUCTCOMPLETENESS', '$2')||' WHERE domainid = :in_domainid' USING in_domainid;
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        EXECUTE IMMEDIATE 'DELETE FROM PRODUCTCOMPLETENESS WHERE domainid = :in_domainid' USING in_domainid;
    END IF;
    
    sp_genStagPoAvDeleteByDomain('VALIDATIONRULECONFIGURATION', 'VALIDATIONRULECONFIG_AV', in_domainid, 'domainid');
	sp_genStagPoAvDeleteByDomain('PRODUCTVALIDATIONASSORTMENT', 'PRODUCTVALIDATIONASS_AV', in_domainid, 'domainid');

    COMMIT;

END sp_deleteProductVldtnsByDomain;
/

show errors;

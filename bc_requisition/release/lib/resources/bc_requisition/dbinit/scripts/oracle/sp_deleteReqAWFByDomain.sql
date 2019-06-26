CREATE OR REPLACE PROCEDURE sp_deleteReqAWFByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteRequisitionAWFByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * RequisitionAWFDefinitionPO
-- * RequisitionAWFDefinitionPOAttributeValue
--
-- * RequisitionAWFSequencePO
-- * RequisitionAWFSequencePOAttributeValue
--
-- * RequisitionAWFStepPO
-- * RequisitionAWFStepPOAttributeValue
--
-- * ActiveReqAWFDefAssignmentPO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteReqAWFByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        --
        -- RequisitionAWFStep
        --
		sp_genericPoAvDeleteByDomain('RequisitionAWFStep','RequisitionAWFStep_AV', suffix, in_domainid, 'domainid');	

        --
        -- RequisitionAWFSequence
        --			
		sp_genericPoAvDeleteByDomain('RequisitionAWFSequence','RequisitionAWFSequen_AV', suffix, in_domainid, 'domainid');	

        --
        -- RequisitionAWFDefinition
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ActiveReqAWFDefAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('RequisitionAWFDefinition', suffix)||' po
                                           WHERE a.awfdefinitionuuid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;
					
		sp_genericPoAvDeleteByDomain('RequisitionAWFDefinition','RequisitionAWFDefini_AV', suffix, in_domainid, 'domainid');	

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('RequisitionAWFDefinition') THEN
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

END sp_deleteReqAWFByDomain;
/

show errors;

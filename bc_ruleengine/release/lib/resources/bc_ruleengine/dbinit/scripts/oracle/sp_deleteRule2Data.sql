CREATE OR REPLACE PROCEDURE sp_deleteRule2Data (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteRulesByDomain
-- History     : user             date       - desc
--  
-- Created     : Daniel Reinhardt
-- Description : This procedure deletes rule2 related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteRule2Data('domainid')
------------------------------------------------------------------------------------------

AS

	PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
	    
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_Binding',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_BoundObject',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleExprBoundObjAssignM',suffix)||' WHERE ruleexpressionid IN (SELECT uuid FROM '||staging.get_table_name('Rule2_Expression',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_Expression_AV',suffix)||' WHERE OwnerID IN (SELECT uuid FROM '||staging.get_table_name('Rule2_Expression',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_Expression',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RHSACTION',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RHSOperationPA_AV',suffix)||' WHERE OwnerID IN (SELECT uuid FROM '||staging.get_table_name('Rule2_RHSOperation',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RHSOperation',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RHSOperationParameter',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_Rule',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleAttribute',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleFunction_AV',suffix)||' WHERE OwnerID IN (SELECT uuid FROM '||staging.get_table_name('Rule2_RuleFunction',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleFunction',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleLHS',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleExprBoundObjAssignM',suffix)||' WHERE ruleexpressionid IN (SELECT uuid FROM '||staging.get_table_name('Rule2_Expression',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RulePckgRuleFnctionAssig',suffix)||' WHERE rulepackageid IN (SELECT uuid FROM '||staging.get_table_name('Rule2_RulePackage',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RulePackageRuleAssignmen',suffix)||' WHERE rulepackageid IN (SELECT uuid FROM '||staging.get_table_name('Rule2_RulePackage',suffix)||' WHERE domainid=:domainid)' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RulePackage',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Rule2_RuleRHS',suffix)||' WHERE domainid = :domainid' USING in_domainid;
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('Rule2_Rule') THEN
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

END sp_deleteRule2Data;
/

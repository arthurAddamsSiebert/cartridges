CREATE OR REPLACE PROCEDURE sp_deleteDataMappingByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteDataMappingByDomain
-- History     : user             date       - desc
--             : ...
--               tkober           11/03/2011 - #ENFINITY-15683 sales organization cannot be completely deleted
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Danny Domhardt
-- Description : This procedure deletes
--
-- * ProductDataDeclaration
-- * ProductDataDeclarationList
-- * ProductDataMappingRule
-- * ProductDataMappingRuleSet
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteDataMappingByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------
AS
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS

    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('ProductDataMappingRu_AV', suffix) ||
            ' WHERE ownerid IN (SELECT mr.uuid FROM ' || staging.get_table_name('ProductDataMappingRule', suffix) || ' mr ' ||
                'JOIN ' || staging.get_table_name('ProductDataDeclaration', suffix) || ' dd ' ||
                'ON (mr.sourcedeclarationid = dd.uuid OR targetdeclarationid = dd.uuid)' ||
                    ' WHERE dd.domainid = :in_domainid)'
            USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('ProductDataMappingRule', suffix) || ' mr ' ||
            ' WHERE EXISTS (SELECT 1 FROM ' || staging.get_table_name('ProductDataDeclaration', suffix) || ' dd ' ||
                           ' WHERE (dd.uuid = mr.sourcedeclarationid OR dd.uuid = mr.targetdeclarationid) AND dd.domainid = :in_domainid)'
            USING in_domainid;

        sp_genericPoAvDeleteByDomain('ProductDataDeclaration', 'ProductDataDeclarati_AV', suffix, in_domainid, 'domainid');

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('ProductDataDeclarationList', suffix) ||
            ' WHERE domainid = :domainid'
            USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('ProductDataMappingRuleSet', suffix) ||
            ' WHERE domainid = :domainid OR providingdomainid = :providingdomainid'
            USING in_domainid, in_domainid;

        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('ProductDataDeclaration') THEN
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

END sp_deleteDataMappingByDomain;
/

show errors;

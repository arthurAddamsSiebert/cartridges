CREATE OR REPLACE PROCEDURE sp_deletePriceScaleByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deletePriceScaleByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * PriceScaleEntry
-- * PriceScaleEntryAttributeValue
--
-- * PriceScaleTable
-- * PriceScaleTableAttributeValue
-- * PriceScaleTableAssignment
--
-- * PriceDefinitionProductBinding
-- * PriceDefinitionProductBindingAttributeValue
--
--  owned by a given domain or referring us usergroup of the given domain
--  also removes depending PriceDefinitionProductBinding and PriceDefinitionProductBinding_AV
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePriceScaleByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        --
        -- PriceScaleEntry
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceScaleEntry_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceScaleEntry', suffix)||' po
                                           WHERE av.ownerid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceScaleTable', suffix)||' p
                                                          WHERE po.pricescaletableid = p.uuid
                                                            AND (p.domainid = :domainid OR p.usergroupdomainid = :usergroupdomainid))
                                         )'
                    USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceScaleEntry', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceScaleTable', suffix)||' p
                                           WHERE po.pricescaletableid = p.uuid
                                            AND (p.domainid = :domainid OR p.usergroupdomainid = :usergroupdomainid)
                                         )'
                    USING in_domainid, in_domainid;

        --
        -- PriceScaleTable, PriceScaleTableAssignment
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceScaleTableAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceScaleTable', suffix)||' po
                                           WHERE a.pricescaletableuuid = po.uuid
                                             AND (po.domainid = :domainid OR po.usergroupdomainid = :usergroupdomainid))'
                    USING in_domainid, in_domainid;
					
		sp_genericPoAvDeleteByDomain('PriceScaleTable','PriceScaleTable_AV', suffix, in_domainid, 'domainid');	
		sp_genericPoAvDeleteByDomain('PriceScaleTable','PriceScaleTable_AV', suffix, in_domainid, 'usergroupdomainid');	

        --
        -- PriceDefinitionProductBinding
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceDefinitionProdu_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceDefinitionProductBinding', suffix)||' po
                                           WHERE av.ownerid = po.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceScaleTable', suffix)||' p
                                                          WHERE po.pricedefinitionid = p.uuid
                                                            AND (p.domainid = :domainid OR p.usergroupdomainid = :usergroupdomainid))
                                         )'
                    USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PriceDefinitionProductBinding', suffix)||' po
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('PriceScaleTable', suffix)||' p
                                           WHERE po.pricedefinitionid = p.uuid
                                            AND (p.domainid = :domainid OR p.usergroupdomainid = :usergroupdomainid)
                                         )'
                    USING in_domainid, in_domainid;

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('PriceScaleTable') THEN
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

END sp_deletePriceScaleByDomain;
/

show errors;

CREATE OR REPLACE PROCEDURE sp_deleteTaxByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteTaxByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner
-- Description : This procedure deletes
--
-- * taxrate
-- * basictaxclass_av
-- * basictaxclass
--
-- * jurisdictionmapping
-- * taxjurisdiction_av
-- * taxjurisdiction
--
-- * taxjurisdictionconfig
-- * taxjurisdictionconfi_AV
--
-- * basictaxclassconfig
-- * basictaxclassconfig_AV
--
--  owned by a given domain
--
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteTaxByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        --
        -- avoid cyclic integrity constraint violation  - child record found, if foreign key constraints enabled
        -- TAXJURISDICTIONCONFIG <-> TAXJURISDICTION
        -- BASICTAXCLASSCONFIG   <-> BASICTAXCLASS
        --
        EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('taxjurisdictionconfig', suffix)||' SET defaulttaxjurisdictionid = NULL WHERE domainid = :in_domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('basictaxclassconfig',   suffix)||' SET defaulttaxclassid        = NULL WHERE domainid = :in_domainid' USING in_domainid;
        COMMIT;

        --
        -- JurisdictionMapping
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('JurisdictionMapping', suffix)||' WHERE domainid = :in_domainid' USING in_domainid;
        COMMIT;

        --
        -- BasicTaxClass
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TaxRate', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('BasicTaxClass', suffix)||' po
                                           WHERE a.taxclassid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;
					
		sp_genericPoAvDeleteByDomain('BasicTaxClass', 'BasicTaxClass_AV', suffix, in_domainid, 'domainid');

        --
        -- TaxJurisdiction
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('JurisdictionMapping', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('TaxJurisdiction', suffix)||' po
                                           WHERE a.taxjurisdictionid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TaxRate', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('TaxJurisdiction', suffix)||' po
                                           WHERE a.taxjurisdictionid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;
					
		sp_genericPoAvDeleteByDomain('TaxJurisdiction', 'TaxJurisdiction_AV', suffix, in_domainid, 'domainid');

        --
        -- TaxJurisdictionConfig
        --

		sp_genericPoAvDeleteByDomain('TaxJurisdictionConfig', 'TaxJurisdictionConfi_AV', suffix, in_domainid, 'domainid');
					
        --
        -- BasicTaxClassConfig
        --

		sp_genericPoAvDeleteByDomain('BasicTaxClassConfig', 'BasicTaxClassConfig_AV', suffix, in_domainid, 'domainid');
					
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('BasicTaxClass') THEN
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

END sp_deleteTaxByDomain;
/

show errors

CREATE OR REPLACE PROCEDURE sp_deleteAdvShippingByDomain (domainID IN VARCHAR2)


------------------------------------------------------------------------------------------
-- Name        : sp_deleteAdvShippingByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Thomas Kober
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
-- Example     : exec sp_deleteAdvShippingByDomain('ok0kab1lrh8aaadm9wc0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

    -------------------------
    -- ShippingCondition        .domainid
    --   ShippingCondition      .parentconditionid
    --   ShippingCondition_AV   .ownerid
    -------------------------

        --
        -- ShippingCondition_AV
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ShippingCondition_AV', suffix)||' av
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('ShippingCondition', suffix)||' pa
                                           WHERE av.ownerid = pa.uuid
                                             AND EXISTS (SELECT 1 FROM '||staging.get_table_name('ShippingCondition', suffix)||' po
                                                          WHERE pa.parentconditionid = po.uuid AND po.domainid = :domainid
                                                        )
                                         )'
                    USING in_domainid;

        --
        -- ShippingCondition
        --
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ShippingCondition', suffix)||' pa
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('ShippingCondition', suffix)||' po
                                           WHERE pa.parentconditionid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;

		
		sp_genericPoAvDeleteByDomain('ShippingCondition','ShippingCondition_AV', suffix, in_domainid, 'domainid');	
					
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('ShippingRule') THEN
        --
        -- try to clean up staging tables ( resp.  tables)
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

END sp_deleteAdvShippingByDomain;
/

show errors;


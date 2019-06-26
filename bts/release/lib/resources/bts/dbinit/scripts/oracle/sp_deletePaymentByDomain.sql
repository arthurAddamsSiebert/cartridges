CREATE OR REPLACE PROCEDURE sp_deletePaymentByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
--
-- Name        : sp_deletePaymentByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner
-- Description : This procedure deletes payment related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deletePaymentByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
--
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to the domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deletePIIFromST(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

		sp_genericPoAvDeleteByDomain('paymenthistory', 'paymenthistory_av', suffix, in_domainid, 'domainid');
		sp_genericPoAvDeleteByDomain('paymenttransaction', 'paymenttransaction_av', suffix, in_domainid, 'domainid');
		sp_genericPoAvDeleteByDomain('paymentinstrumentinfo', 'paymentinstrumentinf_av', suffix, in_domainid, 'domainid');
        COMMIT;

    END;

    PROCEDURE deleteFromST(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('paymenttaxclassassignment', suffix)  || ' WHERE domainid = :in_domainid' USING IN in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('paymentusergroupassignment', suffix) || ' WHERE domainid = :in_domainid OR usergroupdomainid = :in_domainid' USING IN in_domainid, in_domainid;
		sp_genericPoAvDeleteByDomain('paymentcost', 'paymentcost_av', suffix, in_domainid, 'domainid');
		
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('paymentconfiguration_aa', suffix)	 || ' WHERE domainid = :in_domainid' USING IN in_domainid;	
		sp_genericPoAvDeleteByDomain('paymentconfiguration', 'paymentconfiguration_av', suffix, in_domainid, 'domainid');

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('paymentservicedomainassignment', suffix) || ' WHERE assigneddomainid = :in_domainid OR domainid = :in_domainid' USING IN in_domainid, in_domainid;

		sp_genericPoAvDeleteByDomain('paymentserviceconfiguration', 'paymentserviceconfig_av', suffix, in_domainid, 'domainid');
		COMMIT;
		
    END;

BEGIN

    IF sf_is_staging_table('paymentinstrumentinfo') THEN
        deletePIIFromST(domainID, '$1');
        deletePIIFromST(domainID, '$2');
    ELSE
        deletePIIFromST(domainID, null);
    END IF;

    IF sf_is_staging_table('paymentconfiguration') THEN
        deleteFromST(domainID, '$1');
        deleteFromST(domainID, '$2');
    ELSE
        deleteFromST(domainID, null);
    END IF;

END sp_deletePaymentByDomain;
/

show errors

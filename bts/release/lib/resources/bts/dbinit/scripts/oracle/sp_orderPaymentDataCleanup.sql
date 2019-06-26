create or replace
PROCEDURE sp_orderPaymentDataCleanup
(
    domainID IN VARCHAR2,       -- the domain ID in which objects are deleted 
    olderThan IN NUMBER         -- minimum number of days since creation of the order 
)
AS

------------------------------------------------------------------------------------------
-- Name        : sp_orderPaymentDataCleanup
-- History     : user             date       - desc
-- Created     : Tim Enderling    04/03/2012 
-- Description : This procedure deletes all PaymentInstrumentInfoAVs of PaymentInstrumentInfos 
--               used in Orders belonging to a given domain and older than a given number
--               of days.
-- Input       : domainID - the ID of the domain in which orders are looked up
--               olderThan -- minimum number of days since creation of the order 
-- Output      : none
-- Example     : exec sp_orderPaymentDataCleanup('OK0KAB1LrH8AAADm9wC0ccmj', 730)
--               (delete PaymentInstrumentInfoAVs for orders older than two years) 
------------------------------------------------------------------------------------------

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2, olderThan IN NUMBER)
    AS
    BEGIN
         EXECUTE IMMEDIATE
        'DELETE FROM '||staging.get_table_name('paymentinstrumentinf_av', suffix)||' av WHERE av.ownerid IN (
            SELECT pii.uuid FROM '||staging.get_table_name('paymentinstrumentinfo', suffix)||' pii WHERE pii.lineitemctnrid IN (
              SELECT ord.uuid FROM '||staging.get_table_name('isorder', suffix)||' ord 
                WHERE ord.domainid = :domainid 
                      AND creationdate < (UTCTIMESTAMP() - :olderThan)
            )
          )'
        USING in_domainid, olderThan;        
    END;
BEGIN

    IF sf_is_staging_table('paymentinstrumentinfo') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1', olderThan);
        deleteFromStagingTables(domainID, '$2', olderThan);
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        deleteFromStagingTables(domainID, null, olderThan);
    END IF;

END sp_orderPaymentDataCleanup;
/

show errors
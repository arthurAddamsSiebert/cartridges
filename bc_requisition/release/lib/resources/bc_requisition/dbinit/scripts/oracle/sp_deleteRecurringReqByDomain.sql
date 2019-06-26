CREATE OR REPLACE PROCEDURE sp_deleteRecurringReqByDomain(domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteRecurringReqByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     :
-- Description : This procedure deletes
--
-- * RecurringRequisition
-- * RecurringRequisition_AV
--
-- * RecurringDate
-- * RecurringDate_AV
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRecurringReqByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        RecReq_In_stmt VARCHAR2(500) := '
        (
          SELECT r.uuid
            FROM '||staging.get_table_name('RecurringRequisition', suffix)||' r
           WHERE r.domainid = :domainid
              OR r.basketid IN (SELECT uuid FROM '||staging.get_table_name('Basket', suffix)||' b WHERE b.domainid = :domainid)
              OR NOT EXISTS    (SELECT 1    FROM '||staging.get_table_name('Basket', suffix)||' b WHERE b.uuid  = r.basketid)
        )';

    BEGIN

        --
        -- RecurringDate
        --

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RecurringDate_AV', suffix)||'
                                  WHERE ownerid IN
                                  (
                                    SELECT uuid FROM '||staging.get_table_name('RecurringDate', suffix)||'
                                     WHERE RecurringRequisitionID IN ' || RecReq_In_stmt || '
                                  )'
                    USING in_domainid, in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RecurringDate', suffix)||'
                            WHERE RecurringRequisitionID IN ' || RecReq_In_stmt
                    USING in_domainid, in_domainid;

        --
        -- Order (RecurringRequisition)
        --

        EXECUTE IMMEDIATE ' DELETE FROM '||staging.get_table_name('RecurringRequisition_AV', suffix)||'
                             WHERE ownerid IN ' || RecReq_In_stmt
                    USING in_domainid, in_domainid;


        EXECUTE IMMEDIATE ' DELETE FROM '||staging.get_table_name('RecurringRequisition', suffix)||'
                             WHERE uuid IN ' || RecReq_In_stmt
                    USING in_domainid, in_domainid;

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('RecurringRequisition') THEN
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

END sp_deleteRecurringReqByDomain;
/

show errors;


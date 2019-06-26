CREATE OR REPLACE PROCEDURE sp_deleteAdvancedShipByDomain(domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
--
-- Name        : sp_deleteAdvancedShipByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Sonja Egger
-- Description : This procedure deletes
--
-- * SHIPPINGBRACKETS
-- * SHIPPINGCHARGEPLANS
-- * SHIPPINGACTION
-- * SHIPPINGCONDITION
-- * SHIPPINGRULE
-- * SHIPPINGSURCHARGE
-- * SHIPPINGOVERRIDE
-- * SHIPPINGELIGASS
-- * SHIPPINGELIG
-- * FREIGHTCLASS
-- * ADVANCEDSHIPPINGMETHOD
-- and sets the relation in ProductLineItem to NULL
-- owned by a given domain
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteAdvancedShipByDomain(domainid)
--
------------------------------------------------------------------------------------------

AS
    parameter_null                      EXCEPTION;
    in_domainID                         advancedshippingmethod.domainID%TYPE := domainID;
    l_cnt NUMBER;

    PROCEDURE execute(stmt IN VARCHAR2, table_name IN VARCHAR2, clause IN VARCHAR2, aDomainID IN VARCHAR2) AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            EXECUTE IMMEDIATE stmt||' '||staging.get_table_name(table_name, '$1')||' '||clause USING aDomainID;
            EXECUTE IMMEDIATE stmt||' '||staging.get_table_name(table_name, '$2')||' '||clause USING aDomainID;
        ELSE
            EXECUTE IMMEDIATE stmt||' '||table_name||' '||clause USING aDomainID;
        END IF;
    END;

    PROCEDURE deleteShippingCondition(aDomainID IN VARCHAR2) AS
    BEGIN

        FOR i IN (SELECT uuid FROM SHIPPINGCONDITION WHERE shippingruleid IN (SELECT uuid FROM SHIPPINGRULE WHERE domainid = aDomainID))
        LOOP

            FOR z IN (select uuid from SHIPPINGCONDITION where parentconditionid = i.uuid)
            LOOP

                execute('DELETE FROM', 'SHIPPINGCONDITION_AV',
                        'WHERE ownerid = :uuid', z.uuid);
                execute('DELETE FROM', 'SHIPPINGCONDITION_AV',
                        'WHERE ownerid in (select uuid from SHIPPINGCONDITION where parentconditionid = :uuid)', z.uuid);
                execute('DELETE FROM', 'SHIPPINGCONDITION',
                        'WHERE parentconditionid = :uuid', z.uuid);
            END LOOP;
            execute('DELETE FROM', 'SHIPPINGCONDITION_AV',
                        'WHERE ownerid = :uuid', i.uuid);
            execute('DELETE FROM', 'SHIPPINGCONDITION',
                        'WHERE uuid = :uuid', i.uuid);
            execute('DELETE FROM', 'SHIPPINGCONDITION',
                        'WHERE parentconditionid = :uuid', i.uuid);

        END LOOP;
    END;

BEGIN
    --
    -- If Input NULL raise an EXCEPTION
    --
    IF (domainID IS NULL) THEN
      BEGIN
        RAISE parameter_null;
      END;
    END IF;

    UPDATE productlineitem SET shippingmethodid = NULL WHERE domainid = in_domainid;

------------------------------------------------------------------------------------------
--  SHIPPINGBRACKETS
    execute('DELETE FROM', 'SHIPPINGBRWEIGHT_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRWEIGHT WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGBRWEIGHT',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGBRVALUE_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRVALUE WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGBRVALUE',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGBRITEM_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRITEM WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGBRITEM',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGBRFLAT_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRFLAT WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGBRFLAT',
            'WHERE domainid = :domainid',
            domainID);

------------------------------------------------------------------------------------------
--  SHIPPINGCHARGEPLANS
    execute('DELETE FROM', 'SHIPPINGCHPLFLAT_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLFLAT WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGCHPLFLAT',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGCHPLFLEX_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLFLEX WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGCHPLFLEX',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGCHPLITEM_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLITEM WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGCHPLITEM',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGCHPLVALUE_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLVALUE WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGCHPLVALUE',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGCHPLWEIGHT_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLWEIGHT WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGCHPLWEIGHT',
            'WHERE domainid = :domainid',
            domainID);

------------------------------------------------------------------------------------------
--  SHIPPINGACTION
    execute('DELETE FROM', 'SHIPPINGACTION_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGACTION WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGACTION',
            'WHERE domainid = :domainid',
            domainID);

    deleteShippingCondition(domainID);

    execute('DELETE FROM', 'SHIPPINGRULE_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGRULE WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGRULE',
            'WHERE domainid = :domainid',
            domainID);

------------------------------------------------------------------------------------------
--  SHIPPINGSURCHARGE  AND ELIGIBILITY
    execute('DELETE FROM', 'SHIPPINGSURCHARGE_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGSURCHARGE WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGSURCHARGE',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGOVERRIDE_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGOVERRIDE WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGOVERRIDE',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGELIGASS_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGELIGASS WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGELIGASS',
            'WHERE domainid = :domainid',
            domainID);

    execute('DELETE FROM', 'SHIPPINGELIG_AV',
            'WHERE ownerid IN (SELECT uuid FROM SHIPPINGELIG WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'SHIPPINGELIG',
            'WHERE domainid = :domainid',
            domainID);

------------------------------------------------------------------------------------------
--  FREIGHTCLASS
    execute('DELETE FROM', 'FREIGHTCLASS_AV',
            'WHERE ownerid IN (SELECT uuid FROM FREIGHTCLASS WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'FREIGHTCLASS',
            'WHERE domainid = :domainid',
            domainID);

 ------------------------------------------------------------------------------------------
--  FINALLY ADVANCED_SHIPPINGMETHOD
    execute('DELETE FROM', 'advancedshippingmeth_av',
            'WHERE ownerid IN (SELECT uuid FROM advancedshippingmethod WHERE domainid = :domainid)',
            domainID);
    execute('DELETE FROM', 'advancedshippingmethod',
            'WHERE domainid = :domainid',
            domainID);

    commit;

EXCEPTION
  WHEN parameter_null THEN
      RAISE_APPLICATION_ERROR(-20101, 'domainID is NULL.');

  WHEN OTHERS THEN
        ROLLBACK;
        RAISE;

END sp_deleteAdvancedShipByDomain;
/

show errors
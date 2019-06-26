create or replace
PROCEDURE sp_deleteLineItemCtnrByDomain
(
  domainID                          IN VARCHAR2
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteLineItemCtnrByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     01/03/2008 - exception block removed
--             : Benjamin Holtz   10/08/2010 - delete childs from bundledproductlineitems
-- Created     : Dirk Kassner
-- Description : This procedure deletes basket/order related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteLineItemCtnrByDomain(domainid)
------------------------------------------------------------------------------------------
AS

  in_domainid                       Basket.domainid%TYPE := domainID;

BEGIN
    --
    --  to do: Delete assigned basket of an order?
    --

    --
    --  delete orders
    --

    FOR i IN (SELECT uuid FROM isorder WHERE domainid = in_domainid)
    LOOP

        --
        --  static addresses
        --

        delete from staticaddress_av where ownerid in (select uuid from staticaddress where lineitemctnrid = i.uuid);
        delete from staticaddress where lineitemctnrid = i.uuid;

        --
        --  service line items
        --

        delete from servicelineitem_av where ownerid in (select uuid from servicelineitem where lineitemctnrid = i.uuid);
        delete from servicelineitem where lineitemctnrid = i.uuid;

        --
        --  product line items
        --

        for k in (select b.uuid from bundledproductlineitem b, productlineitem p where b.productlineitemid = p.uuid and p.lineitemctnrid = i.uuid)
        loop

            for m in (select b.uuid from bundledproductlineitem b where b.parentid = k.uuid)
            loop
                delete from bundledproductlineit_av where ownerid = m.uuid;
                delete from bundledproductlineitem where uuid = m.uuid;
            end loop;

            delete from bundledproductlineit_av where ownerid = k.uuid;
            delete from bundledproductlineitem where uuid = k.uuid;

        end loop;

        delete from productlineitem_av where ownerid in (select uuid from productlineitem where lineitemctnrid = i.uuid);
        delete from productlineitem where lineitemctnrid = i.uuid;

        --
        --  line item groups
        --

        delete from lineitemgroup_av where ownerid in (select uuid from lineitemgroup where lineitemctnrid = i.uuid);
        delete from lineitemgroup where lineitemctnrid = i.uuid;

        --
        --  payment transaction / instrument info / history

        for k in (select uuid from paymentinstrumentinfo where lineitemctnrid=i.uuid)
        loop
            for l in (select uuid from paymenttransaction where paymentinstrumentinfoid=k.uuid)
            loop
                delete from paymenthistory_av where ownerid in (select uuid from paymenthistory where paymenttransactionid=l.uuid);
                delete from paymenthistory where paymenttransactionid=l.uuid;
                delete from paymenttransaction_av where ownerid =l.uuid;
                delete from paymenttransaction where uuid=l.uuid;
            end loop;

            delete from paymentinstrumentinf_av where ownerid = k.uuid;
            delete from paymentinstrumentinfo where uuid=k.uuid;
        end loop;

        --
        --  adjust objects referring to this order
        --

        update isorder set parentOrderID = null where parentOrderID = i.uuid;

    END LOOP;

	    --
        -- order
        --
	sp_genericPoAvDeleteByDomain('isorder', 'isorder_av', null, in_domainid, 'domainid');

    --
    -- delete baskets
    --

    FOR i IN (SELECT uuid FROM basket WHERE domainid = in_domainid)
    LOOP

        --
        --  static addresses
        --

        delete from basketaddress_av where ownerid in (select uuid from basketaddress where basketid = i.uuid);
        delete from basketaddress where basketid = i.uuid;

        --
        --  service line items
        --

        delete from servicelineitem_av where ownerid in (select uuid from servicelineitem where lineitemctnrid = i.uuid);
        delete from servicelineitem where lineitemctnrid = i.uuid;

        --
        --  product line items
        --

        for k in (select b.uuid from bundledproductlineitem b, productlineitem p where b.productlineitemid = p.uuid and p.lineitemctnrid = i.uuid)
        loop

            for m in (select b.uuid from bundledproductlineitem b where b.parentid = k.uuid)
            loop
                delete from bundledproductlineit_av where ownerid = m.uuid;
                delete from bundledproductlineitem where uuid = m.uuid;
            end loop;

            delete from bundledproductlineit_av where ownerid = k.uuid;
            delete from bundledproductlineitem where uuid = k.uuid;

        end loop;

        delete from productlineitem_av where ownerid in (select uuid from productlineitem where lineitemctnrid = i.uuid);
        delete from productlineitem where lineitemctnrid = i.uuid;

        --
        --  line item groups
        --

        delete from lineitemgroup_av where ownerid in (select uuid from lineitemgroup where lineitemctnrid = i.uuid);
        delete from lineitemgroup where lineitemctnrid = i.uuid;

        --
        --  basket payment transaction / instrument info / history
        --
        for k in (select uuid from paymentinstrumentinfo where lineitemctnrid=i.uuid)
        loop
            for l in (select uuid from paymenttransaction where paymentinstrumentinfoid=k.uuid)
            loop
                delete from paymenthistory_av where ownerid in (select uuid from paymenthistory where paymenttransactionid=l.uuid);
                delete from paymenthistory where paymenttransactionid=l.uuid;
                delete from paymenttransaction_av where ownerid =l.uuid;
                delete from paymenttransaction where uuid=l.uuid;
            end loop;

            delete from paymentinstrumentinf_av where ownerid = k.uuid;
            delete from paymentinstrumentinfo where uuid=k.uuid;
        end loop;

        --  payment instrument info

        delete from paymentinstrumentinf_av where ownerid in (select uuid from paymentinstrumentinfo where lineitemctnrid=i.uuid);
        delete from paymentinstrumentinfo where lineitemctnrid=i.uuid;


        --
        --  adjust objects referring to this basket
        --

        update isorder set basketid = null where basketid = i.uuid;

    END LOOP;

        --
        --  basket
        --
		sp_genericPoAvDeleteByDomain('basket', 'basket_av', null, in_domainid, 'domainid');

    --
    -- Delete all line items belonging to the domain to be deleted from a basket. This affects baskets,
    -- where the basket itself must not be deleted.
    -- Line item groups are not handled (may be, some empty groups remain).
    --

    --
    --  service line items
    --

    FOR i IN (SELECT s.uuid FROM servicelineitem s, basket b WHERE s.domainid = in_domainid and s.lineitemctnrid = b.uuid)
    LOOP

        delete from servicelineitem_av where ownerid = i.uuid;
        delete from servicelineitem where uuid = i.uuid;

    END LOOP;

    --
    --  product line items
    --

    FOR i IN (SELECT p.uuid FROM productlineitem p, basket b WHERE p.domainid = in_domainid and p.lineitemctnrid = b.uuid)
    LOOP

        delete from bundledproductlineit_av where ownerid in (select uuid from bundledproductlineitem where parentid in (select uuid from bundledproductlineitem where productlineitemid = i.uuid));
        delete from bundledproductlineitem where parentid in (select uuid from bundledproductlineitem where productlineitemid = i.uuid);

        delete from bundledproductlineit_av where ownerid in (select uuid from bundledproductlineitem where productlineitemid = i.uuid);
        delete from bundledproductlineitem where productlineitemid = i.uuid;

        delete from productlineitem_av where ownerid = i.uuid;
        delete from productlineitem where uuid = i.uuid;

    END LOOP;

    COMMIT;

END sp_deleteLineItemCtnrByDomain;

/

show errors
/
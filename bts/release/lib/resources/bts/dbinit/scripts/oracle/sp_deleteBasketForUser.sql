------------------------------------------------------------------------------------------
-- Name        : sp_deleteBasketForUser
-- Created     : Dirk Kassner
-- Description : This procedure deletes basket in status OPEN and when no order exists.
-- Input       : userID   The user id.
-- Output      : none
-- Example     : exec sp_deleteBasketForUser(userID)
------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE sp_deleteBasketForUser
(
  userID                            IN VARCHAR2
)
AS
  in_userid                         Basket.userid%TYPE := userid;
  i                                 INTEGER;
  k                                 integer;
BEGIN
    --
    -- delete baskets
    --

    FOR i IN (SELECT b.uuid FROM basket b WHERE b.userid = in_userid and b.status=0 and not exists (select * from isorder o where o.basketid=b.uuid))
    LOOP
        EXIT WHEN i.uuid = NULL;

        --
        --  basket addresses
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
            exit when k.uuid = null;

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

        --  payment instrument info

        delete from paymentinstrumentinf_av where ownerid in (select uuid from paymentinstrumentinfo where lineitemctnrid=i.uuid);
        delete from paymentinstrumentinfo where lineitemctnrid=i.uuid;


        --
        --  Basket
        --

        delete from basket_av where ownerid = i.uuid;
        delete from basket where uuid = i.uuid;

    END LOOP;

    commit;

END sp_deleteBasketForUser;
/
show errors

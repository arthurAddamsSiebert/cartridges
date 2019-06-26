CREATE OR REPLACE PROCEDURE sp_impex_delete_lineitemctnr(lineItemCtnrID IN VARCHAR2) AS
--
-- sp_impex_delete_lineitemctnr.sql
--
-- EnfinityMultiSite
-- Intershop Communications Inc. All rights reserved.
--
-- @author  : Sandro Farle
-- Used by  : com.intershop.beehive.bts.capi.impex.ElementBulkerSQLLDRLineItemCtnr
-- Used for : delete a lineitem container with all its depending parts:
--            staticaddresses, basketaddresses, service/product/bundledproduct-lineitens and all
--            their attributes
-- Parameter: lineItemCtnrID the UUID of the lineitemcontainer
--


   CURSOR staticaddress_csr(auuid staticaddress.lineitemctnrid%TYPE) IS (SELECT uuid FROM staticaddress WHERE lineitemctnrid = auuid);
   CURSOR basketaddress_csr(auuid basketaddress.basketid%TYPE) IS (SELECT uuid FROM basketaddress WHERE basketid = auuid);
   CURSOR servicelineitem_csr(auuid servicelineitem.lineitemctnrid%TYPE) IS (SELECT uuid FROM servicelineitem WHERE lineitemctnrid = auuid);
   CURSOR productlineitem_csr(auuid productlineitem.lineitemctnrid%TYPE) IS (SELECT uuid FROM productlineitem WHERE lineitemctnrid = auuid);
   CURSOR bundledproductlineitem_csr(auuid bundledproductlineitem.productlineitemid%TYPE) IS (SELECT uuid FROM bundledproductlineitem WHERE productlineitemid = auuid);
   CURSOR paymenttransaction_csr(auuid paymenttransaction.orderid%TYPE) IS (SELECT uuid, paymentinstrumentinfoid FROM paymenttransaction WHERE orderid = auuid);
   CURSOR lineitemgroup_csr(auuid lineitemgroup.lineitemctnrid%TYPE) IS (SELECT uuid FROM lineitemgroup WHERE lineitemctnrid = auuid);

BEGIN

   -- staticaddress
   FOR staticaddress_record IN staticaddress_csr(lineItemCtnrID) LOOP
      DELETE FROM staticaddress_av WHERE ownerid = staticaddress_record.uuid;
      DELETE FROM staticaddress WHERE uuid = staticaddress_record.uuid;
   END LOOP;
   
    -- basketaddress
   FOR basketaddress_record IN basketaddress_csr(lineItemCtnrID) LOOP
      DELETE FROM basketaddress_av WHERE ownerid = basketaddress_record.uuid;
      DELETE FROM basketaddress WHERE uuid = basketaddress_record.uuid;
   END LOOP;

   -- productlineitem
   FOR productlineitem_record IN productlineitem_csr(lineItemCtnrID) LOOP
      DELETE FROM productlineitem_av WHERE ownerid = productlineitem_record.uuid;
      DELETE FROM productlineitem WHERE uuid = productlineitem_record.uuid;
      -- bundledproductlineitem
      FOR bundledproductlineitem_record IN bundledproductlineitem_csr(productlineitem_record.uuid) LOOP

        -- remove all child bundled line items (and attribute values) of the currently selected bundled line item

        delete from bundledproductlineit_av where ownerid in
            (
                select uuid from bundledproductlineitem bpli
                connect by prior
                bpli.uuid = bpli.parentid
                start with bpli.uuid = bundledproductlineitem_record.uuid
            );

        delete from bundledproductlineitem where uuid in
            (
                select uuid from bundledproductlineitem bpli
                connect by prior
                bpli.uuid = bpli.parentid
                start with bpli.uuid = bundledproductlineitem_record.uuid
            );

      END LOOP;
   END LOOP;

   -- servicelineitem
   FOR servicelineitem_record IN servicelineitem_csr(lineItemCtnrID) LOOP
      DELETE FROM servicelineitem_av WHERE ownerid = servicelineitem_record.uuid;
      DELETE FROM servicelineitem WHERE uuid = servicelineitem_record.uuid;
   END LOOP;

   -- lineitemgroup
   FOR lineitemgroup_record IN lineitemgroup_csr(lineItemCtnrID) LOOP
      DELETE FROM lineitemgroup_av WHERE ownerid = lineitemgroup_record.uuid;
      DELETE FROM lineitemgroup WHERE uuid = lineitemgroup_record.uuid;
   END LOOP;

   -- paymenttransaction
   FOR paymenttransaction_record IN paymenttransaction_csr(lineItemCtnrID) LOOP
      DELETE FROM paymenttransaction_av WHERE ownerid = paymenttransaction_record.uuid;
      DELETE FROM paymenttransaction WHERE uuid = paymenttransaction_record.uuid;
      DELETE FROM paymentinstrumentinf_av WHERE ownerid = paymenttransaction_record.paymentinstrumentinfoid;
      DELETE FROM paymentinstrumentinfo WHERE uuid = paymenttransaction_record.paymentinstrumentinfoid;
   END LOOP;

	COMMIT;
END sp_impex_delete_lineitemctnr;
/

show errors
/



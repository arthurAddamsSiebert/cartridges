create or replace PROCEDURE sp_deleteOrders
(
  domainID        IN isorder.domainid%TYPE,
  excludedStates  IN VARCHAR2,
  maxNr           IN NUMBER
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteOrders
-- History     : user             date       - desc
--             : ...
--             : Ronny Wilms     03/08/2018 - initial implementation
-- Created     : Ronny Wilms
-- Description : This procedure deletes orders with activated flag TOBEDLETED FOR the given domain
--               except their state is explicitely excluded.
-- Input       : domainID       The domain id of the domain to be deleted.
--             : excludedStates The status codes to exclude from the deletion. Please note that ALL
--                              orders are deleted if te exclude list is empty, invalid or contains
--                              only "garbage". It is recommended to use following exclude list:
--                              '2, 13, 16', which is ensured by the default calling job.
--             : maxNr          The maximum numbers of orders to DELETE within a batch. If no
--                              value is given the number of orders to be deleted in this run 
--                              is not limited (and may take much longer time to complete).
-- Output      : none
-- Example     : exec sp_deleteOrders(domainid, excludedstates, maxnr)
------------------------------------------------------------------------------------------
AS
  --
  -- variables
  --
  tobedelete_uuid isorder.uuid%TYPE;
  b2b int;

  --
  --  define cursor with order to delete
  --
  CURSOR tobedelete_cur (
      in_domainid IN isorder.domainid%TYPE := domainID, 
      in_excludedstates IN VARCHAR2        := excludedStates,
      in_maxnr IN NUMBER                   := maxNr)
    IS
      SELECT uuid 
        FROM isorder 
        WHERE domainid = in_domainid
          AND tobedeletedflag = 1
          AND status NOT IN (
            SELECT nvl(regexp_substr(in_excludedstates, '[0-9]+', 1, LEVEL),-1) lvl
            FROM DUAL 
            CONNECT BY regexp_substr(in_excludedstates, '[0-9]+', 1, LEVEL) IS NOT NULL
          )
          AND (in_maxnr IS NULL OR rownum < 1 + in_maxnr);
  
BEGIN
	-- check if in B2B context be looking up table CONTRACTREVENUEASSIGNMENT
	SELECT count(*) INTO b2b FROM user_tables WHERE table_name = 'CONTRACTREVENUEASSIGNMENT';

    --
    --  begin with deletion of artifacts with references to an order
    --
    OPEN tobedelete_cur;    
    LOOP
      FETCH tobedelete_cur INTO tobedelete_uuid;
      EXIT WHEN tobedelete_cur%NOTFOUND
             OR tobedelete_cur%ROWCOUNT=0;

        --
        --  delete static addresses
        --
        DELETE FROM staticaddress_av WHERE ownerid IN (SELECT uuid FROM staticaddress WHERE lineitemctnrid = tobedelete_uuid);
        DELETE FROM staticaddress WHERE lineitemctnrid = tobedelete_uuid;

        --
        --  (B2B) update contract revenue assignment: remove reference to order and PLI 
        --
        IF (b2b = 1) THEN
        	EXECUTE IMMEDIATE 'UPDATE contractrevenueassignment SET orderuuid = NULL, productlineitemuuid = NULL WHERE orderuuid = ''' || tobedelete_uuid || '''';
    	END IF;
        
        --
        --  delete service line items
        --
        DELETE FROM servicelineitem_av WHERE ownerid IN (SELECT uuid FROM servicelineitem WHERE lineitemctnrid = tobedelete_uuid);
        DELETE FROM servicelineitem WHERE lineitemctnrid = tobedelete_uuid;
        DELETE FROM frimservicelineitem WHERE lineitemctnrid = tobedelete_uuid;
        
        --
        --  delete product line items and related artifacts
        --
        FOR k IN (SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid AND p.lineitemctnrid = tobedelete_uuid)
        LOOP

            FOR m IN (SELECT b.uuid FROM bundledproductlineitem b WHERE b.parentid = k.uuid)
            LOOP
                DELETE FROM bundledproductlineit_av WHERE ownerid = m.uuid;
                DELETE FROM bundledproductlineitem WHERE uuid = m.uuid;
            END LOOP;

            DELETE FROM bundledproductlineit_av WHERE ownerid = k.uuid;
            DELETE FROM bundledproductlineitem WHERE uuid = k.uuid;

        END LOOP;

        FOR k IN (SELECT uuid FROM productlineitem p WHERE p.lineitemctnrid = tobedelete_uuid)
        LOOP

            DELETE FROM deliverynote_av WHERE ownerid = k.uuid;
            DELETE FROM deliverynote WHERE uuid = k.uuid;

        END LOOP;

        DELETE FROM productlineitem_av WHERE ownerid IN (SELECT uuid FROM productlineitem WHERE lineitemctnrid = tobedelete_uuid);
        DELETE FROM productlineitem WHERE lineitemctnrid = tobedelete_uuid;
        DELETE FROM frimproductlineitem WHERE lineitemctnrid = tobedelete_uuid;

        --
        --  delete line item groups
        --
        DELETE FROM lineitemgroup_av WHERE ownerid IN (SELECT uuid FROM lineitemgroup WHERE lineitemctnrid = tobedelete_uuid);
        DELETE FROM lineitemgroup WHERE lineitemctnrid = tobedelete_uuid;
        
        --
        --  delete payment history entries / transactions / instruments 
        --
        FOR k IN (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid=tobedelete_uuid)
        LOOP
            FOR l IN (SELECT uuid FROM paymenttransaction WHERE paymentinstrumentinfoid=k.uuid)
            LOOP
                DELETE FROM paymenthistory_av WHERE ownerid IN (SELECT uuid FROM paymenthistory WHERE paymenttransactionid=l.uuid);
                DELETE FROM paymenthistory WHERE paymenttransactionid=l.uuid;
                DELETE FROM paymenttransaction_av WHERE ownerid =l.uuid;
                DELETE FROM paymenttransaction WHERE uuid=l.uuid;
            END LOOP;

            DELETE FROM paymentinstrumentinf_av WHERE ownerid = k.uuid;
            DELETE FROM paymentinstrumentinfo WHERE uuid=k.uuid;
        END LOOP;

        --
        --  adjust objects referring to this order
        --
        UPDATE isorder set parentOrderID = null WHERE parentOrderID = tobedelete_uuid;
        
        --
        --  (B2B) delete order cost objects
        --
        IF (b2b = 1) THEN
        	EXECUTE IMMEDIATE 'DELETE FROM ordercostobjectassignment WHERE targetid = ''' || tobedelete_uuid || '''';
    	END IF;
        
        UPDATE promotioncodeorderassignment SET orderuuid = NULL WHERE orderuuid = tobedelete_uuid;
        UPDATE promotionorderassignment SET orderuuid = NULL WHERE orderuuid = tobedelete_uuid;

    END LOOP;
    CLOSE tobedelete_cur;

	  --
    -- finally delete the orders itself
    --
    OPEN tobedelete_cur;    
    LOOP
      FETCH tobedelete_cur INTO tobedelete_uuid;
      EXIT WHEN tobedelete_cur%NOTFOUND
             OR tobedelete_cur%ROWCOUNT=0;
             
      DELETE FROM isorder_av WHERE ownerid = tobedelete_uuid;
      DELETE FROM isorder WHERE uuid = tobedelete_uuid;
      
    END LOOP;
    CLOSE tobedelete_cur;

    COMMIT;

END sp_deleteOrders;
/

show errors;

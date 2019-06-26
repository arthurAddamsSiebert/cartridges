------------------------------------------------------------------------------------------
-- Name        : sp_deleteLineItemForProduct
-- Created     : Dirk Kassner
-- Description : This procedure deletes product line items for a deleted product.
-- Input       : productSKU          The product sku.
-- Input       : productDomainName   The product domain name.
-- Output      : none
-- Example     : exec sp_deleteLineItemForProduct(productSKU, domainName)
------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE sp_deleteLineItemForProduct
(
  productSKU                        IN VARCHAR2,
  productDomainName                 IN VARCHAR2
)
AS
  in_sku                            productlineitem.offerproductrefproductsku%TYPE := productSKU;
  in_domainName                     productlineitem.offerproductrefdomainname%TYPE := productDomainName;
  i                                 INTEGER;
  k                                 INTEGER;
BEGIN
    --
    --  Bundled items.
    --  Select only items for a basket (therefore we join over productlineitem and basket).
    --


    FOR i IN (SELECT bpli.uuid
              FROM bundledproductlineitem bpli, productlineitem pli, basket b
              WHERE bpli.offerproductrefproductsku = in_sku
              and bpli.offerproductrefdomainname = in_domainName
              and bpli.productlineitemid = pli.uuid
              and pli.lineitemctnrid = b.uuid)
    LOOP

        delete from bundledproductlineit_av where ownerid = i.uuid;
        delete from bundledproductlineitem where uuid = i.uuid;

    END LOOP;

    --
    --  Product line items.
    --  Select only items for a basket (therefore we join over basket).
    --

    FOR i IN (SELECT pli.uuid
              FROM productlineitem pli, basket b
              WHERE offerproductrefproductsku = in_sku
              and offerproductrefdomainname = in_domainName
              and pli.lineitemctnrid = b.uuid)
    LOOP

        FOR k IN (select uuid from bundledproductlineitem where productlineitemid = i.uuid)
        LOOP

            delete from bundledproductlineit_av where ownerid = k.uuid;
            delete from bundledproductlineitem where uuid = k.uuid;

        end loop;

        delete from productlineitem_av where ownerid = i.uuid;
        delete from productlineitem where uuid = i.uuid;

    END LOOP;

    commit;

END sp_deleteLineItemForProduct;
/
show errors

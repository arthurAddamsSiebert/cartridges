CREATE OR REPLACE PROCEDURE sp_ImportUpdateProduct
(
  domainID                          IN VARCHAR2
)
AS
  in_domainid                       product.domainid%TYPE := domainID;
BEGIN

    update product p
        set p.defaultproductvariationid =
            (select i.defaultvariationid from importupdatedmaster i where p.uuid = i.uuid)
        where p.uuid in (select i.uuid from importupdatedmaster i);

    delete from importupdatedmaster where domainid = in_domainid;

    update product p
        set p.typecode =
            (select i.typecode from importupdatedtypecode i where i.uuid = p.uuid)
        where p.uuid in (select i.uuid from importupdatedtypecode i);

    update productcategoryassignment p
        set p.reptypecode =
            (select i.typecode from importupdatedtypecode i where i.uuid = p.productid)
        where p.productid in (select i.uuid from importupdatedtypecode i);

    delete from importupdatedtypecode where domainid = in_domainid;

    commit;
END sp_ImportUpdateProduct;
/
show errors

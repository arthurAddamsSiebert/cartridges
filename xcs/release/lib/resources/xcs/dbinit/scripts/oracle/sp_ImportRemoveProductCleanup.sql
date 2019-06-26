CREATE OR REPLACE PROCEDURE sp_ImportRemoveProductCleanup
(
  domainID                          IN VARCHAR2
)
AS
  in_domainid                       product.domainid%TYPE := domainID;
BEGIN
    delete from importremovedusergroupprice where domainid = in_domainid;
    delete from importremovedproductlistprice where domainid = in_domainid;
    delete from importremovedproductcostprice where domainid = in_domainid;
    delete from importremovedcatassignment where domainid = in_domainid;
    --delete from importremovedtypedcatassign where domainid = in_domainid;
    delete from importremovedproductra where domainid = in_domainid;
    delete from importupdatedproduct where domainid = in_domainid;
    delete from importremovedproduct where domainid = in_domainid;

    commit;
END sp_ImportRemoveProductCleanup;
/
show errors

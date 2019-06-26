CREATE OR REPLACE PROCEDURE sp_ImportRemoveProdRelCleanup      
(
  domainID                          IN VARCHAR2
)
AS
  in_domainid                       product.domainid%TYPE := domainID;
BEGIN

    delete from importremovedproductlink where domainid = in_domainid;
    delete from importremovedbundle where domainid = in_domainid;
    delete from importremovedmaster where domainid = in_domainid;
    delete from importupdatedmaster where domainid = in_domainid;
    delete from importupdatedtypecode where domainid = in_domainid;

    commit;
END sp_ImportRemoveProdRelCleanup;
/
show errors

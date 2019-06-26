CREATE OR REPLACE PROCEDURE sp_ImportRemoveProductRelation
(
  domainID                          IN VARCHAR2
)
AS
  in_domainid                       product.domainid%TYPE := domainID;
BEGIN

    delete from productlink_av where ownerid in (select uuid from productlink where (sourceid, targetid) in (select sourceid, targetid from importremovedproductlink));
    delete from productlink where (sourceid, targetid) in (select sourceid, targetid from importremovedproductlink);
    delete from importremovedproductlink where domainid = in_domainid;

    delete from bundleassignment where (bundleid, productid) in (select bundleid, productid from importremovedbundle);
    delete from importremovedbundle where domainid = in_domainid;

    delete from productvariationassignment where productvariationid in (select uuid from productvariation where productmasterid in (select uuid from importremovedmaster));
    delete from productvariationvalu_av where ownerid in (select uuid from productvariationvalue where variablevariationattributeid in (select uuid from variablevariationattribute where productmasterid in (select uuid from importremovedmaster)));
    delete from productvariationvalue where variablevariationattributeid in (select uuid from variablevariationattribute where productmasterid in (select uuid from importremovedmaster));
    delete from variablevariationatt_av where ownerid in (select uuid from variablevariationattribute where productmasterid in (select uuid from importremovedmaster));
    delete from variablevariationattribute where productmasterid in (select uuid from importremovedmaster);
    delete from productvariation where productmasterid in (select uuid from importremovedmaster);
    delete from importremovedmaster where domainid = in_domainid;

    commit;

END sp_ImportRemoveProductRelation;
/
show errors

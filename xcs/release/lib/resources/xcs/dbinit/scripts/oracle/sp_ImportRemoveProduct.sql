CREATE OR REPLACE PROCEDURE sp_ImportRemoveProduct
(
  domainID                          IN VARCHAR2
)
AS
  in_domainid                       product.domainid%TYPE := domainID;
BEGIN
    --
    --  Variation objects of a master
    --

-- cursor?

    delete from productvariationassignment where productvariationid in (select uuid from productvariation where productmasterid in (select uuid from importremovedproduct where ismaster = 1));
    delete from productvariationvalu_av where ownerid in (select uuid from productvariationvalue where variablevariationattributeid in (select uuid from variablevariationattribute where productmasterid in (select uuid from importremovedproduct where ismaster = 1)));
    delete from productvariationvalue where variablevariationattributeid in (select uuid from variablevariationattribute where productmasterid in (select uuid from importremovedproduct where ismaster = 1));
    delete from variablevariationatt_av where ownerid IN (select uuid from variablevariationattribute where productmasterid in (select uuid from importremovedproduct where ismaster = 1));
    delete from variablevariationattribute where productmasterid in (select uuid from importremovedproduct where ismaster = 1);
    delete from productvariation where productmasterid in (select uuid from importremovedproduct where ismaster = 1);

    --
    --  Variation objects of a mastered
    --

    delete from productvariationassignment where productvariationid in (select uuid from productvariation where productid in (select uuid from importremovedproduct where ismastered = 1));
    delete from productvariation where productid in (select uuid from importremovedproduct where ismastered = 1);
    delete from productvariationvalu_av av where exists (select pvv.uuid from productvariationvalue pvv, productvariationassignment pva where av.ownerid = pvv.uuid and pvv.uuid = pva.productvariationvalueid(+) and pva.productvariationvalueid is null);
    delete from productvariationvalue pvv where not exists (select productvariationvalueid from productvariationassignment pva where pva.productvariationvalueid = pvv.uuid);

    --
    --  Bundles and bundled.
    --

    delete from bundleassignment where bundleid in (select uuid from importremovedproduct where isbundle = 1);
    delete from bundleassignment where productid in (select uuid from importremovedproduct where isbundled = 1);

    --
    --  Links (incoming, outgoing).
    --

	delete from productlink_av where ownerid in (select uuid from productlink where sourceid in (select uuid from importremovedproduct));
    delete from productlink where sourceid in (select uuid from importremovedproduct);
    
    delete from productlink_av where ownerid in (select uuid from productlink where targetid in (select uuid from importremovedproduct));
    delete from productlink where targetid in (select uuid from importremovedproduct);

    --
    --  Prices, category assignments, role assignments, attribute values.
    --

    delete from productlistprice where productid in (select uuid from importremovedproduct);
    delete from productcostprice where productid in (select uuid from importremovedproduct);
    delete from productcategoryassignment where productid in (select uuid from importremovedproduct);
    delete from product_ra where ao_uuid in (select uuid from importremovedproduct);

    --
    --  Usergroup assignments
    --

    delete from usergroupprice where (productrefsku, productrefdomainname) in (select productrefsku, productrefdomainname from importremovedusergroupprice);
    delete from importremovedusergroupprice where domainid = in_domainid;

	--
	-- set offeredproductid of offers refering to deleted products to null
	--

    update product p
        set p.offeredproductid = null
        where p.offeredproductid in (
        	select i.uuid from importremovedproduct i where i.isoffered = 1);

    --
    --  The product itself.
    --

    delete from product where uuid in (select uuid from importremovedproduct);
    delete from importremovedproduct where domainid = in_domainid;

    --
    --  Selective deletion (update mode)
    --

    delete from productlistprice where (productid, currency) in (select productid, currency from importremovedproductlistprice);
    delete from productcostprice where (productid, currency) in (select productid, currency from importremovedproductcostprice);
    delete from importremovedproductlistprice where domainid = in_domainid;
    delete from importremovedproductcostprice where domainid = in_domainid;

    delete from productcategoryassignment where (productid, catalogcategoryid) in (select productid, catalogcategoryid from importremovedcatassignment);
    delete from importremovedcatassignment where domainid = in_domainid;

    delete from product_ra where (ao_uuid, roleid, usergroupid, usergroupdomainid) in (select productid, roleid, usergroupid, usergroupdomainid from importremovedproductra);
    delete from importremovedproductra where domainid = in_domainid;

    delete from product where uuid in (select uuid from importupdatedproduct);
    delete from importupdatedproduct where domainid = in_domainid;

    commit;

END sp_ImportRemoveProduct;
/
show errors

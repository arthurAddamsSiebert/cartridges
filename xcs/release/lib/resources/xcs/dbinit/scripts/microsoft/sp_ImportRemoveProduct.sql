CREATE OR ALTER PROCEDURE sp_ImportRemoveProduct
(
	@domainID	NVARCHAR(30)
)
AS
BEGIN
	DECLARE @in_domainid	NVARCHAR(30) = @domainID;
	BEGIN TRAN
		--
		--  Variation objects of a master
		--
		-- cursor

		DELETE FROM productvariationassignment WHERE productvariationid IN (SELECT uuid FROM productvariation WHERE productmasterid IN (SELECT uuid FROM importremovedproduct WHERE ismaster = 1));
		DELETE FROM productvariationvalu_av WHERE ownerid IN (SELECT uuid FROM productvariationvalue WHERE variablevariationattributeid IN (SELECT uuid FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedproduct WHERE ismaster = 1)));
		DELETE FROM productvariationvalue WHERE variablevariationattributeid IN (SELECT uuid FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedproduct WHERE ismaster = 1));
		DELETE FROM variablevariationatt_av WHERE ownerid IN (SELECT uuid FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedproduct WHERE ismaster = 1));
		DELETE FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedproduct WHERE ismaster = 1);
		DELETE FROM productvariation WHERE productmasterid IN (SELECT uuid FROM importremovedproduct WHERE ismaster = 1);

		--
		--  Variation objects of a mastered
		--

		DELETE FROM productvariationassignment WHERE productvariationid IN (SELECT uuid FROM productvariation WHERE productid IN (SELECT uuid FROM importremovedproduct WHERE ismastered = 1));
		DELETE FROM productvariation WHERE productid IN (SELECT uuid FROM importremovedproduct WHERE ismastered = 1);
		DELETE av FROM productvariationvalu_av av WHERE exists (select pvv.uuid FROM productvariationvalue pvv, productvariationassignment pva WHERE av.ownerid = pvv.uuid AND (pvv.uuid = pva.productvariationvalueid OR pva.productvariationvalueid IS NULL) AND pva.productvariationvalueid IS NULL);
		DELETE pvv FROM productvariationvalue pvv WHERE not exists (select productvariationvalueid FROM productvariationassignment pva WHERE pva.productvariationvalueid = pvv.uuid);

		--
		--  Bundles and bundled.
		--

		DELETE FROM bundleassignment WHERE bundleid IN (SELECT uuid FROM importremovedproduct WHERE isbundle = 1);
		DELETE FROM bundleassignment WHERE productid IN (SELECT uuid FROM importremovedproduct WHERE isbundled = 1);

		--
		--  Links (incoming, outgoing).
		--

		DELETE FROM productlink_av WHERE ownerid IN (SELECT uuid FROM productlink WHERE sourceid IN (SELECT uuid FROM importremovedproduct));
		DELETE FROM productlink WHERE sourceid IN (SELECT uuid FROM importremovedproduct);
    
		DELETE FROM productlink_av WHERE ownerid IN (SELECT uuid FROM productlink WHERE targetid IN (SELECT uuid FROM importremovedproduct));
		DELETE FROM productlink WHERE targetid IN (SELECT uuid FROM importremovedproduct);

		--
		--  Prices, category assignments, role assignments, attribute values.
		--

		DELETE FROM productlistprice WHERE productid IN (SELECT uuid FROM importremovedproduct);
		DELETE FROM productcostprice WHERE productid IN (SELECT uuid FROM importremovedproduct);
		DELETE FROM productcategoryassignment WHERE productid IN (SELECT uuid FROM importremovedproduct);
		DELETE FROM product_ra WHERE ao_uuid IN (SELECT uuid FROM importremovedproduct);

		--
		--  Usergroup assignments
		--

		DELETE ugp FROM usergroupprice ugp WHERE EXISTS(SELECT 1 FROM importremovedusergroupprice iru WHERE iru.productrefsku = ugp.productrefsku AND iru.productrefdomainname = ugp.productrefdomainname);
		DELETE FROM importremovedusergroupprice WHERE domainid = @in_domainid;

		--
		-- set offeredproductid of offers refering to deleted products to null
		--

		UPDATE p 
		SET p.offeredproductid = NULL
		FROM product p
		WHERE p.offeredproductid IN (
		SELECT i.uuid FROM importremovedproduct i WHERE i.isoffered = 1);

		--
		--  The product itself.
		--

		DELETE FROM product WHERE uuid IN (SELECT uuid FROM importremovedproduct);
		DELETE FROM importremovedproduct WHERE domainid = @in_domainid;

		--
		--  Selective deletion (update mode)
		--

		DELETE plp FROM productlistprice plp WHERE EXISTS(SELECT 1 FROM importremovedproductlistprice irp WHERE irp.productid = plp.productid AND irp.CURRENCY = plp.currency);
		DELETE pcp FROM productcostprice pcp WHERE EXISTS(SELECT 1 FROM importremovedproductcostprice irp WHERE irp.productid = pcp.productid AND irp.currency = pcp.currency)
		DELETE FROM importremovedproductlistprice WHERE domainid = @in_domainid;
		DELETE FROM importremovedproductcostprice WHERE domainid = @in_domainid;

		DELETE pca FROM productcategoryassignment pca WHERE EXISTS(SELECT 1 FROM importremovedcatassignment irc WHERE irc.productid = pca.productid AND irc.catalogcategoryid = pca.catalogcategoryid);
		DELETE FROM importremovedcatassignment WHERE domainid = @in_domainid;

		DELETE pr FROM product_ra pr WHERE EXISTS(SELECT 1 FROM importremovedproductra irp WHERE irp.productid =pr.ao_uuid AND irp.roleid = pr.roleid AND irp.usergroupid = pr.usergroupid AND irp.usergroupdomainid = pr.usergroupdomainid);
		DELETE FROM importremovedproductra WHERE domainid = @in_domainid;

		DELETE FROM product WHERE uuid IN (SELECT uuid FROM importupdatedproduct);
		DELETE FROM importupdatedproduct WHERE domainid = @in_domainid;

	COMMIT;

END
GO

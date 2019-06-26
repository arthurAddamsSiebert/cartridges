CREATE OR ALTER PROCEDURE sp_ImportRemoveProductRelation
(
	@domainID	NVARCHAR(30)
)
AS
BEGIN
	DECLARE @in_domainid	NVARCHAR(30) = @domainID;
	BEGIN TRAN
		DELETE FROM productlink_av WHERE ownerid IN (SELECT uuid FROM productlink pl WHERE EXISTS(
		SELECT 1 FROM importremovedproductlink irp WHERE pl.sourceid = irp.sourceid AND pl.targetid = irp.targetid));
		DELETE pl FROM productlink pl WHERE EXISTS (SELECT 1 FROM importremovedproductlink irp WHERE irp.sourceid = pl.sourceid and irp.targetid = pl.targetid);
		DELETE FROM importremovedproductlink WHERE domainid = @in_domainid;

		DELETE ba FROM bundleassignment ba WHERE EXISTS(SELECT 1 FROM importremovedbundle irb WHERE irb.bundleid = ba.bundleid AND irb.productid = ba.productid);
		DELETE FROM importremovedbundle WHERE domainid = @in_domainid;

		DELETE FROM productvariationassignment WHERE productvariationid IN (SELECT uuid FROM productvariation WHERE productmasterid IN (SELECT uuid FROM importremovedmaster));
		DELETE FROM productvariationvalu_av WHERE ownerid IN (SELECT uuid FROM productvariationvalue WHERE variablevariationattributeid IN (SELECT uuid FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedmaster)));
		DELETE FROM productvariationvalue WHERE variablevariationattributeid IN (SELECT uuid FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedmaster));
		DELETE FROM variablevariationatt_av WHERE ownerid IN (SELECT uuid FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedmaster));
		DELETE FROM variablevariationattribute WHERE productmasterid IN (SELECT uuid FROM importremovedmaster);
		DELETE FROM productvariation WHERE productmasterid IN (SELECT uuid FROM importremovedmaster);
		DELETE FROM importremovedmaster WHERE domainid = @in_domainid;
	COMMIT;
END
GO
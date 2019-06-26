BEGIN

	-- BASICADDRESS -> STORE
	MERGE INTO store s 
	USING (
		SELECT 0 AS oca, utctimestamp() AS lastmodified, (CASE addressnr WHEN 'enabled' THEN 1 ELSE 0 END) AS activeflag, addressname, city, countrycode, postbox, postalcode, state, street, street2, street3, email, fax, homepage, mobile, phonebusiness, companyname, companyname2, firstname, secondname, lastname, honorific, title, domainid, uuid 
		FROM basicaddress 
		WHERE BITAND(typecode, 32) <> 0) a
	ON (s.storeid = a.uuid)
	WHEN NOT MATCHED THEN 
		INSERT (s.storename, s.storeid, s.activeflag, s.city, s.countrycode, s.postbox, s.postalcode, s.state, s.address1, s.address2, s.address3, s.email, s.fax, s.homepage, s.mobile, s.phonebusiness, s.companyname, s.companyname2, s.firstname, s.secondname, s.lastname, s.honorific, s.title, s.uuid, s.domainid, s.oca, s.lastmodified)
		VALUES (a.addressname, a.uuid, a.activeflag, a.city, a.countrycode, a.postbox, a.postalcode, a.state, a.street, a.street2, a.street3, a.email, a.fax, a.homepage, a.mobile, a.phonebusiness, a.companyname, a.companyname2, a.firstname, a.secondname, a.lastname, a.honorific, a.title, a.uuid, a.domainid, a.oca, a.lastmodified);

	-- BASICADDRESS_AV -> STORE_AV
	MERGE INTO store_av s
	USING (
		SELECT 0 AS oca, utctimestamp() AS lastmodified, ownerid, name, localeid, localizedflag, type, intvalue, doublevalue, stringvalue, objectvalue, objecttype, decimalvalue, datevalue, textvalue 
		FROM basicaddress_av b_av 
		JOIN basicaddress ba ON ba.uuid = b_av.ownerid 
		WHERE BITAND(ba.typecode, 32) <> 0) a
	ON (s.ownerid = a.ownerid)
	WHEN NOT MATCHED THEN 
		INSERT (s.ownerid, s.name, s.localeid, s.localizedflag, s.type, s.intvalue, s.doublevalue, s.stringvalue, s.objectvalue, s.objecttype, s.decimalvalue, s.datevalue, s.textvalue, s.oca, s.lastmodified)
		VALUES (a.ownerid, a.name, a.localeid, a.localizedflag, a.type, a.intvalue, a.doublevalue, a.stringvalue, a.objectvalue, a.objecttype, a.decimalvalue, a.datevalue, a.textvalue, a.oca, a.lastmodified);

	-- remove BASICADDRESS_AV entries
	DELETE FROM basicaddress_av ba_av
	WHERE ba_av.ownerid IN (
		SELECT ba.uuid
		FROM basicaddress ba
		WHERE BITAND(ba.typecode, 32) <> 0
	) AND EXISTS (
		SELECT 1
		FROM store_av s_av
		WHERE s_av.ownerid = ba_av.ownerid AND s_av.name = ba_av.name AND s_av.localeid = ba_av.localeid
	);

	-- remove BASICADDRESS entries
	DELETE FROM basicaddress ba
	WHERE BITAND(ba.typecode, 32) <> 0  AND EXISTS (
		SELECT 1
		FROM store s
		WHERE s.uuid = ba.uuid 
	);
	
	COMMIT;

END;
/
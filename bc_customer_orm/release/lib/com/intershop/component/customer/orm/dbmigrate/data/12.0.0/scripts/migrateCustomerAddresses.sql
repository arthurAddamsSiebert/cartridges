BEGIN
	
	-- BASICADDRESS -> CUSTOMERADDRESS
	MERGE INTO CUSTOMERADDRESS ca
	USING (
		SELECT 0 AS oca, utctimestamp() AS lastmodified, (CASE WHEN ba.province IS NULL THEN ba.state ELSE ba.province END) AS maindivision, (CASE WHEN ba.prefecture IS NULL THEN ba.county ELSE ba.prefecture END) AS subdivision, c.uuid AS customerid, ba.typecode, ba.addressname, ba.city, ba.countrycode, ba.postbox, ba.postalcode, ba.street, ba.street2, ba.street3, ba.email, ba.fax, ba.mobile, ba.phonehome, ba.phonebusiness, ba.phonebusinessdirect, ba.companyname, ba.companyname2, ba.firstname, ba.secondname, ba.honorific, ba.jobtitle, ba.lastname, ba.secondlastname, ba.title, ba.uuid, ba.domainid 
		FROM BASICADDRESS ba
		JOIN CUSTOMER c ON c.profileid = ba.profileid) a
	ON (ca.uuid = a.uuid)
	WHEN NOT MATCHED THEN 
		INSERT (ca.customerid, ca.usage  , ca.addressname, ca.title, ca.honorific, ca.aristocratictitle, ca.jobtitle, ca.firstname, ca.secondname, ca.lastname, ca.secondlastname, ca.addressline1, ca.addressline2, ca.addressline3, ca.postbox, ca.city, ca.postalcode, ca.countrycode, ca.maindivision, ca.subdivision, ca.phonehome, ca.phonemobile, ca.phonebusiness, ca.phonebusinessdirect, ca.fax, ca.email, ca.companyname1, ca.companyname2, ca.uuid, ca.domainid, ca.oca, ca.lastmodified)
		VALUES (a.customerid , a.typecode, a.addressname , a.title , a.honorific , NULL                , a.jobtitle , a.firstname , a.secondname , a.lastname , a.secondlastname , a.street       , a.street2      , a.street3      , a.postbox , a.city , a.postalcode , a.countrycode , a.maindivision , a.subdivision , a.phonehome , a.mobile      , a.phonebusiness , a.phonebusinessdirect , a.fax , a.email , a.companyname  , a.companyname2 , a.uuid , a.domainid , a.oca , a.lastmodified );
		
	-- BASICADDRESS_AV -> CUSTOMERADDRESS_AV
	MERGE INTO CUSTOMERADDRESS_AV ca
	USING (
		SELECT 0 AS oca, utctimestamp() AS lastmodified, ownerid, name, localeid, localizedflag, type, intvalue, doublevalue, stringvalue, objectvalue, objecttype, decimalvalue, datevalue, textvalue 
		FROM BASICADDRESS_AV b_av 
		JOIN BASICADDRESS ba ON ba.uuid = b_av.ownerid 
		JOIN CUSTOMER c ON c.profileid = ba.profileid) a
	ON (ca.ownerid = a.ownerid)
	WHEN NOT MATCHED THEN 
		INSERT (ca.ownerid, ca.name, ca.localeid, ca.localizedflag, ca.type, ca.intvalue, ca.doublevalue, ca.stringvalue, ca.objectvalue, ca.objecttype, ca.decimalvalue, ca.datevalue, ca.textvalue, ca.oca, ca.lastmodified)
		VALUES ( a.ownerid,  a.name,  a.localeid,  a.localizedflag,  a.type,  a.intvalue,  a.doublevalue,  a.stringvalue,  a.objectvalue,  a.objecttype,  a.decimalvalue,  a.datevalue,  a.textvalue,  a.oca,  a.lastmodified);

	-- empty DEFAULTADDRESSID field in BASICPROFILE for migrated addresses
	UPDATE BASICPROFILE bp
		SET bp.defaultaddressid = null
		WHERE bp.UUID IN (SELECT profileid FROM CUSTOMER);
	
	-- remove BASICADDRESS_AV entries
	DELETE FROM BASICADDRESS_AV ba_av
	WHERE EXISTS (
		SELECT 1
		FROM CUSTOMERADDRESS_AV ca_av
		WHERE ca_av.ownerid = ba_av.ownerid AND ca_av.name = ba_av.name AND ca_av.localeid = ba_av.localeid
	);

	-- remove BASICADDRESS entries
	DELETE FROM BASICADDRESS ba
	WHERE EXISTS (
		SELECT 1
		FROM CUSTOMERADDRESS ca
		WHERE ca.uuid = ba.uuid 
	);
	
	COMMIT;

END;
/
BEGIN

	-- STATICADDRESS -> BASKETADDRESS
	MERGE INTO BASKETADDRESS ba
	USING (
		SELECT 0 AS oca, utctimestamp() AS lastmodified, (CASE WHEN sa.province IS NULL THEN sa.state ELSE sa.province END) AS maindivision, (CASE WHEN sa.prefecture IS NULL THEN sa.county ELSE sa.prefecture END) AS subdivision, sa.lineitemctnrid AS basketid, sa.typecode, sa.addressname, sa.city, sa.countrycode, sa.postbox, sa.postalcode, sa.street, sa.street2, sa.street3, sa.email, sa.fax, sa.mobile, sa.phonehome, sa.phonebusiness, sa.phonebusinessdirect, sa.companyname, sa.companyname2, sa.firstname, sa.secondname, sa.honorific, sa.jobtitle, sa.lastname, sa.secondlastname, sa.title, sa.uuid, sa.domainid 
		FROM STATICADDRESS sa
		JOIN BASKET b ON b.uuid = sa.lineitemctnrid) a
	ON (ba.uuid = a.uuid)
	WHEN NOT MATCHED THEN 
		INSERT (ba.basketid, ba.usage  , ba.addressname, ba.title, ba.honorific, ba.aristocratictitle, ba.jobtitle, ba.firstname, ba.secondname, ba.lastname, ba.secondlastname, ba.addressline1, ba.addressline2, ba.addressline3, ba.postbox, ba.city, ba.postalcode, ba.countrycode, ba.maindivision, ba.subdivision, ba.phonehome, ba.phonemobile, ba.phonebusiness, ba.phonebusinessdirect, ba.fax, ba.email, ba.companyname1, ba.companyname2, ba.uuid, ba.domainid, ba.oca, ba.lastmodified)
		VALUES (a.basketid , a.typecode, a.addressname , a.title , a.honorific , NULL                , a.jobtitle , a.firstname , a.secondname , a.lastname , a.secondlastname , a.street       , a.street2      , a.street3      , a.postbox , a.city , a.postalcode , a.countrycode , a.maindivision , a.subdivision , a.phonehome , a.mobile      , a.phonebusiness , a.phonebusinessdirect , a.fax , a.email , a.companyname  , a.companyname2 , a.uuid , a.domainid , a.oca , a.lastmodified );

	-- STATICADDRESS_AV -> BASKETADDRESS_AV
	MERGE INTO BASKETADDRESS_AV ba_av
	USING (
		SELECT 0 AS oca, utctimestamp() AS lastmodified, s_av.ownerid, s_av.name, s_av.localeid, s_av.localizedflag, s_av.type, s_av.intvalue, s_av.doublevalue, s_av.stringvalue, s_av.objectvalue, s_av.objecttype, s_av.decimalvalue, s_av.datevalue, s_av.textvalue 
		FROM STATICADDRESS_AV s_av 
		JOIN STATICADDRESS sa ON sa.uuid = s_av.ownerid 
		JOIN BASKET b ON b.uuid = sa.lineitemctnrid) a_av
	ON (ba_av.ownerid = a_av.ownerid)
	WHEN NOT MATCHED THEN 
		INSERT (ba_av.ownerid, ba_av.name, ba_av.localeid, ba_av.localizedflag, ba_av.type, ba_av.intvalue, ba_av.doublevalue, ba_av.stringvalue, ba_av.objectvalue, ba_av.objecttype, ba_av.decimalvalue, ba_av.datevalue, ba_av.textvalue, ba_av.oca, ba_av.lastmodified)
		VALUES ( a_av.ownerid,  a_av.name,  a_av.localeid,  a_av.localizedflag,  a_av.type,  a_av.intvalue,  a_av.doublevalue,  a_av.stringvalue,  a_av.objectvalue,  a_av.objecttype,  a_av.decimalvalue,  a_av.datevalue,  a_av.textvalue,  a_av.oca,  a_av.lastmodified);

	-- remove STATICADDRESS_AV entries
	DELETE FROM STATICADDRESS_AV sa_av
	WHERE EXISTS (
		SELECT 1
		FROM BASKETADDRESS_AV ba_av
		WHERE ba_av.ownerid = sa_av.ownerid AND ba_av.name = sa_av.name AND ba_av.localeid = sa_av.localeid
	);

	-- remove STATICADDRESS entries
	DELETE FROM STATICADDRESS sa
	WHERE EXISTS (
		SELECT 1
		FROM BASKETADDRESS ba
		WHERE ba.uuid = sa.uuid 
	);

	COMMIT;

END;
/
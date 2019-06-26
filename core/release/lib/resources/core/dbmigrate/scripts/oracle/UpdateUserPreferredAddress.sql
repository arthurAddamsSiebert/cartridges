DECLARE
	invoiceToAddress VARCHAR2(128);
	shipToAddress VARCHAR2(128);
BEGIN
	-- invoice-to address
	FOR i IN (	
		SELECT bp.uuid, di.domainid
		FROM basicprofile bp, domaininformation di
		WHERE di.domainname = '&param1'
		  AND di.domainid = bp.domainid
		  AND bp.uuid NOT IN (SELECT bp.uuid
							 FROM basicprofile bp, basicprofile_av bpav, domaininformation di
							WHERE bpav.ownerid = bp.uuid
							  AND bp.domainid = di.domainid
							  AND di.domainname = '&param1'
							  AND bpav.name = 'Default Address1')
	)
	LOOP
		BEGIN
			SELECT addressname INTO invoiceToAddress FROM basicaddress WHERE BITAND(typecode, 1) > 0 AND rownum <= 1 and profileid = i.uuid;
			staging.insert_into('BASICPROFILE_AV',
				'(DOMAINID, OWNERID, NAME, STRINGVALUE, LOCALEID, LOCALIZEDFLAG, TYPE, OCA, LASTMODIFIED)' 
				||' VALUES ('''||i.domainid||''', '''||i.uuid||''', ''Default Address1'', '''||invoiceToAddress||''', ''en_US'', 0, 3, 0, UTCTIMESTAMP())', -1);
		EXCEPTION
	    	WHEN no_data_found THEN
        		logger.log('Can not find suitable invoice to address!');
		END;
	END LOOP;
	COMMIT;

	-- ship-to address
	FOR i IN (	
		SELECT bp.uuid, di.domainid
		FROM basicprofile bp, domaininformation di
		WHERE di.domainname = '&param1'
		  AND di.domainid = bp.domainid
		  AND bp.uuid NOT IN (SELECT bp.uuid
							 FROM basicprofile bp, basicprofile_av bpav, domaininformation di
							WHERE bpav.ownerid = bp.uuid
							  AND bp.domainid = di.domainid
							  AND di.domainname = '&param1'
							  AND bpav.name = 'Default Address2')
	)
	LOOP
		BEGIN
			SELECT addressname INTO shipToAddress FROM basicaddress WHERE BITAND(typecode, 2) > 0 AND rownum <= 1 and profileid = i.uuid;
			staging.insert_into('BASICPROFILE_AV',
				'(DOMAINID, OWNERID, NAME, STRINGVALUE, LOCALEID, LOCALIZEDFLAG, TYPE, OCA, LASTMODIFIED)' 
				||' VALUES ('''||i.domainid||''', '''||i.uuid||''', ''Default Address2'', '''||shipToAddress||''', ''en_US'', 0, 3, 0, UTCTIMESTAMP())', -1);
		EXCEPTION
	    	WHEN no_data_found THEN
        		logger.log('Can not find suitable ship to address!');
		END;
	END LOOP;
	COMMIT;
END;
/
BEGIN

	-- BASKET
	UPDATE "BASKET" b
	SET (b."INVOICETOADDRESSURN", b."SHIPTOADDRESSURN", b."SHIPFROMADDRESSURN", b."SERVICETOADDRESSURN", b."INSTALLTOADDRESSURN") = (
		SELECT
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE b."INVOICETOADDRESSURN" = ca."UUID"), b."INVOICETOADDRESSURN"),
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE b."SHIPTOADDRESSURN" = ca."UUID"), b."SHIPTOADDRESSURN"),
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE b."SHIPFROMADDRESSURN" = ca."UUID"), b."SHIPFROMADDRESSURN"),
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE b."SERVICETOADDRESSURN" = ca."UUID"), b."SERVICETOADDRESSURN"),
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE b."INSTALLTOADDRESSURN" = ca."UUID"), b."INSTALLTOADDRESSURN")
		FROM DUAL
	);


	-- PRODUCTLINEITEM
	UPDATE "PRODUCTLINEITEM" p
	SET (p."SHIPTOADDRESSURN",  p."SHIPFROMADDRESSURN") = (
		SELECT
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE p."SHIPTOADDRESSURN" = ca."UUID"), p."SHIPTOADDRESSURN"),
			NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE p."SHIPFROMADDRESSURN" = ca."UUID"), p."SHIPFROMADDRESSURN")
		FROM DUAL
	)
	WHERE EXISTS (
		SELECT 1
		FROM "BASKET" b
		WHERE p."LINEITEMCTNRID" = b."UUID"
	);

	-- SERVICELINEITEM
	UPDATE "SERVICELINEITEM" s
	SET s."SHIPTOADDRESSURN" = NVL((SELECT 'urn:address:customer:' || ca."CUSTOMERID" || ':' || ca."UUID" FROM "CUSTOMERADDRESS" ca WHERE s."SHIPTOADDRESSURN" = ca."UUID"), s."SHIPTOADDRESSURN");

	COMMIT;

END;
/

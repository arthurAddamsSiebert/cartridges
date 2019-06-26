BEGIN

	UPDATE "CONTRACTREVENUEASSIGNMENT" c SET c.ORDERDOCUMENTNO =
	    (SELECT o.DOCUMENTNO FROM "ISORDER" o WHERE c.ORDERUUID = o.UUID)
	WHERE c.ORDERDOCUMENTNO IS NULL;

END;
/
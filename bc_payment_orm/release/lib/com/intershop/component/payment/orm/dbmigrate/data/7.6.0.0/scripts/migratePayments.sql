BEGIN
	UPDATE paymentinstrumentinfo pii SET pii.originuuid = pii.uuid WHERE pii.originuuid IS NULL AND pii.lineitemctnrid IS NOT NULL;
	COMMIT;
END;
/
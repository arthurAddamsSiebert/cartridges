BEGIN

	-- remove application domain relation entries
	DELETE FROM applicationdomainrelation adr
	WHERE adr.name = 'PaymentServiceBORepository';
	
	COMMIT;

END;
/
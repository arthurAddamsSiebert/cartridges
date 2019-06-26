BEGIN

	-- Mark calculation for baskets without computed items as invalid
	UPDATE BASKET b SET calculationinvalidflag = 1 WHERE computeditems IS NULL;

	-- Mark calculation for baskets with computed items as valid
	UPDATE BASKET b SET calculationinvalidflag = 0 WHERE computeditems IS NOT NULL;

	COMMIT;

END;
/
BEGIN
DELETE FROM ENFINITYTABLE WHERE CARTRIDGENAME LIKE 'bc_product_configuration';
	COMMIT;
END;
/
SHOW ERRORS;
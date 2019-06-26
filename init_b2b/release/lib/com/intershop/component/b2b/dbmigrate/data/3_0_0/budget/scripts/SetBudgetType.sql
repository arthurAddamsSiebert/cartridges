BEGIN
	INSERT INTO BASICPROFILE_AV bpav1 
	(name,stringvalue,ownerid,LOCALEID, LOCALIZEDFLAG ,TYPE,OCA,LASTMODIFIED)
	
	(SELECT 'OrderApproval_SelectedBudgetType', 'MONTHLY', bpav.OWNERID, bp.PREFERREDLOCALE, 0, 3, 0, SYSDATE FROM BASICPROFILE bp 
	JOIN BASICPROFILE_AV bpav on (bpav.ownerid = bp.uuid AND bpav.name='OrderApproval_MonthlyBudget' AND bpav.STRINGVALUE != 'N/A')
	WHERE NOT EXISTS(
		SELECT 1 FROM BASICPROFILE_AV bpav2
		WHERE bpav.ownerid = bpav2.ownerid
		AND bpav2.name = 'OrderApproval_SelectedBudgetType'
	));	
commit;
END;
/
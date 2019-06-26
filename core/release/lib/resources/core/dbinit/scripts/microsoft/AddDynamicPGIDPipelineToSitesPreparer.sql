BEGIN
WITH CTE (ownerid, name, localeid, localizedflag, TYPE, stringvalue, oca, lastmodified) AS
(
	SELECT DISTINCT ownerid,
			'PGIDPipeline',
			(SELECT localeid FROM localeinformation WHERE leadlocaleflag=1),
			0 ,
			3 ,
			'ViewPersonalizationGroup-DeterminePGIDForNewSession' ,
			0,
			SYSUTCDATETIME()
	FROM domain_av JOIN DOMAIN ON (domain.uuid=domain_av.ownerid )
	WHERE typecode=3 
	  AND ownerid NOT IN (SELECT ownerid FROM domain_av WHERE name='PGIDPipeline' )
)

-- EXEC LOGGER$log 'Updating PGIDPipeline of Sites!'

INSERT INTO domain_av(ownerid, name, localeid, localizedflag, TYPE, stringvalue, oca, lastmodified)
SELECT * FROM CTE;

END;
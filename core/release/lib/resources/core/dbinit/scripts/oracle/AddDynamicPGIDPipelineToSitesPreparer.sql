BEGIN
    logger.log('Updating PGIDPipeline of Sites!');
    FOR i IN 
          (SELECT
               distinct ownerid
           FROM
               domain_av
           JOIN 
               domain ON 
                   (domain.uuid=domain_av.ownerid
                      AND
                        -- get only Sites
                        typecode=3
                      AND
                        -- do not process sites, that are already updated
                        ownerid not in 
                            (SELECT 
                                 ownerid 
                             FROM 
                                 domain_av 
                             WHERE 
                                 name='PGIDPipeline'
                             )
                    )
           )
    LOOP
        INSERT INTO domain_av(ownerid  , name          , localeid                                                       , localizedflag, type, stringvalue                                          , oca, lastmodified  )
                      VALUES (i.ownerid, 'PGIDPipeline', (SELECT localeid FROM localeinformation WHERE leadlocaleflag=1), 0            , 3   , 'ViewPersonalizationGroup-DeterminePGIDForNewSession', 0  , UTCTIMESTAMP());
        COMMIT;
    END LOOP;
END;
/

show errors;

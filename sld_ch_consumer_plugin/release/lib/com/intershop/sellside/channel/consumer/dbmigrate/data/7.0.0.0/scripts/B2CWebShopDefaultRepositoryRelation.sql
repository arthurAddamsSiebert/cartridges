BEGIN
    --
    -- creates an application domain relation between applications of type 'intershop.B2CWebShop'
    -- and the according channel repository with name 'DefaultRepository'
    --
    staging.insert_into('applicationdomainrelation',
        '(applicationuuid, domainid, name, position, oca, lastmodified)
        SELECT * FROM
        (
           SELECT
            a.uuid as applicationuuid,
            r.repositorydomainid as domainid,
            ''DefaultRepository'' as name,
            0 as position,
            0 as oca,
            utctimestamp()
          FROM
            repository r
          JOIN
            application a ON (a.domainid=r.repositorydomainid)
        )
        WHERE
          (applicationuuid,name,position) NOT IN (SELECT applicationuuid,name,position FROM applicationdomainrelation)');
    COMMIT;
END;
/
show errors;

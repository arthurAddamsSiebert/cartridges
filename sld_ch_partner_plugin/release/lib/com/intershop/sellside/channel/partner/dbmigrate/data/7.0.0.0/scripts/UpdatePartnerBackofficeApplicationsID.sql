BEGIN
    FOR i IN
    (
        SELECT
          a.uuid,
          o.id as urlidentifier,
          o.organizationdomainid as domainid
        FROM
          repository r
        JOIN
          organization o ON (o.domainid = r.repositorydomainid)
        JOIN
          domain d ON (r.repositorydomainid = d.uuid)
        JOIN
          application a ON (d.siteid = a.siteid)
        JOIN
          domain s ON (a.siteid = s.uuid)
        WHERE
          r.typecode = 32
        AND
          a.appid = 'intershop.EnterpriseBackoffice'
        AND
          s.defaultapplicationid != a.uuid
    )
    LOOP
        staging.update_table('application', 'SET urlidentifier='''||i.urlidentifier||''', domainid='''||i.domainid||''', oca=oca+1, lastmodified=utctimestamp() WHERE uuid='''||i.uuid||'''');
    END LOOP;
    COMMIT;
END;
/

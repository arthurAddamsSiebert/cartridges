BEGIN
    --
    -- creates an application domain relation between applications of type 'intershop.SLDSystem'
    -- and the according OrganizationBO repository with name 'OrganizationBORepository'
    --
    staging.insert_into('applicationdomainrelation',
        '(applicationuuid, domainid, name, position, oca, lastmodified)
        SELECT * FROM
        (
          SELECT
            a.uuid as applicationuuid,
            od.uuid as domainid,
            ''OrganizationBORepository'' as name,
            0 as position,
            0 as oca,
            utctimestamp()
          FROM
            organization o
          JOIN
            domain od ON (o.organizationdomainid=od.uuid)
          JOIN
            domain os ON (os.uuid=od.siteid)
          JOIN
            application a ON (a.uuid=os.defaultapplicationid)
          WHERE
            o.typecode=10
        )
        WHERE
          (applicationuuid,name,position) NOT IN (SELECT applicationuuid,name,position FROM applicationdomainrelation)');
  COMMIT;
END;
/
show errors;

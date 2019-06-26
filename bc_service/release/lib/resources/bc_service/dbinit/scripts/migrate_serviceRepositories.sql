BEGIN
   
    merge into servicerepository d 
    using (select sf_create_uuid() as uuid, domainid as domainid, domainid as domainkeyid, 1 as oca, utctimestamp() as lastmodified from serviceconfiguration group by domainid) s
       on (d.domainkeyid = s.domainkeyid)
     when not matched then insert (d.uuid, d.domainid, d.domainkeyid, d.oca, d.lastmodified)
                           values (s.uuid, s.domainid, s.domainkeyid, s.oca, s.lastmodified);

    update serviceconfiguration s
    set s.servicerepositoryid = (select rep.uuid from servicerepository rep where rep.domainid = s.domainid);
    
    commit;

END;
/

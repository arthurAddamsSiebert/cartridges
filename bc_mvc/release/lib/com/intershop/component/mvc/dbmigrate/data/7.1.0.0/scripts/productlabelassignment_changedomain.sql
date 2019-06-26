declare cursor pla_cursor is
(select  p.domainid as pdid, repositorydomainid
from repository r,productlabelassignment p 
where r.domainid=p.domainid
and r.repositorydomainid in (select repositorydomainid from repository where typecode=21)
and r.domainid in (select organizationdomainid from organization where typecode=20));
begin

  for oneRow in  pla_cursor
  loop
     update productlabelassignment set productdomainid=oneRow.repositorydomainid where domainid=oneRow.pdid;
  end loop;

update productlabelassignment set productdomainid=domainid where productdomainid is null;

end;
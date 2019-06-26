delete from application_AV av where av.ownerid = (select a.uuid from application a where a.appid = 'intershop.ETest');
delete from application a where a.appid = 'intershop.ETest';
update domain d set d.status = 3 where dn(d.domainid) = 'eTest';
commit;

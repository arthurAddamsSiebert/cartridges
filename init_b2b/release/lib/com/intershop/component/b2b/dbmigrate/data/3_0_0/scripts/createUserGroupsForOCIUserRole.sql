DECLARE
  userGroupUUID varchar2(28);
  leadLocaleId varchar2(10);

BEGIN
    FOR i IN (        
        select domainid as domainid 
        from domain 
        where domainid in (select domainid from domaininformation where domainname like '%-Anonymous%')
        and domainid not in (select domainid from usergroup where id = 'APP_B2B_OCI_USER')

    ) LOOP
    	--we need unique ids in an staging environment with unknown channels
        userGroupUUID := 'OCI' || i.domainid ;
        
        select localeId 
        into leadLocaleId from localeinformation where leadlocaleflag = 1;
        
        INSERT INTO UserGroup        
        	(id, domainid, fixflag, typecode, typename, oca, lastmodified) 
        VALUES 
        	('APP_B2B_OCI_USER', i.domainid, 0, null, null, 0, sysdate);
    
        INSERT INTO UserGroupInformation
        	(usergroupid, usergroupdomainid, uuid, domainid, oca, lastmodified) 
        VALUES 
        	('APP_B2B_OCI_USER', i.domainid , userGroupUUID , i.domainid , 0, sysdate);
  
        INSERT INTO UserGroupInformation_AV
        	(name,stringvalue,ownerid,LOCALEID,TYPE, LOCALIZEDFLAG, OCA,LASTMODIFIED) 
        VALUES 
        	('name', 'B2B OCI user', userGroupUUID, leadLocaleId,3, 1, 0, sysdate);
        
        INSERT INTO UserGroupInformation_AV
        	(name,stringvalue,ownerid,LOCALEID,TYPE, LOCALIZEDFLAG, OCA,LASTMODIFIED) 
        VALUES 
        	('description', 'B2B OCI user', userGroupUUID, leadLocaleId, 3, 1, 0, sysdate);
        
    END LOOP;
    COMMIT;
END;
/
show errors;
-- 
-- Set the domainid of all organization profiles to organization.domainid instead
-- of organization.organizationdomainid. This is necessary to be able to replicate
-- organization profiles and real user profiles in a distinct way, e.g. because
-- replication of B2C users is not allowed but the B2C organization profile
-- must be replicated because the storeaddresses are attached to it
--
BEGIN

  FOR i IN 
  (
    -- Selects all organizations which have a profile
  	SELECT bp.uuid, org.domainid, org.organizationdomainid 
  	FROM organization org, domain d, basicprofile bp 
  	WHERE org.organizationdomainid=d.domainid 
  	AND d.profileid=bp.uuid
  ) 
  LOOP
  
    -- Updates the domainid to the organization domainid
    UPDATE basicprofile SET domainid=i.domainid WHERE uuid=i.uuid;
  
    COMMIT;
    
  END LOOP;

END;
/
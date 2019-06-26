WHENEVER SQLERROR EXIT SQL.SQLCODE

---- Create new view for simple organization search--
CREATE OR REPLACE VIEW ORGANIZATIONSEARCH AS SELECT 
    o.UUID, 
    oav.STRINGVALUE, 
    di.DOMAINNAME 
FROM 
    ORGANIZATION o, 
    ORGANIZATION_AV oav, 
    DOMAININFORMATION di 
WHERE 
    o.UUID = oav.OWNERID AND o.ORGANIZATIONDOMAINID = di.DOMAINID AND (oav.NAME = 'displayName' OR oav.NAME = 'description');


-- ...exit
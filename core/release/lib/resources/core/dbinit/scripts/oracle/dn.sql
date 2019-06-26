CREATE OR REPLACE FUNCTION dn(aDomainID VARCHAR2) RETURN  VARCHAR2
------------------------------------------------------------------------------------------
-- Name        : dn
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 01/20/2011 - TBudich      - Created
--
-- Description : This function returns the domain name for a given domain
--               identifier. If the domain identifier does not exist, it
--               returns 'n/a'. 
-- Input       : aDomainID - The domain identifier.
-- Output      : The name of domain.
-- Example     : SELECT dn(domainid) FROM jobconfiguration;
--
------------------------------------------------------------------------------------------
IS
    ret domaininformation.domainname%TYPE;
BEGIN
    SELECT domainname INTO ret FROM domaininformation WHERE domainid=aDomainID;
    RETURN ret;
EXCEPTION
    WHEN no_data_found THEN
      RETURN 'n/a';
END;
/

SHOW errors;

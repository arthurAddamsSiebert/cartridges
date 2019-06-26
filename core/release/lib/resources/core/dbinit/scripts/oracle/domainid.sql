CREATE OR REPLACE FUNCTION domainid(aDomainName VARCHAR2) RETURN  VARCHAR2
------------------------------------------------------------------------------------------
-- Name        : domainid
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 10/12/2011 - TBudich      - Created
--
-- Description : This function returns the domainid for a domain with given
--               name. If a domain with given name does not exist, it
--               returns 'n/a'. 
-- Input       : aDomainName - The domnain name.
-- Output      : The domainid.
-- Example     : SELECT * FROM jobconfiguration WHERE domainid=domainid('root');
--
------------------------------------------------------------------------------------------
IS
    ret domaininformation.domainid%TYPE;
BEGIN
    SELECT domainid INTO ret FROM domaininformation WHERE domainname=aDomainName;
    RETURN ret;
EXCEPTION
    WHEN no_data_found THEN
      RETURN 'n/a';
END;
/

SHOW errors;

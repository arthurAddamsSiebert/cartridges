CREATE OR ALTER FUNCTION domainid(@aDomainName NVARCHAR(256))
RETURNS
NVARCHAR(30)
------------------------------------------------------------------------------------------
-- Name        : domainid
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 11/15/2017 - Anand Singh  - Created
--
-- Description : This function returns the domainid for a domain with given
--               name. If a domain with given name does not exist, it
--               returns 'n/a'. 
-- Input       : aDomainName - The domnain name.
-- Output      : The domainid.
-- Example     : SELECT * FROM jobconfiguration WHERE domainid=DBO.domainid('root');
--
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ret NVARCHAR(30);
    SELECT @ret = domainid FROM domaininformation WHERE domainname = @aDomainName;
	IF @ret IS NULL OR LEN(@ret) = 0
		RETURN 'n/a';
    RETURN @ret;     
END
GO
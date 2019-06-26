CREATE OR ALTER FUNCTION dn(@aDomainID NVARCHAR(30))
RETURNS
VARCHAR(300)
------------------------------------------------------------------------------------------
-- Name        : dn
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 11/15/2017 - Anand SIngh  - Created
--
-- Description : This function returns the domain name for a given domain
--               identifier. If the domain identifier does not exist, it
--               returns 'n/a'. 
-- Input       : aDomainID - The domain identifier.
-- Output      : The name of domain.
-- Example     : SELECT dbo.dn(domainid);
--
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ret NVARCHAR(256);
    SELECT @ret = domainname FROM domaininformation WHERE domainid = @aDomainID;
	IF @ret IS NULL OR LEN(@ret) = 0
		RETURN 'n/a';
	RETURN @ret;
END
GO

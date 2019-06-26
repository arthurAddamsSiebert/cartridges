CREATE OR ALTER FUNCTION utctimestamp() RETURNS DATETIME
------------------------------------------------------------------------------------------
-- Name        : utc
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 11/29/2017 - Anand Singh  - Created
--
-- Description : This function returns the current UTC time of database.
-- Output      : The UTC time of database.
-- Example     : SELECT dbo.utctimestamp();
--
------------------------------------------------------------------------------------------
BEGIN
    RETURN CONVERT(VARCHAR(300), GETUTCDATE(),  113);
END;
GO
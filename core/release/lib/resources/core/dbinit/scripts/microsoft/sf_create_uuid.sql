CREATE OR ALTER VIEW internalNEWID
-- this view will be used only in the fn_create_uuid to produce the random
-- element for the generated uuid
AS
SELECT RAND(CHECKSUM(NEWID())) as newid1
GO

CREATE OR ALTER FUNCTION [dbo].[sf_create_uuid]()
------------------------------------------------------------------------------------------
-- Name        : sf_create_uuid
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 11/10/2018 - Grandpa Team - create sql server function from
--                                           sql server procedure UUID$create_uuid
--
-- Description : This function is responsible for the creation and the management
--               of worldwide unique universally identifiers (UUID's).
--               A Intershop UUID consists of 18 bytes, that are Base64 encoded.
--               The resulting string has a guaranteed length of 24 characters.
-- Input       : no input
-- Output      : generated uuid
-- Example     : SELECT dbo.sf_create_uuid();
--               SELECT dbo.sf_create_uuid() AS UUID FROM PRODUCT;
------------------------------------------------------------------------------------------
RETURNS VARCHAR(24)
AS
BEGIN
	RETURN dbo.UUID$create_uuid();
END
GO

-----------------------------------------------------------------------------------------
-- Name        : sp_createContextIndexPrefs
-- History     : user             date       - desc
-- Created     : Anand Singh
-- Description : As per discussion with Jens, the functionality is not implemented.
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_createContextIndexPrefs 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_createContextIndexPrefs
(
	@ts_name     NVARCHAR(30)='IS_INDX_CTX',
	@doRecreate  BIT =0,
	@localeid    NVARCHAR(30) = NULL
)
AS
BEGIN
	DECLARE @aPrefName VARCHAR(50);
END
GO
  


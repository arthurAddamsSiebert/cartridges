CREATE OR ALTER FUNCTION cn(@aName NVARCHAR(256))
RETURNS VARCHAR(256)
------------------------------------------------------------------------------------------
-- Name        : cn
--
-- Modified    : MM/DD/YYYY- Name          - Description
--                ...      - ...           - ...
--             :		   - Surender Singh- Created
--
-- Description : This function returns the cartridge name for a given enfinity 
--               table or cartridge uuid. The enfinity cartridge name is stored 
--               by default as table comment within user_tab_comments. If the 
--               cartridge is not set or the uuid is unknown, it returns 'n/a'.
-- Input       : aName - The table name or a cartridge uuid.
-- Output      : The name of cartridge.
-- Example     : SELECT dbo.cn('ISORDER');
--               SELECT dbo.cn('BasicProfile');
--               SELECT dbo.cn('NV0KAB0jsSMAAAE_vkFDHC31') ;
--               SELECT dbo.cn(uuid);
--
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @ret NVARCHAR(256);
	SELECT @ret = internalname FROM cartridgeinformation WHERE uuid = @aName
	IF @ret IS NULL OR LEN(@ret) = 0
		RETURN 'n/a';
	RETURN @ret;
END
GO

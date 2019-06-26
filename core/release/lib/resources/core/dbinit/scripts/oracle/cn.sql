CREATE OR REPLACE FUNCTION cn(aName VARCHAR2) RETURN VARCHAR2
------------------------------------------------------------------------------------------
-- Name        : cn
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 05/11/2016 - CPolack      - synonym support
--             : 06/10/2013 - TKober       - cartridge uuid support
--             : 09/13/2011 - TKober       - Created
--
-- Description : This function returns the cartridge name for a given enfinity 
--               table or cartridge uuid. The enfinity cartridge name is stored 
--               by default as table comment within user_tab_comments. If the 
--               cartridge is not set or the uuid is unknown, it returns 'n/a'.
-- Input       : aName - The table name or a cartridge uuid.
-- Output      : The name of cartridge.
-- Example     : SELECT cn('ISORDER')        AS cartridge FROM dual;
--               SELECT cn('BasicProfile')   AS cartridge FROM dual;
--               SELECT cn('NV0KAB0jsSMAAAE_vkFDHC31') AS cartridge FROM dual;
--               SELECT cn(uuid) AS cartridge FROM cartridgeinformation;
--
------------------------------------------------------------------------------------------
IS
    ret user_tab_comments.comments%TYPE;
BEGIN
    EXECUTE IMMEDIATE 
    	'SELECT comments FROM user_tab_comments utc LEFT JOIN user_synonyms us ON (utc.table_name = us.table_name) WHERE utc.table_name = UPPER(:1) OR us.synonym_name = UPPER(:2) UNION
     	 SELECT internalname FROM cartridgeinformation WHERE uuid = :3'
    INTO ret USING aName, aName, aName;
    RETURN ret;
EXCEPTION
    WHEN no_data_found THEN
    	RETURN 'n/a';
END;
/

SHOW errors;

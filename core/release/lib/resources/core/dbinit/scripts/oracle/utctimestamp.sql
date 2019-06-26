CREATE OR REPLACE FUNCTION utctimestamp RETURN TIMESTAMP IS
------------------------------------------------------------------------------------------
-- Name        : utc
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 01/26/2011 - TBudich      - Created
--
-- Description : This function returns the current UTC time of database.
-- Output      : The UTC time of database.
-- Example     : SELECT utctimestamp FROM dual;
--
------------------------------------------------------------------------------------------
BEGIN
    RETURN SYS_EXTRACT_UTC(SYSTIMESTAMP);
END;
/

SHOW errors;

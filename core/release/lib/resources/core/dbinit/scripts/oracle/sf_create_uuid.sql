CREATE OR REPLACE FUNCTION sf_create_uuid
------------------------------------------------------------------------------------------
-- Name        : sf_create_uuid
--
-- Modified    : MM/DD/YYYY - Name         - Description
--                ...       - ...          - ...
--             : 05/28/2014 - TKober       - IS-3375 - unique base64 UUID instead of
--                                                     DBMS_RANDOM.STRING
--             : 07/30/2004 - TKober       - Created
--
-- Description : This function creates and returns a UUID string
--               like UUIDGenerator.createUUIDString().
--
-- Owner       : The intershop user
-- Input       : opt - @deprecated
--               len - @deprecated
-- Output      : An UUID of 24 characters.
-- Example     : column sf_create_uuid format a24
--               select sf_create_uuid from dual;
--               select sf_create_uuid from dual connect by level <= 1000;
--
------------------------------------------------------------------------------------------
(
    opt     char    default null,
    len     number  default null
)   return  varchar2
is
begin
    return uuid.create_uuid();
end sf_create_uuid;
/

show errors;

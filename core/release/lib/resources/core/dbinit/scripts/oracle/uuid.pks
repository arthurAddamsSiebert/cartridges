create or replace package uuid is

    ------------------------------------------------------------------------------------------
    -- Name        : uuid
    -- History     : user               date       - desc
    --             : kbaumgarten,tkober 06/05/2014 - performance improved
    --             :                    05/28/2014 - Created
    -- Description : This package provides unique universally identifiers (UUID's)
    ------------------------------------------------------------------------------------------

    function create_uuid return varchar2;

end uuid;
/

show errors

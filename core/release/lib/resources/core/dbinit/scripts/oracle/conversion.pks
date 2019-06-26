create or replace package conversion is

    ------------------------------------------------------------------------------------------
    -- Name        : conversion
    -- History     : user             date       - desc
    --             : ...              ...        - ...
    --             :                  05/28/2014 - Created
    -- Description : This package provides some base conversion functions:
    --               to_base, to_dec, to_hex, to_bin, to_oct
    ------------------------------------------------------------------------------------------

    function to_base (p_dec in number, p_base in number) return varchar2;
    function to_dec  (p_str in varchar2, p_from_base in number default 16) return number;
    function to_hex  (p_dec in number) return varchar2;
    function to_bin  (p_dec in number) return varchar2;
    function to_oct  (p_dec in number) return varchar2;

end conversion;
/

show errors

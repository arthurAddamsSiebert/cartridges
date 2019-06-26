create or replace package body conversion is

    ------------------------------------------------------------------------------------------
    -- Name        : conversion
    -- History     : user             date       - desc
    --             : ...              ...        - ...
    -- Description : This package provides some base conversion functions
    ------------------------------------------------------------------------------------------

    ------------------------------------------------------------------------
    -- Name        : to_base
    ------------------------------------------------------------------------
    function to_base
    (
        p_dec   in number,
        p_base  in number
    )
    return varchar2
    is
        l_str   varchar2(255)   default NULL;
        l_num   number          default p_dec;
        l_hex   varchar2(50)    default '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    begin
        if (trunc(p_dec) <> p_dec OR p_dec < 0) then
            raise PROGRAM_ERROR;
        end if;
        loop
            l_str := substr(l_hex, mod(l_num,p_base)+1, 1) || l_str;
            l_num := trunc(l_num/p_base);
            exit when (l_num = 0);
        end loop;
        return l_str;
    end to_base;

    ------------------------------------------------------------------------
    -- Name        : to_dec
    ------------------------------------------------------------------------
    function to_dec
    (
        p_str       in varchar2,
        p_from_base in number default 16
    )
    return number
    is
        l_num   number default 0;
        l_hex   varchar2(50) default '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    begin
        if (p_from_base = 16)
        then
            l_num := to_number(p_str, rpad('x',length(p_str),'x'));
        else
            for i in 1 .. length(p_str) loop
                l_num := l_num * p_from_base + instr(l_hex,upper(substr(p_str,i,1)))-1;
            end loop;
        end if;
        return l_num;
    end to_dec;

    ------------------------------------------------------------------------
    -- Name        : to_hex
    ------------------------------------------------------------------------
    function to_hex (p_dec in number) return varchar2
    is
    begin
        return to_char(p_dec, 'fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
    end to_hex;

    ------------------------------------------------------------------------
    -- Name        : to_bin
    ------------------------------------------------------------------------
    function to_bin (p_dec in number) return varchar2
    is
    begin
        return to_base (p_dec, 2);
    end to_bin;

    ------------------------------------------------------------------------
    -- Name        : to_oct
    ------------------------------------------------------------------------
    function to_oct (p_dec in number) return varchar2
    is
    begin
        return to_base(p_dec, 8);
    end to_oct;

end conversion;
/

show errors

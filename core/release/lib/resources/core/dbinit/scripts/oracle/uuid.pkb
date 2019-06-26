create or replace package body uuid is

    ------------------------------------------------------------------------
    -- Name        : create_uuid
    -- Description : This function creates and returns a UUID string
    --               of 24 characters like UUIDGenerator.createUUIDString().
    -- Input       : none
    -- Output      : the UUID
    ------------------------------------------------------------------------
    function create_uuid return varchar2
    is
        -- Returns
        l_base64_chr_str    varchar2(24);
        l_base64_raw_str    varchar2(48);

        -- Array number type
        type t_number       is table of number index by pls_integer;

        -- Array type for the 18-byte raw representation of the UUID
        type t_array        is table of raw(1) index by pls_integer;
        l_raw_uuid          t_array;

        -- Random 2-byte
        l_rand1_int         number := trunc(dbms_random.value(low=>0, high=>65535));
        l_rand2_int         number := trunc(dbms_random.value(low=>0, high=>65535));

        -- IP
        l_ip_str            varchar2(20);
        l_ip_patt           varchar2(50) := '(^\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3}$)';
        l_ip_bytes          t_number;

        -- Typecode 2-byte
        l_type_int          number := 0;

        -- CurrentTimeMillis
        l_time              number;
        l_time_bytes        t_number;

        -- Process/Sessionid
        l_sessionid         number;

        -- temp value store to avoid conversions where possible
        l_tmp       varchar2(64);

    begin

        --
        -- first random
        --
        l_tmp := lpad(conversion.to_hex(l_rand1_int), 4, '0');

        l_raw_uuid(1)  := hextoraw(substr(l_tmp,3,2));
        l_raw_uuid(2)  := hextoraw(substr(l_tmp,1,2));

        --
        -- second random
        --
        l_tmp := lpad(conversion.to_hex(l_rand2_int), 4, '0');

        l_raw_uuid(7)  := hextoraw(substr(l_tmp,3,2));
        l_raw_uuid(8)  := hextoraw(substr(l_tmp,1,2));

        --
        -- typecode, default 0 in java part
        --
        l_tmp := lpad(conversion.to_hex(l_type_int), 4, '0');

        l_raw_uuid(9)  := hextoraw(substr(l_tmp,3,2));
        l_raw_uuid(10) := hextoraw(substr(l_tmp,1,2));

        --
        -- appserver IP
        --
        select sys_context('USERENV', 'IP_ADDRESS') into l_ip_str from dual;
        l_ip_bytes(1) := nvl(regexp_substr(l_ip_str, l_ip_patt, 1, 1, 'i', 1), trunc(dbms_random.value(low=>0, high=>255)));
        l_ip_bytes(2) := nvl(regexp_substr(l_ip_str, l_ip_patt, 1, 1, 'i', 2), trunc(dbms_random.value(low=>0, high=>255)));
        l_ip_bytes(3) := nvl(regexp_substr(l_ip_str, l_ip_patt, 1, 1, 'i', 3), trunc(dbms_random.value(low=>0, high=>255)));
        l_ip_bytes(4) := nvl(regexp_substr(l_ip_str, l_ip_patt, 1, 1, 'i', 4), trunc(dbms_random.value(low=>0, high=>255)));

        -- ip test
        -- define ip = 1.2.3.4
        -- define ip = 1111.2.3.4444
        -- define pat = (^\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3}$)
        -- select
        --    nvl(REGEXP_SUBSTR('ip', 'pat', 1, 1, 'i', 1), trunc(dbms_random.value(low=>0, high=>255))) as ddd,
        --    nvl(REGEXP_SUBSTR('ip', 'pat', 1, 1, 'i', 2), trunc(dbms_random.value(low=>0, high=>255))) as ddd,
        --    nvl(REGEXP_SUBSTR('ip', 'pat', 1, 1, 'i', 3), trunc(dbms_random.value(low=>0, high=>255))) as ddd,
        --    nvl(REGEXP_SUBSTR('ip', 'pat', 1, 1, 'i', 4), trunc(dbms_random.value(low=>0, high=>255))) as ddd
        -- from dual;

        l_raw_uuid(3)  := hextoraw(conversion.to_hex(l_ip_bytes(1)));
        l_raw_uuid(4)  := hextoraw(conversion.to_hex(l_ip_bytes(2)));
        l_raw_uuid(5)  := hextoraw(conversion.to_hex(l_ip_bytes(3)));
        l_raw_uuid(6)  := hextoraw(conversion.to_hex(l_ip_bytes(4)));

        --
        -- CurrentTimeMillis
        --
        select (sysdate - to_date('01-01-1970','DD-MM-YYYY')) * (24 * 60 * 60 * 1000)
            + to_number(to_char(systimestamp,'FF3')) into l_time from dual;

        l_tmp := lpad(conversion.to_hex(l_time), 16, '0');

        l_raw_uuid(13) := hextoraw(substr(l_tmp, 15, 2));
        l_raw_uuid(14) := hextoraw(substr(l_tmp, 13, 2));
        l_raw_uuid(18) := hextoraw(substr(l_tmp, 11, 2));
        l_raw_uuid(17) := hextoraw(substr(l_tmp,  9, 2));
        l_raw_uuid(12) := hextoraw(substr(l_tmp,  7, 2));
        l_raw_uuid(11) := hextoraw(substr(l_tmp,  5, 2));
        -- byte 7 and 8 unused for uuid base64 calculation

        --
        -- Process/Sessionid
        --
        select sys_context('USERENV', 'SESSIONID') into l_sessionid from dual;

        l_tmp := lpad(conversion.to_hex(l_sessionid), 16, '0');

        l_raw_uuid(15) := hextoraw(substr(l_tmp, 15, 2));
        l_raw_uuid(16) := hextoraw(substr(l_tmp, 13, 2));

        --
        -- Base64 encode and char handling
        --
        l_base64_raw_str := utl_encode.base64_encode
                            (
                              utl_raw.concat
                              (
                                utl_raw.concat
                                (
                                   l_raw_uuid(1)
                                  ,l_raw_uuid(2)
                                  ,l_raw_uuid(3)
                                  ,l_raw_uuid(4)
                                  ,l_raw_uuid(5)
                                  ,l_raw_uuid(6)
                                  ,l_raw_uuid(7)
                                  ,l_raw_uuid(8)
                                  ,l_raw_uuid(9)
                                  ,l_raw_uuid(10)
                                ),
                                utl_raw.concat
                                (
                                   l_raw_uuid(11)
                                  ,l_raw_uuid(12)
                                  ,l_raw_uuid(13)
                                  ,l_raw_uuid(14)
                                  ,l_raw_uuid(15)
                                  ,l_raw_uuid(16)
                                  ,l_raw_uuid(17)
                                  ,l_raw_uuid(18)
                                )
                              )
                            );

        l_base64_chr_str := chr(conversion.to_dec(substr(l_base64_raw_str, 1,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str, 3,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str, 5,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str, 7,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str, 9,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,11,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,13,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,15,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,17,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,19,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,21,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,23,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,25,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,27,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,29,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,31,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,33,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,35,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,37,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,39,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,41,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,43,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,45,2)))
                         || chr(conversion.to_dec(substr(l_base64_raw_str,47,2)))
                         ;

        --
        -- Java part doc: not using "+" and "/" ... , but "." and "_"
        -- to avoid problems in the URL string.
        --
        l_base64_chr_str := replace(l_base64_chr_str, '+', '.');
        l_base64_chr_str := replace(l_base64_chr_str, '/', '_');

        return l_base64_chr_str;

    end create_uuid;

end uuid;
/

show errors;



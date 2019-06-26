begin
        IF staging.is_prepared('COMPILEDPROMOTION') THEN
            EXECUTE IMMEDIATE 'truncate table '||staging.get_table_name('COMPILEDPROMOTION', '$1');
            EXECUTE IMMEDIATE 'truncate table '||staging.get_table_name('COMPILEDPROMOTION', '$2');
        ELSE
            EXECUTE IMMEDIATE 'truncate table COMPILEDPROMOTION';
        END IF;
end;
/

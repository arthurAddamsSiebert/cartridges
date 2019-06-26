begin
    staging.update_table('jobconfiguration', 'set name = trim(name) where name like ''% ''');
    commit;
end;
/
show errors;

begin
    staging.update_table('catalog_av',
            'set name = ''description'''
      || ' where name = ''shortDescription''');
      commit;
end;
/
show errors;

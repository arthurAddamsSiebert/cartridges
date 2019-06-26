begin
    staging.update_table('usergroup',
            'set typename = ''CATALOGFILTER'''
      || ' where id like ''CatalogFilter_%''');
      commit;
end;
/
show errors;

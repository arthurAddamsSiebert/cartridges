begin
    staging.update_table('usergroup',
            'set typename = ''PROMOTION'''
      || ' where id like ''Promotion_%''');
    staging.update_table('usergroup',
            'set typename = ''CAMPAIGN'''
      || ' where id like ''CAMPAIGN_%''');
    staging.update_table('usergroup',
            'set typename = ''ABTEST'''
      || ' where id like ''ABTest_%''');
      commit;
end;
/
show errors;

begin
    staging.update_table('syndication_av',
            'set type=14, textvalue = REPLACE(stringvalue,chr(9),''|'')'
      || ' where name = ''StaticPagesIDs''');
    staging.update_table('syndication_av',
            'set stringvalue = null'
      || ' where name = ''StaticPagesIDs''');
      commit;
end;
/
show errors;

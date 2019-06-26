BEGIN
  staging.update_table('productset_av', 'SET textvalue=stringvalue, type=14 WHERE name=''AssignedManufacturers''');
  staging.update_table('productset_av', 'SET stringvalue=null               WHERE name=''AssignedManufacturers''');

  staging.update_table('productset_av', 'SET textvalue=stringvalue, type=14 WHERE name=''AssignedManufacturersAliases''');
  staging.update_table('productset_av', 'SET stringvalue=null               WHERE name=''AssignedManufacturersAliases''');
END;
/

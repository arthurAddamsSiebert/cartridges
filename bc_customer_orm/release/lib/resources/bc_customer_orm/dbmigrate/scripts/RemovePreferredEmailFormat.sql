BEGIN
  staging.delete_from('basicprofile_av', 'WHERE name = ''PreferredEmailFormat''');
END;
/
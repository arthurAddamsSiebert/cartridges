BEGIN
 staging.update_table('basicprofile_av', 'SET stringvalue = ''TEXT'' WHERE name = ''EmailFormat'' AND stringvalue != ''TEXT'' AND stringvalue != ''HTML''');
END;
/
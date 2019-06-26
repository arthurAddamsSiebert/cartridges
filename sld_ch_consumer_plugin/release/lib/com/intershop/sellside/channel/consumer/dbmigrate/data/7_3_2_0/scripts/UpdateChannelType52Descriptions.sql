begin
    staging.update_table('channeltype_av',
           'set stringvalue = ''Sales Channel'' '
      || 'where ownerid = (select uuid from channeltype where channeltypecode = 52)'
      || '  and name=''displayName'' and localeid=''en_US''');
    staging.update_table('channeltype_av',
           'set stringvalue = ''Sales-Channel'' '
      || 'where ownerid = (select uuid from channeltype where channeltypecode = 52)'
      || '  and name=''displayName'' and localeid=''de_DE''');
    staging.update_table('channeltype_av',
           'set stringvalue = ''A channel for direct customers of the organization.'' '
      || 'where ownerid = (select uuid from channeltype where channeltypecode = 52)'
      || '  and name=''description'' and localeid=''en_US''');
    commit;
end;
/
show errors;
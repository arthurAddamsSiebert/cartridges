BEGIN
    --
    -- creates an application domain relation between applications of type 'intershop.EnterpriseBackoffice'
    -- and the according ApplicationBO repository with name 'ApplicationBORepository'
    --
    staging.update_table('application',
        'SET urlIdentifier=dn(domainid), oca=oca+1, lastmodified=utctimestamp() WHERE urlidentifier=''enterprise'' AND appid=''intershop.EnterpriseBackoffice''');
  COMMIT;
END;
/
show errors;

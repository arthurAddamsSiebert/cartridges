BEGIN
    FOR i IN (
        SELECT
            ri.roleid, ri_av.name, ri_av.localeid, ri_av.stringvalue
        FROM
            roleinformation ri, roleinformation_av ri_av
        WHERE
            ri.uuid = ri_av.ownerid AND
            ri_av.name IN ('name', 'description')
    ) LOOP
        staging.update_table('usergroupinformation_av',
        'SET stringvalue='''||replace(i.stringvalue,'''','''''')||''' WHERE '
         || ' name = '''||i.name||''' AND'
         || ' ownerid in (SELECT ugi.uuid FROM usergroupinformation ugi WHERE ugi.usergroupid = '''||i.roleid||''') AND'
         || ' localeid='''||i.localeid||'''');
    END LOOP;
    COMMIT;
END;
/
show errors;
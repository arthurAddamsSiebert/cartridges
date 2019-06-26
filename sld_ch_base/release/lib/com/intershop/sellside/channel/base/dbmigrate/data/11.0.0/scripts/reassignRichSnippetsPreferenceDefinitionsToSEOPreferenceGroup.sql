--
-- Reassign PreferenceDefinitions of 'RichSnippetsPreferences' group to 'SEOPreferences' group.
--
-- Note: All involved tables might be part of staging, therefor staging.update_table is used instead of a simple SQL
BEGIN

    staging.update_table('PREFERENCEDEFINITION', 'p SET PREFERENCEGROUPID = (SELECT uuid FROM PREFERENCEGROUP WHERE groupname = ''SEOPreferences''), p.oca = p.oca+1, p.lastmodified=sysdate WHERE PREFERENCEGROUPID = (SELECT uuid FROM PREFERENCEGROUP WHERE groupname = ''RichSnippetsPreferences'')');
	
COMMIT;
END;
/

show errors;

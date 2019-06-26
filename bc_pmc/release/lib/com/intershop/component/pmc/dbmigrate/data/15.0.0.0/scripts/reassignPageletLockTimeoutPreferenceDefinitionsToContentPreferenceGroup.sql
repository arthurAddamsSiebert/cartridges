--
-- Reassign PreferenceDefinitions of 'PageletLockTimeout' group to 'ContentPreferences' group.
--
-- Note: All involved tables might be part of staging, therefor staging.update_table is used instead of a simple SQL
BEGIN

    staging.update_table('PREFERENCEDEFINITION', 'p SET p.PREFERENCEGROUPID = (SELECT uuid FROM PREFERENCEGROUP WHERE GROUPNAME = ''ContentPreferences''), p.oca = p.oca+1, p.lastmodified=sysdate WHERE p.PREFERENCENAME = ''PageletLockTimeout''');
	
COMMIT;
END;
/

show errors;
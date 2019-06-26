-- migrate ABTest domains
-- impacted tables:
-- ABTest, ABTestGroup, UserGroup, UserGroupAssignment, ABTestStatistics, ABTestEvent, UserGroup_PA 
BEGIN
	FOR i IN (
		-- get ids from ABTests which lays in a organization domain 
		SELECT 
			abt.domainID as OldDomainID,
			org.domainID as NewDomainID,
			abt.uuid as ABTestUUID, 
			abt.targetGroupID as TargetGroupID 
		FROM ABTest abt
		JOIN Organization org on org.organizationDomainID = abt.domainID)
		
	LOOP
		-- update ABTest
		staging.update_table('ABTest',
						' SET '
						||'  domainID = '''||i.NewDomainID||''','
						||'  targetGroupDomainID = '''||i.NewDomainID||''','
						||'  oca = oca+1,'
						||'  lastModified = UTCTIMESTAMP()'
						||' WHERE '
						||'  uuid = '''||i.ABTestUUID||'''');
			
		--update UserGroup (TargetGroup of ABTest) 
		staging.update_table('UserGroup',
						' SET '
						||'  domainID = '''||i.NewDomainID||''','
						||'  oca = oca+1,'
						||'  lastModified = UTCTIMESTAMP()'
						||' WHERE '
						||'  id = '''||i.TargetGroupID||''''
						||'  and domainID = '''||i.OldDomainID||'''');

		--update UserGroupInformation from TargetGroup 
		staging.update_table('UserGroupInformation',
						' SET '
						||'  userGroupDomainID = '''||i.NewDomainID||''','
						||'  domainID = '''||i.NewDomainID||''','
						||'  oca = oca+1,'
						||'  lastModified = UTCTIMESTAMP()'
						||' WHERE '
						||'  userGroupID = '''||i.TargetGroupID||''''
						||'  and userGroupDomainID = '''||i.OldDomainID||'''');

		--update UserGroupAssignment from TargetGroup 
		staging.update_table('UserGroupAssignment',
						' SET '
						||'  parentUserGroupDomainID = '''||i.NewDomainID||''','
						||'  oca = oca+1,'
						||'  lastModified = UTCTIMESTAMP()'
						||' WHERE '
						||'  parentUserGroupID = '''||i.TargetGroupID||''''
						||'  and parentUserGroupDomainID = '''||i.OldDomainID||'''');

		--get all test groups from ABTestGroup 
		FOR j IN (			 
			SELECT 
				uuid as ABTestGroupUUID, 
				userGroupID as TargetGroupID 
			FROM ABTestGroup 
			WHERE 
				abTestUUID = i.ABTestUUID)
		LOOP
			--update UserGroup (TargetGroup of ABTestGroup) 
			staging.update_table('UserGroup',
							' SET '
							||'  domainID = '''||i.NewDomainID||''','
							||'  oca = oca+1,'
							||'  lastModified = UTCTIMESTAMP()'
							||' WHERE '
							||'  id = '''||j.TargetGroupID||''''
							||'  and domainID = '''||i.OldDomainID||'''');

			--update UserGroupInformation from TestGroup:TargetGroup  
			staging.update_table('UserGroupInformation',
							' SET '
							||'  userGroupDomainID = '''||i.NewDomainID||''','
							||'  domainID = '''||i.NewDomainID||''','
							||'  oca = oca+1,'
							||'  lastModified = UTCTIMESTAMP()'
							||' WHERE '
							||'  userGroupID = '''||j.TargetGroupID||''''
							||'  and userGroupDomainID = '''||i.OldDomainID||'''');

			--update UserGroupAssignment from TestGroup:TargetGroup 
			staging.update_table('UserGroupAssignment',
							' SET '
							||'  childUserGroupDomainID = '''||i.NewDomainID||''','
							||'  oca = oca+1,'
							||'  lastModified = UTCTIMESTAMP()'
							||' WHERE '
							||'  childUserGroupID = '''||j.TargetGroupID||''''
							||'  and childUserGroupDomainID = '''||i.OldDomainID||'''');

			--update ABTestStatistics
			staging.update_table('ABTestStatistics',
							' SET '
							||'  domainID = '''||i.NewDomainID||''','
							||'  oca = oca+1,'
							||'  lastModified = UTCTIMESTAMP()'
							||' WHERE '
							||'  abTestGroupUUID = '''||j.ABTestGroupUUID||''''
							||'  and domainID = '''||i.OldDomainID||'''');

			--update ABTestStatistics
			staging.update_table('ABTestEvent',
							' SET '
							||'  domainID = '''||i.NewDomainID||''','
							||'  lastModified = UTCTIMESTAMP()'
							||' WHERE '
							||'  abTestGroupUUID = '''||j.ABTestGroupUUID||''''
							||'  and domainID = '''||i.OldDomainID||'''');
	
			--update UserGroup_PA
			staging.update_table('UserGroup_PA',
							' SET '
							||'  userGroupDomainID = '''||i.NewDomainID||''','
							||'  oca = oca+1,'
							||'  lastModified = UTCTIMESTAMP()'
							||' WHERE '
							||'  userGroupID = '''||j.TargetGroupID||''''
							||'  and userGroupDomainID = '''||i.OldDomainID||'''');
		END LOOP;
		
		-- update ABTestGroup
		staging.update_table('ABTestGroup',
						' SET '
						||'  domainID = '''||i.NewDomainID||''','
						||'  oca = oca+1,'
						||'  lastModified = UTCTIMESTAMP()'
						||' WHERE '
						||'  abTestUUID = '''||i.ABTestUUID||''''
						||'  and domainID = '''||i.OldDomainID||'''');
						
		COMMIT;
	END LOOP;
END;
/

show errors;

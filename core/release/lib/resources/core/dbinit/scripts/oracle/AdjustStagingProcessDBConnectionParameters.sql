--
-- Removes DB connection parameters stored in process_av table on live systems
-- where SourceDatabaseLinkName and SourceDatabaseUser is defined for the 
-- same process. The SourceDatabaseUser value is removed if SourceDatabaseLinkName
-- is also defined. This is necessary to avoid issues during SyncLiveWithEditingStagingProcess. 
--
BEGIN
  
  FOR i IN (SELECT p.uuid FROM process p, process_av pav WHERE p.name='StagingProcess' AND p.uuid=pav.ownerid AND pav.name='SourceDatabaseLinkName' AND pav.stringvalue IS NOT NULL) LOOP
    
    DELETE FROM process_av WHERE ownerid=i.uuid AND name='SourceDatabaseUser' AND stringvalue IS NOT NULL;
    
    COMMIT;
      
  END LOOP;
  
END;
/









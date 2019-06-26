@logger.sql
@sql_util.sql
@types.sql
@ddl.sql
@staging.sql
@staging_ddl.sql

--
-- domain name, cartridge name, domainid
@dn.sql
@cn.sql
@domainid.sql
--
-- ...
--@sp_compile_object.sql
@sp_compile_invalid_objects.sql
@sf_is_staging_table.sql
@staging_identification.ddl
--
-- core
@core.sql
--
-- conversion, uuid
@conversion.sql
@uuid.sql
--
-- stats
@sp_gather_table_stats.sql
@sp_gather_schema_stats.sql
--
-- ...
@sp_enable_deletion_tracking.sql
@sp_createContextIndexPrefs.sql
@sp_session_cleanup.sql
@sp_deleteDeletedUser.sql
--
-- domain deletion
@sp_genericPoAvDeleteByDomain.sql
@sp_genStagPoAvDeleteByDomain.sql
@sp_deleteUserDataByDomain.sql
@sp_deletePreferencesByDomain.sql
@sp_deleteEventsByDomain.sql
@sp_deleteProcessesByDomain.sql
@sp_deleteReplTasksByDomain.sql
@sp_deleteRegSettingsByDomain.sql
@sp_deleteJobsByDomain.sql
@sp_deleteExchangeRatesByDomain.sql
@sp_deleteLocalizationByDomain.sql
@sp_deleteApplicationByDomain.sql
--
-- ...
@sp_create_indexes.sql
@sp_drop_indexes.sql
@sp_grant_select_on_views_to.sql
@sf_execute_sql_using_rbs.sql
@sp_delete_workflow_processes.sql
@sp_updateLocaleID.sql
@sp_table_monitoring.sql
@sp_indexRecreateForTablespace.sql
@sp_check4NotUsableIndexes.sql
@sp_recreate_matviews.sql
@sp_deleteWorkflowsByDomain.sql
@sp_deleteNonReferencedRAs.sql
@sf_create_uuid.sql
@sp_deleteProcesses.sql
@sp_deleteReplicationProcesses.sql
@sp_refresh_mview.sql
@sp_deleteCacheClearKeyBatchCtn.sql
@sp_deleteSyncMessageResponses.sql
@sp_deleteDynamicPGIDByDomain.sql
@sp_enableCartridgeConstraints.sql
@sp_getDDL.sql

exit

-- clean up tables in staging scenario
CREATE OR ALTER PROCEDURE sp_deletePageletsByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ConfigurationParameter',          @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SlotSharingInfo',                 @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('SlotPageletAssignment',           @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PageletEntryPointSharingInfo',    @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PageletEntryPointRelation',       @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PageletEntryPointLabelAssignmt',  @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PageletEntryPoint_PA',            @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PageletEntryPoint_PCCA',          @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PageletLabelAssignment',          @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('UserGroup_PA',                    @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PlaceholderDef_PCCA',             @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('Placeholder_PA',                  @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('ViewContext_PEPA',                @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PlaceholderDef_PCCA', @suffix),
				' WHERE pageletconstraintctnrid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletConstraintCtnr', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0		
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint_PCCA', @suffix),
				' WHERE pageletconstraintctnrid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletConstraintCtnr', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletConstraint', @suffix),
				' WHERE containeruuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletConstraintCtnr', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0	
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletDefinitionConstraint', @suffix),
				' WHERE containeruuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletConstraintCtnr', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletConstraintCtnr', @suffix),
				' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PlaceholderDef_PCCA', @suffix),
				' WHERE placeholderdefinitionid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PlaceholderDef', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PLACEHOLDERDEF_OVERRIDE',        @suffix), ' WHERE domainid = ''', @in_domainid, ''''); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PLACEHOLDER_OVERRIDE',           @suffix), ' WHERE domainid= ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		EXEC sp_genericPoAvDeleteByDomain 'PlaceholderDef', 'PlaceholderDef_AV', @suffix, @in_domainid, 'domainid';

		-- delete override placeholder markers pointing into the deleted domain 
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PlaceholderDef_AV', @suffix),
				' WHERE name = (SELECT concat(''OVPH_'', domainname) FROM ' , dbo.STAGING$get_table_name('DomainInformation', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PLACEHOLDER_PARENT',             @suffix), ' WHERE domainid= ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PLACEHOLDER_PPA',                @suffix), ' WHERE domainid= ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('PLACEHOLDER_SPA',                @suffix), ' WHERE domainid= ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('SlotSharingInfo', @suffix),
				' WHERE slotid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Slot', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('SlotPageletAssignment', @suffix),
				' WHERE parentslotid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Slot', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		EXEC sp_genericPoAvDeleteByDomain 'Slot', 'Slot_AV', @suffix, @in_domainid, 'domainid';
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPointRelation', @suffix),
				' WHERE parententrypointid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint', @suffix), 
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPointRelation', @suffix),
				' WHERE entrypointid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint', @suffix), 
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPointSharingInfo', @suffix),
				' WHERE entrypointid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
				
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPointLabelAssignmt', @suffix),
				' WHERE pageletentrypointuuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint_PA', @suffix),
				' WHERE entrypointid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
				
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint_PCCA', @suffix),
				' WHERE pageletentrypointid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		EXEC sp_genericPoAvDeleteByDomain 'PageletEntryPoint', 'PageletEntryPoint_AV', @suffix, @in_domainid, 'domainid';
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletConstraint', @suffix),
				' WHERE pageletuuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Pagelet', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletLabelAssignment', @suffix),
				' WHERE pageletuuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Pagelet', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('UserGroup_PA', @suffix),
				' WHERE pageletuuid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Pagelet', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('SlotPageletAssignment', @suffix),
				' WHERE subpageletid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Pagelet', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('PageletEntryPoint_PA', @suffix),
				' WHERE pageletid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Pagelet', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
		
		SET @sqlQuery = CONCAT('DELETE FROM ' , dbo.STAGING$get_table_name('Placeholder_PA', @suffix),
				' WHERE pageletid IN (SELECT uuid FROM ' , dbo.STAGING$get_table_name('Pagelet', @suffix),
						' WHERE domainid = ''', @in_domainid, ''')'); 
		EXEC SQL_UTIL$execute @sqlQuery, 0
				
		EXEC sp_genericPoAvDeleteByDomain 'DerivedPagelet', 'DerivedPagelet_AV', @suffix, @in_domainid, 'domainid';

		EXEC sp_genericPoAvDeleteByDomain 'Pagelet', 'Pagelet_AV', @suffix, @in_domainid, 'domainid';

		EXEC sp_genericPoAvDeleteByDomain 'ViewContext', 'ViewContext_AV', @suffix, @in_domainid, 'domainid';

	COMMIT;

END
GO
CREATE OR ALTER PROCEDURE sp_deletePageletsByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deletePageletsByDomain
-- History     : user             date       - desc
--             : ...
-- Created     :
-- Description : This procedure deletes
--
--
-- * CONFIGURATIONPARAMETER
-- * DERIVEDPAGELET
-- * DERIVEDPAGELET_AV
-- * PAGELET
-- * PAGELET_AV
-- * PAGELETCONSTRAINT
-- * PAGELETCONSTRAINTCTNR
-- * PAGELETDEFINITIONCONSTRAINT
-- * PAGELETENTRYPOINT
-- * PAGELETENTRYPOINT_PCCA
-- * PAGELETENTRYPOINT_AV
-- * PAGELETENTRYPOINTLABELASSIGNMT
-- * PAGELETENTRYPOINTRELATION
-- * PAGELETENTRYPOINTSHARINGINFO
-- * PAGELETENTRYPOINT_PA
-- * PAGELETLABELASSIGNMENT
-- * PLACEHOLDERDEF
-- * PLACEHOLDERDEF_AV
-- * PLACEHOLDERDEF_OVERRIDE
-- * PLACEHOLDERDEF_PCCA
-- * PLACEHOLDER_OVERRIDE
-- * PLACEHOLDER_PA
-- * PLACEHOLDER_PARENT
-- * PLACEHOLDER_PPA
-- * PLACEHOLDER_SPA
-- * SLOT
-- * SLOT_AV
-- * SLOTPAGELETASSIGNMENT
-- * SLOTSHARINGINFO
-- * USERGROUP_PA
-- * VIEWCONTEXT
-- * VIEWCONTEXT_AV
-- * VIEWCONTEXT_PEPA
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletePageletsByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN

    IF dbo.sf_is_staging_table ('Pagelet') = 1
	BEGIN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        EXEC sp_deletePageletsByDomain$deleteFromStagingTables @domainID, '$1';
        EXEC sp_deletePageletsByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        EXEC sp_deletePageletsByDomain$deleteFromStagingTables @domainID, null;

END
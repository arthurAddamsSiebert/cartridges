CREATE OR REPLACE PROCEDURE sp_deletePageletsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deletePageletsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
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
-- Example     : exec sp_deletePageletsByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS

    BEGIN

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ConfigurationParameter',          suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SlotSharingInfo',                 suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SlotPageletAssignment',           suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PageletEntryPointSharingInfo',    suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PageletEntryPointRelation',       suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PageletEntryPointLabelAssignmt',  suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PageletEntryPoint_PA',            suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PageletEntryPoint_PCCA',          suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PageletLabelAssignment',          suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('UserGroup_PA',                    suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PlaceholderDef_PCCA',             suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Placeholder_PA',                  suffix)||' WHERE domainid=:domainid' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ViewContext_PEPA',                suffix)||' WHERE domainid=:domainid' USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PlaceholderDef_PCCA',suffix) ||
				' WHERE pageletconstraintctnrid IN (SELECT uuid FROM ' || staging.get_table_name('PageletConstraintCtnr', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPoint_PCCA',suffix) ||
				' WHERE pageletconstraintctnrid IN (SELECT uuid FROM ' || staging.get_table_name('PageletConstraintCtnr', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletConstraint',suffix) ||
				' WHERE containeruuid IN (SELECT uuid FROM ' || staging.get_table_name('PageletConstraintCtnr', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletDefinitionConstraint',suffix) ||
				' WHERE containeruuid IN (SELECT uuid FROM ' || staging.get_table_name('PageletConstraintCtnr', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletConstraintCtnr',suffix) ||
				' WHERE domainid = :in_domainid' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PlaceholderDef_PCCA',suffix) ||
				' WHERE placeholderdefinitionid IN (SELECT uuid FROM ' || staging.get_table_name('PlaceholderDef', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PLACEHOLDERDEF_OVERRIDE',        suffix)||' WHERE domainid=:domainid' USING in_domainid;
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PLACEHOLDER_OVERRIDE',           suffix)||' WHERE domainid=:domainid' USING in_domainid;
		
		sp_genericPoAvDeleteByDomain('PlaceholderDef', 'PlaceholderDef_AV', suffix, in_domainid, 'domainid');

		-- delete override placeholder markers pointing into the deleted domain 
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PlaceholderDef_AV',suffix) ||
				' WHERE name = (SELECT concat(''OVPH_'', domainname) FROM ' || staging.get_table_name('DomainInformation', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;		
		
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PLACEHOLDER_PARENT',             suffix)||' WHERE domainid=:domainid' USING in_domainid;
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PLACEHOLDER_PPA',                suffix)||' WHERE domainid=:domainid' USING in_domainid;
		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PLACEHOLDER_SPA',                suffix)||' WHERE domainid=:domainid' USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('SlotSharingInfo',suffix) ||
				' WHERE slotid IN (SELECT uuid FROM ' || staging.get_table_name('Slot', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('SlotPageletAssignment',suffix) ||
				' WHERE parentslotid IN (SELECT uuid FROM ' || staging.get_table_name('Slot', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		sp_genericPoAvDeleteByDomain('Slot', 'Slot_AV', suffix, in_domainid, 'domainid');
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPointRelation',suffix) ||
				' WHERE parententrypointid IN (SELECT uuid FROM ' || staging.get_table_name('PageletEntryPoint', suffix) || 
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPointRelation',suffix) ||
				' WHERE entrypointid IN (SELECT uuid FROM ' || staging.get_table_name('PageletEntryPoint', suffix) || 
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPointSharingInfo',suffix) ||
				' WHERE entrypointid IN (SELECT uuid FROM ' || staging.get_table_name('PageletEntryPoint', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
				
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPointLabelAssignmt',suffix) ||
				' WHERE pageletentrypointuuid IN (SELECT uuid FROM ' || staging.get_table_name('PageletEntryPoint', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPoint_PA',suffix) ||
				' WHERE entrypointid IN (SELECT uuid FROM ' || staging.get_table_name('PageletEntryPoint', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
				
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPoint_PCCA',suffix) ||
				' WHERE pageletentrypointid IN (SELECT uuid FROM ' || staging.get_table_name('PageletEntryPoint', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		sp_genericPoAvDeleteByDomain('PageletEntryPoint', 'PageletEntryPoint_AV', suffix, in_domainid, 'domainid');
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletConstraint',suffix) ||
				' WHERE pageletuuid IN (SELECT uuid FROM ' || staging.get_table_name('Pagelet', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletLabelAssignment',suffix) ||
				' WHERE pageletuuid IN (SELECT uuid FROM ' || staging.get_table_name('Pagelet', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('UserGroup_PA',suffix) ||
				' WHERE pageletuuid IN (SELECT uuid FROM ' || staging.get_table_name('Pagelet', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('SlotPageletAssignment',suffix) ||
				' WHERE subpageletid IN (SELECT uuid FROM ' || staging.get_table_name('Pagelet', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('PageletEntryPoint_PA',suffix) ||
				' WHERE pageletid IN (SELECT uuid FROM ' || staging.get_table_name('Pagelet', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('Placeholder_PA',suffix) ||
				' WHERE pageletid IN (SELECT uuid FROM ' || staging.get_table_name('Pagelet', suffix) ||
						' WHERE domainid = :in_domainid)' 
				USING in_domainid;
				
		sp_genericPoAvDeleteByDomain('DerivedPagelet', 'DerivedPagelet_AV', suffix, in_domainid, 'domainid');

		sp_genericPoAvDeleteByDomain('Pagelet', 'Pagelet_AV', suffix, in_domainid, 'domainid');

		sp_genericPoAvDeleteByDomain('ViewContext', 'ViewContext_AV', suffix, in_domainid, 'domainid');

		COMMIT;

	END;

BEGIN

    IF sf_is_staging_table('Pagelet') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deletePageletsByDomain;
/

show errors

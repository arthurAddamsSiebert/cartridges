CREATE OR REPLACE PROCEDURE sp_deleteCMSVRsByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteCMSVRsByDomain
-- Description : This procedure deletes
-- * PAGELET_VR 
-- * PAGELETENTRYPOINT_VR 
-- * SLOT_VR
-- * VIEWCONTEXT_VR.
-- * PLACEHOLDER_VR
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCMSVRsByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PAGELET_VR',          	suffix)||' 
			WHERE domainid=:domainid or configurationparameterctnrid in 
				(Select UUID from '||staging.get_table_name('PAGELET',suffix)||' where domainid=:domainid)' USING in_domainid, in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PAGELETENTRYPOINT_VR',    suffix)||' 
			WHERE domainid=:domainid or configurationparameterctnrid in 
				(Select UUID from '||staging.get_table_name('PAGELETENTRYPOINT',suffix)||' where domainid=:domainid)' USING in_domainid, in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('SLOT_VR',           		suffix)||' 
			WHERE domainid=:domainid or configurationparameterctnrid in 
				(Select UUID from '||staging.get_table_name('SLOT',suffix)||' where domainid=:domainid)' USING in_domainid, in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('VIEWCONTEXT_VR',           suffix)||' 
			WHERE domainid=:domainid or configurationparameterctnrid in 
				(Select UUID from '||staging.get_table_name('VIEWCONTEXT',suffix)||' where domainid=:domainid)' USING in_domainid, in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('PLACEHOLDER_VR',           suffix)||' 
			WHERE domainid=:domainid or placeholderid in 
				(Select UUID from '||staging.get_table_name('PLACEHOLDER_PPA',suffix)||' where domainid=:domainid union all
					Select UUID from '||staging.get_table_name('PLACEHOLDER_SPA',suffix)||' where domainid=:domainid union all
      				Select UUID from '||staging.get_table_name('PLACEHOLDER_PARENT',suffix)||' where domainid=:domainid)' 
      		USING in_domainid, in_domainid, in_domainid, in_domainid;      		
      		
        COMMIT;
    END;

BEGIN

    IF sf_is_staging_table('PAGELET_VR') THEN
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

END sp_deleteCMSVRsByDomain;
/

show errors

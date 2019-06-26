CREATE OR REPLACE PROCEDURE sp_deleteGeoObjectsByDomain(domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
--
-- Name        : sp_deleteGeoObjectsByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
-- Created     : Sonja Egger
-- Description : This procedure deletes
--
-- * STATEPROVINCE
-- * LOCATION
-- * COUNTRY
-- * REGIONGEOOBJECTASSIGNMENT
-- * REGIONASSIGNMENT
-- * REGION
--
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteGeoObjectsByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
--
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
    BEGIN

        -------------------
        -- GEOREFERENCES --
        -------------------

        --
        -- STATEPROVINCE
        --			
		sp_genericPoAvDeleteByDomain('STATEPROVINCE','STATEPROVINCE_AV', suffix, in_domainid, 'domainid');	
		
        --
        -- LOCATION
        --
		sp_genericPoAvDeleteByDomain('LOCATION','LOCATION_AV', suffix, in_domainid, 'domainid');	
			
        --
        -- COUNTRY
        --
		sp_genericPoAvDeleteByDomain('COUNTRY','COUNTRY_AV', suffix, in_domainid, 'domainid');	

        -------------------
        -- REGION        --
        -------------------

        --
        -- REGIONASSIGNMENT
        --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('REGIONGEOOBJECTASSIGNMENT', suffix) ||
            ' WHERE regionid IN (SELECT uuid FROM ' || staging.get_table_name('REGION', suffix)||' WHERE domainid = :domainid)'
            USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('REGIONASSIGNMENT', suffix) ||
            ' WHERE excludedregionid IN (SELECT uuid FROM ' || staging.get_table_name('REGION', suffix)||' WHERE domainid = :domainid)'
            USING in_domainid;

        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('REGIONASSIGNMENT', suffix) ||
            ' WHERE excludingregionid IN (SELECT uuid FROM ' || staging.get_table_name('REGION', suffix)||' WHERE domainid = :domainid)'
            USING in_domainid;

        --
        -- REGION
        --
		sp_genericPoAvDeleteByDomain('REGION','REGION_AV', suffix, in_domainid, 'domainid');		
			
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('Region') THEN
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

END;
/

show errors
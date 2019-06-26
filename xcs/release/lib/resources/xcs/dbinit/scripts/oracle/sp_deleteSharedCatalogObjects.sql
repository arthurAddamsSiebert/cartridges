create or replace PROCEDURE sp_deleteSharedCatalogObjects (catalogDomainID IN VARCHAR2, domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteSHAREDcatalogobjectsbydomain
-- History     : user              date       - desc
--             : ...
-- Created     : Georgi Gilev 24/10/2014
-- Description : This procedure deletes
--               (a). imagesetcategoryassi_av's  owned by a given imagesetcategoryassignment
--               (b). imagesetcategoryassignment's owned by a given domain
-- Owner       : The special XCS Beehive/PowerTier user.
-- Input       : catalogDomainID - The domain ID of the "to be removed" catalog Domain.
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteSharedCatalogObjects('9JIKDACQpXMAAAFYuFpzoGee', 'OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deleteFromStagingTables(in_catalogdomainid IN VARCHAR2, in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        uuid catalogcategory.uuid%TYPE;
        uuid_len NUMBER := 28;
        cur BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret BINARY_INTEGER;
    BEGIN

-- IMAGESETCATEGORYASSI_AV
-- IMAGESETCATEGORYASSIGNMENT

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('CatalogCategory', suffix)||' WHERE domainid = :in_catalogdomainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_catalogdomainid', in_catalogdomainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (CUR, 1, UUID);
            EXECUTE IMMEDIATE 'DELETE FROM '||STAGING.GET_TABLE_NAME('imagesetcategoryassi_av', SUFFIX)||' WHERE ownerid in (select uuid from  '||STAGING.GET_TABLE_NAME('imagesetcategoryassignment', SUFFIX)||' where domainid = :domainid AND catalogcategoryuuid IN (SELECT UUID FROM ' || STAGING.GET_TABLE_NAME('CatalogCategory', SUFFIX) || ' START WITH UUID = :uuid CONNECT BY PRIOR UUID = PARENTCATEGORYID))' USING IN in_domainid, uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('imagesetcategoryassignment', suffix)||' WHERE domainid = :domainid AND catalogcategoryuuid IN (SELECT UUID FROM ' || staging.get_table_name('CatalogCategory', suffix) || ' START WITH UUID = :uuid CONNECT BY PRIOR UUID = PARENTCATEGORYID)' USING IN in_domainid, uuid;

        END LOOP;
        COMMIT;

        DBMS_SQL.CLOSE_CURSOR (cur);

    EXCEPTION
        WHEN OTHERS THEN
            IF DBMS_SQL.IS_OPEN (cur) THEN
                DBMS_SQL.CLOSE_CURSOR (cur);
            END IF;
            RAISE;
    END;

BEGIN
    IF sf_is_staging_table('CatalogCategory') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        DELETEFROMSTAGINGTABLES(catalogDomainID, DOMAINID, '$1');
        deleteFromStagingTables(catalogDomainID, domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromStagingTables(catalogDomainID, domainID, null);
    END IF;
END sp_deleteSharedCatalogObjects;
/
show errors

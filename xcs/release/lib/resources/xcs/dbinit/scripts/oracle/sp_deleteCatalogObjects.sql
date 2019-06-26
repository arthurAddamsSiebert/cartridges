CREATE OR REPLACE PROCEDURE sp_deleteCatalogObjects (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deletecatalogobjectsbydomain
-- History     : user              date       - desc
--             : ...
--             : Thomas Kober      07/20/2005 - #5882 sql with unbound var values
-- Created     : Christian Gr�tsch 06/12/2001
-- Description : This procedure deletes
--               (a). ProductCategoryAssignment's  owned by a given domain
--               (b). catalogCategoryLink's owned by a given domain
--               (c). catalogCategory_AV's owned by a given domain
--               (d). catalogCategory_RA's owned by a given domain
--               (e). catalogCategory's owned by a given domain
-- Owner       : The special XCS Beehive/PowerTier user.
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deletecatalogobjects('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        uuid catalogcategory.uuid%TYPE;
        uuid_len NUMBER := 28;
        cur BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret BINARY_INTEGER;
    BEGIN

-- IMAGESETCATEGORYASSI_AV
-- IMAGESETCATEGORYASSIGNMENT
        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('imagesetcategoryassignment', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('imagesetcategoryassi_av', suffix)||' WHERE ownerid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('imagesetcategoryassignment', suffix)||' WHERE uuid = :uuid' USING uuid;
        END LOOP;
		COMMIT;

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('CatalogCategory', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('CatalogCategory', suffix)||' SET parentcategoryid = NULL WHERE parentcategoryid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('Product', suffix)||' SET defaultcatalogcategoryid = NULL WHERE defaultcatalogcategoryid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('ProductLink', suffix)||' SET linkedcatalogcategoryid = NULL WHERE linkedcatalogcategoryid = :uuid' USING IN uuid;
			EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('DerivedProduct', suffix)||' SET defaultcatalogcategoryid = NULL WHERE defaultcatalogcategoryid = :uuid' USING IN uuid;

			EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageCategoryAssignment', suffix)||' WHERE catalogcategoryuuid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductCategoryAssignment', suffix)||' WHERE catalogcategoryid = :uuid' USING IN uuid;
			EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategoryLabelAssignment', suffix)||' WHERE catalogcategoryuuid = :uuid' USING IN uuid;
			EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductMappingRule_AV', suffix)||' WHERE ownerid IN (SELECT uuid FROM '||staging.get_table_name('ProductMappingRule', suffix)||' WHERE catalogcategoryid = :uuid)' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductMappingRule', suffix)||' WHERE catalogcategoryid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', suffix)||' WHERE catalogcategoryid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategoryLink_AV', suffix)||' WHERE ownerid IN (SELECT uuid FROM '||staging.get_table_name('CatalogCategoryLink', suffix)||' WHERE sourcecategoryid = :uuid OR targetcategoryid = :uuid)' USING IN uuid, uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategoryLink', suffix)||' WHERE sourcecategoryid = :uuid OR targetcategoryid = :uuid' USING IN uuid, uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategory_AV', suffix)||' WHERE ownerid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategory_RA', suffix)||' WHERE ao_uuid = :uuid' USING IN uuid;
			EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategory_PEPA', suffix)||' WHERE categoryid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('imagesetcategoryassi_av', suffix)||' WHERE ownerid in (select uuid from  '||staging.get_table_name('imagesetcategoryassignment', suffix)||' where catalogcategoryuuid IN (SELECT UUID FROM ' || staging.get_table_name('CatalogCategory', suffix) || ' START WITH UUID = :uuid CONNECT BY PRIOR UUID = PARENTCATEGORYID))' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('imagesetcategoryassignment', suffix)||' WHERE catalogcategoryuuid IN (SELECT UUID FROM ' || staging.get_table_name('CatalogCategory', suffix) || ' START WITH UUID = :uuid CONNECT BY PRIOR UUID = PARENTCATEGORYID)' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategory', suffix)||' WHERE uuid = :uuid' USING IN uuid;

        END LOOP;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategory_RA', suffix)||' WHERE usergroupdomainid = :domainid' USING IN in_domainid;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategoryLink_AV', suffix)||' WHERE ownerid IN (SELECT uuid FROM '||staging.get_table_name('CatalogCategoryLink', suffix)||' WHERE domainid = :in_domainid)' USING IN in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('CatalogCategoryLink', suffix)||' WHERE domainid = :in_domainid' USING IN in_domainid;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductCategoryAssignment', suffix)||' WHERE domainid = :in_domainid OR repdomainid = :in_domainid' USING IN in_domainid, in_domainid;
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
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;
END sp_deleteCatalogObjects;
/

show errors;

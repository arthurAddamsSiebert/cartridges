CREATE OR REPLACE PROCEDURE sp_deleteProductObjects (in_domainid IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteproductobjects
-- History     : user             date       - desc
--             : ...
--             : Heiko Busch      03/22/2011 - #6381 missing deletions from typedPCA
--             : Jürgen Grabs     11/30/2007 - add product sharing support
--             : Thomas Kober     12/24/2006 - #9804 missing deletions from PCA
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner, Thomas Budich
-- Description : This procedure deletes
--
--? ProductAttribute
--? ProductAttribute_AV
--? ProductLink
--? Product_RA
--. ProductVariation
--. BundleAssignment
--. VariableVariationAttribute
--. ProductListPrice
--. ProductCostPrice
--. ProductLink
--? Product

--? PRODUCT_PRODUCTTYPE_TREE not yet
--? PRODUCT_CATALOG_TREE     not yet
--
--  owned by a given domain
--
-- Input       : in_domainid   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteproductobjects('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        uuid product.uuid%TYPE;
        sku  product.sku%TYPE;
        domainName domaininformation.domainname%TYPE;
        uuid_len NUMBER := 28;
        sku_len  NUMBER := 256;
        cur BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret BINARY_INTEGER;
    BEGIN
        DBMS_SQL.PARSE (cur, 'SELECT uuid, sku FROM '||staging.get_table_name('Product', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        DBMS_SQL.DEFINE_COLUMN (cur, 2, sku,  sku_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            DBMS_SQL.COLUMN_VALUE (cur, 2, sku);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Product_RA' , suffix)||' WHERE AO_uuid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('BundleAssignment' , suffix)||' WHERE productid=:uuid OR bundleid=:uuid' USING uuid, uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('VariableVariationAttribute' , suffix)||' WHERE productmasterid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductListPrice' , suffix)||' WHERE productid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('DerivedProductListPrice' , suffix)||' WHERE productid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductCategoryAssignment', suffix)||' WHERE productid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TypedProductCategoryAssm', suffix)||' WHERE productid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Product', suffix)||' WHERE uuid=:uuid' USING uuid;
            
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductCostPrice', suffix)||' WHERE productid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('DerivedProductCostPrice', suffix)||' WHERE productid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductLink_AV', suffix)||' WHERE ownerid IN (SELECT uuid FROM '||staging.get_table_name('ProductLink', suffix)||' WHERE targetid=:uuid OR sourceid=:uuid)' USING uuid, uuid;
            
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductLink', suffix)||' WHERE targetid=:uuid OR sourceid=:uuid' USING uuid, uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductSetAssignment', suffix)||' WHERE productuuid=:uuid' USING uuid;

            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageProductAssignment', suffix)||' WHERE productuuid=:uuid' USING uuid;

            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('Product', suffix)||' SET offeredProductID=NULL WHERE offeredProductID=:u' USING uuid;

        END LOOP;

		EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('DerivedProduct', suffix)||' WHERE domainid=:domainid' USING in_domainid;
        COMMIT;

	    EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductLink_AV', suffix)||' WHERE ownerid IN (SELECT uuid FROM '||staging.get_table_name('ProductLink', suffix)||' WHERE domainid = :d)' USING in_domainid;
	    EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductLink', suffix)||' WHERE domainid = :d' USING in_domainid;
        COMMIT;
	    EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('Product_RA', suffix)||' WHERE usergroupdomainid = :d' USING in_domainid;
        COMMIT;
	    EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ImageProductAssignment', suffix)||' WHERE domainid = :d' USING in_domainid;
        COMMIT;

        DBMS_SQL.CLOSE_CURSOR (cur);

    END;

BEGIN

    IF sf_is_staging_table('PRODUCT') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(in_domainid, '$1');
        deleteFromStagingTables(in_domainid, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromStagingTables(in_domainid, null);
    END IF;

END sp_deleteProductObjects;
/
show errors

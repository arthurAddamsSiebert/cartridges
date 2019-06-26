--
-- TODO NOT migrated yet
--
WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

--
-- Create ieproductcategoryassignment environment containing all (implicit and explicit) product category assignments
--

-- Drop all old IEPCAs tables, matviews and synonyms
EXEC ddl.drop_materialized_view ('ieproductcategoryassignment');
EXEC ddl.drop_synonym           ('ieproductcategoryassignment');
EXEC ddl.drop_table             ('ieproductcategoryassignment');
EXEC ddl.drop_materialized_view ('ieproductcategoryassignment1');
EXEC ddl.drop_materialized_view ('ieproductcategoryassignment2');
EXEC ddl.drop_table             ('ieproductcategoryassignment1');
EXEC ddl.drop_table             ('ieproductcategoryassignment2');
EXEC ddl.drop_synonym           ('iproductcategoryassignment');
EXEC ddl.drop_table             ('iproductcategoryassignment');
EXEC staging_ddl.drop_staging_table     ('iproductcategoryassignment');

-- New IEPCA as table
CREATE TABLE iproductcategoryassignment (
    categoryid              VARCHAR2(28 CHAR),
    productid               VARCHAR2(28 CHAR),
    productdomainid         VARCHAR2(28 CHAR),
    productbindingattribute VARCHAR2(256 CHAR),
    position                FLOAT(126),
    PRIMARY KEY (categoryid,productid,productdomainid)
);

COMMENT ON TABLE iproductcategoryassignment IS 'bc_mvc';

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'IPRODUCTCATEGORYASSIGNMENT' AS tableName, 'bc_mvc' AS cartridgeName, '&_enfinityVersion' AS version FROM dual) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = UTCTIMESTAMP()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, UTCTIMESTAMP(), NULL, 0)
/

-- Create optimized index settings for the IEPCA.
CREATE INDEX IPCA_FK001 ON iproductcategoryassignment (categoryid);
CREATE INDEX IPCA_FK002 ON iproductcategoryassignment (productid);
CREATE INDEX IPCA_FK003 ON iproductcategoryassignment (productdomainid);
/

-- Prepare IPCA as staging table
BEGIN
    IF (staging.is_staging_table('IPRODUCTCATEGORYASSIGNMENT')) THEN

        UPDATE stagingtable SET preparationflag=0, oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tablename='IPRODUCTCATEGORYASSIGNMENT';
        COMMIT;

        staging_ddl.prepare_staging_table('IPRODUCTCATEGORYASSIGNMENT', '&_enfinityVersion');

        EXECUTE IMMEDIATE 'CREATE OR REPLACE VIEW '||
            staging.get_table_name('iproductcategoryassignment', '$S')||
                ' AS SELECT * FROM iproductcategoryassignment';

        UPDATE stagingtable SET preparationflag=1, oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tablename='IPRODUCTCATEGORYASSIGNMENT';
        COMMIT;

    END IF;
END;
/
show errors;

-- Create binding key view
CREATE OR REPLACE VIEW iepca_bindingkeys AS SELECT distinct productbindingattribute AS bindingkey FROM catalogcategory WHERE productbindingattribute IS NOT NULL;

-- Create UNION VIEW on iproductcategoryassignment and productcategoryassignment
CREATE OR REPLACE VIEW ieproductcategoryassignment AS
    SELECT
        ipca.categoryid,
        ipca.productid,
        ipca.productdomainid,
        ipca.productbindingattribute,
        ipca.position as position
    FROM
        iproductcategoryassignment ipca
WHERE EXISTS 
    (SELECT cat_data.*, d.siteid as site_id, sqd.domainid as sqd_domain_UUID
     FROM (SELECT cat_dom.*, r.repositorydomainid AS repo_domain_uuid, r.domainid AS org_domain_uuid
        FROM (
          SELECT cc.uuid AS category_uuid, cc.searchquerydefinitionname as sqd_name, c.domainid AS catalog_domain_uuid
          FROM catalogcategory cc, catalog c
          WHERE cc.domainid = c.catalogdomainid
          AND cc.searchquerydefinitionname IS NOT NULL) cat_dom
       JOIN repository r
          ON r.repositorydomainid = cat_dom.catalog_domain_uuid
            OR (r.typecode = 21 AND r.domainid = cat_dom.catalog_domain_uuid )
      ) cat_data
     JOIN domain d
        ON repo_domain_uuid = d.uuid
     JOIN SearchQueryDefinition sqd
        ON sqd.name = sqd_name
          AND (
           sqd.domainid = d.siteid
              OR
           sqd.domainid IN (SELECT d.siteid FROM domain d WHERE d.uuid = org_domain_uuid)
          )
     WHERE ipca.categoryid = category_uuid
        AND ipca.productdomainid = repo_domain_uuid
    )
  UNION ALL
  SELECT pca.catalogcategoryid AS categoryid,
    pca.productid,
    pca.domainid AS productdomainid,
    NULL         AS productbindingattribute, 
    pca.position AS position
  FROM productcategoryassignment pca
  WHERE NOT EXISTS
    (SELECT cat_data.*, d.siteid as site_id, sqd.domainid as sqd_domain_UUID
     FROM (SELECT cat_dom.*, r.repositorydomainid AS repo_domain_uuid, r.domainid AS org_domain_uuid
        FROM (
          SELECT cc.uuid AS category_uuid, cc.searchquerydefinitionname as sqd_name, c.domainid AS catalog_domain_uuid
          FROM catalogcategory cc, catalog c
          WHERE cc.domainid = c.catalogdomainid
          AND cc.searchquerydefinitionname IS NOT NULL) cat_dom
       JOIN repository r
          ON r.repositorydomainid = cat_dom.catalog_domain_uuid
            OR (r.typecode = 21 AND r.domainid = cat_dom.catalog_domain_uuid )
      ) cat_data
     JOIN domain d
        ON repo_domain_uuid = d.uuid
     JOIN SearchQueryDefinition sqd
        ON sqd.name = sqd_name
          AND (
           sqd.domainid = d.siteid
              OR
           sqd.domainid IN (SELECT d.siteid FROM domain d WHERE d.uuid = org_domain_uuid)
          )
     WHERE pca.catalogcategoryid = category_uuid
        AND pca.domainid = repo_domain_uuid
    );

-- Ceate productbindingattribute table
EXEC ddl.drop_table('productbindingattribute');
CREATE TABLE productbindingattribute (
    name VARCHAR2(200 CHAR) PRIMARY KEY,
    maxcategorylm      TIMESTAMP(9),
    category#          NUMBER,
    maxproductlm       TIMESTAMP(9),
    product#           NUMBER
);

COMMENT ON TABLE productbindingattribute IS 'bc_mvc';

-- Compile invalid objects
EXEC sp_compile_invalid_objects;

EXIT;

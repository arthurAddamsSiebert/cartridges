-- ORA-01430: column being added already exists in table
EXEC staging_ddl.alter_table('IPRODUCTCATEGORYASSIGNMENT', 'ADD POSITION FLOAT(126)', -1430);

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


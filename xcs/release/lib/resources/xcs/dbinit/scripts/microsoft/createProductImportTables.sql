WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDPRODUCT';
  CREATE TABLE IMPORTREMOVEDPRODUCT
        (
            domainid    NVARCHAR(28) NOT NULL,
            uuid        NVARCHAR(28) NOT NULL,
            ismaster    integer,
            ismastered  integer,
            isbundle    integer,
            isbundled   integer,
            isoffered   integer
        );
  -- EXECUTE 'COMMENT ON TABLE importremovedproduct IS ''xcs''';
  CREATE INDEX importremovedproduct_idx ON importremovedproduct (uuid);
end;

GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTUPDATEDPRODUCT';
  CREATE TABLE IMPORTUPDATEDPRODUCT
        (
            domainid    NVARCHAR(28) NOT NULL,
            uuid        NVARCHAR(28) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importupdatedproduct IS ''xcs''';
  CREATE INDEX importupdatedproduct_idx ON importupdatedproduct (uuid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDPRODUCTLISTPRICE';
  CREATE TABLE IMPORTREMOVEDPRODUCTLISTPRICE
        (
            domainid    NVARCHAR(28) NOT NULL,
            productid   NVARCHAR(28) NOT NULL,
            currency    NVARCHAR(3) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductlistprice IS ''xcs''';
  CREATE INDEX importremovedprodlistprice_idx ON importremovedproductlistprice (productid, currency);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDPRODUCTCOSTPRICE';
  CREATE TABLE IMPORTREMOVEDPRODUCTCOSTPRICE
        (
            domainid    NVARCHAR(28) NOT NULL,
            productid   NVARCHAR(28) NOT NULL,
            currency    NVARCHAR(3) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductcostprice IS ''xcs''';
  CREATE INDEX importremovedprodcostprice_idx ON importremovedproductcostprice (productid, currency);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDCATASSIGNMENT';
  CREATE TABLE IMPORTREMOVEDCATASSIGNMENT
        (
            domainid            NVARCHAR(28) NOT NULL,
            productid           NVARCHAR(28) NOT NULL,
            catalogcategoryid   NVARCHAR(28) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedcatassignment IS ''xcs''';
  CREATE INDEX importremovedcatassignment_idx ON importremovedcatassignment (productid, catalogcategoryid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDPRODUCTRA';
  CREATE TABLE IMPORTREMOVEDPRODUCTRA
        (
            domainid            NVARCHAR(28)  NOT NULL,
            productid           NVARCHAR(28)  NOT NULL,
            roleid              NVARCHAR(256) NOT NULL,
            usergroupid         NVARCHAR(256) NOT NULL,
            usergroupdomainid   NVARCHAR(28)  NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductra IS ''xcs''';
  CREATE INDEX importremovedproductra_idx ON importremovedproductra (productid, roleid, usergroupid, usergroupdomainid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDUSERGROUPPRICE';
  CREATE TABLE IMPORTREMOVEDUSERGROUPPRICE
        (
            domainid                NVARCHAR(28)  NOT NULL,
            productrefsku           NVARCHAR(256) NOT NULL,
            productrefdomainname    NVARCHAR(256) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedusergroupprice IS ''xcs''';
  CREATE INDEX importremovedusergrouppr_idx ON importremovedusergroupprice (productrefsku, productrefdomainname);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDPRODUCTLINK';
  CREATE TABLE IMPORTREMOVEDPRODUCTLINK
        (
            domainid    NVARCHAR(28) NOT NULL,
            sourceid    NVARCHAR(28) NOT NULL,
            targetid    NVARCHAR(28) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductlink IS ''xcs''';
  CREATE INDEX importremovedproductlink_idx ON importremovedproductlink (sourceid, targetid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDBUNDLE';
  CREATE TABLE IMPORTREMOVEDBUNDLE
        (
            domainid    NVARCHAR(28) NOT NULL,
            productid   NVARCHAR(28) NOT NULL,
            bundleid    NVARCHAR(28) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedbundle IS ''xcs''';
  CREATE INDEX importremovedbundle_idx ON importremovedbundle (productid, bundleid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTREMOVEDMASTER';
  CREATE TABLE IMPORTREMOVEDMASTER
        (
            domainid NVARCHAR(28) NOT NULL,
            uuid     NVARCHAR(28) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedmaster IS ''xcs''';
  CREATE INDEX importremovedmaster_idx ON importremovedmaster (uuid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTUPDATEDMASTER';
  CREATE TABLE IMPORTUPDATEDMASTER
        (
            domainid            NVARCHAR(28) NOT NULL,
            uuid                NVARCHAR(28) NOT NULL,
            defaultvariationid  NVARCHAR(28) NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importupdatedmaster IS ''xcs''';
  CREATE INDEX importupdatedmaster_idx ON importupdatedmaster (uuid);
end;
GO

BEGIN
  EXECUTE ddl$drop_table 'IMPORTUPDATEDTYPECODE';
  CREATE TABLE IMPORTUPDATEDTYPECODE
        (
            domainid            NVARCHAR(28) NOT NULL,
            uuid                NVARCHAR(28) NOT NULL,
            typecode            integer      NOT NULL
        );
  -- EXECUTE IMMEDIATE 'COMMENT ON TABLE importupdatedtypecode IS ''xcs''';
  CREATE INDEX importupdatedtypecode_idx ON importupdatedtypecode (uuid);
end;
GO

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'IMPORTREMOVEDPRODUCT'          AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTUPDATEDPRODUCT'          AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDPRODUCTLISTPRICE' AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDPRODUCTCOSTPRICE' AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDCATASSIGNMENT'    AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDPRODUCTRA'        AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDUSERGROUPPRICE'   AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDPRODUCTLINK'      AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDBUNDLE'           AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTREMOVEDMASTER'           AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTUPDATEDMASTER'           AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IMPORTUPDATEDTYPECODE'         AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version
      ) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = SYSUTCDATETIME()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, SYSUTCDATETIME(), NULL, 0);

GO
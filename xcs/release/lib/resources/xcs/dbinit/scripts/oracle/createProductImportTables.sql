WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

BEGIN
  ddl.drop_table('IMPORTREMOVEDPRODUCT');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDPRODUCT
        (
            domainid    varchar(28 char) not null,
            uuid        varchar(28 char) not null,
            ismaster    integer,
            ismastered  integer,
            isbundle    integer,
            isbundled   integer,
            isoffered   integer
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproduct IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedproduct_idx ON importremovedproduct (uuid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTUPDATEDPRODUCT');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTUPDATEDPRODUCT
        (
            domainid    varchar(28 char) not null,
            uuid        varchar(28 char) not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importupdatedproduct IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importupdatedproduct_idx ON importupdatedproduct (uuid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDPRODUCTLISTPRICE');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDPRODUCTLISTPRICE
        (
            domainid    varchar(28 char) not null,
            productid   varchar(28 char) not null,
            currency    varchar(3  char) not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductlistprice IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedprodlistprice_idx ON importremovedproductlistprice (productid, currency)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDPRODUCTCOSTPRICE');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDPRODUCTCOSTPRICE
        (
            domainid    varchar(28 char) not null,
            productid   varchar(28 char) not null,
            currency    varchar(3  char) not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductcostprice IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedprodcostprice_idx ON importremovedproductcostprice (productid, currency)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDCATASSIGNMENT');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDCATASSIGNMENT
        (
            domainid            varchar(28 char) not null,
            productid           varchar(28 char) not null,
            catalogcategoryid   varchar(28 char) not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedcatassignment IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedcatassignment_idx ON importremovedcatassignment (productid, catalogcategoryid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDPRODUCTRA');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDPRODUCTRA
        (
            domainid            varchar(28 char)     not null,
            productid           varchar(28 char)     not null,
            roleid              varchar(256 char)    not null,
            usergroupid         varchar(256 char)    not null,
            usergroupdomainid   varchar(28 char)     not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductra IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedproductra_idx ON importremovedproductra (productid, roleid, usergroupid, usergroupdomainid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDUSERGROUPPRICE');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDUSERGROUPPRICE
        (
            domainid                varchar(28 char)     not null,
            productrefsku           varchar(256 char)    not null,
            productrefdomainname    varchar(256 char)    not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedusergroupprice IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedusergrouppr_idx ON importremovedusergroupprice (productrefsku, productrefdomainname)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDPRODUCTLINK');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDPRODUCTLINK
        (
            domainid    varchar(28 char)     not null,
            sourceid    varchar(28 char)     not null,
            targetid    varchar(28 char)     not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedproductlink IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedproductlink_idx ON importremovedproductlink (sourceid, targetid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDBUNDLE');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDBUNDLE
        (
            domainid    varchar(28 char)     not null,
            productid   varchar(28 char)     not null,
            bundleid    varchar(28 char)     not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedbundle IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedbundle_idx ON importremovedbundle (productid, bundleid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTREMOVEDMASTER');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTREMOVEDMASTER
        (
            domainid varchar(28 char) not null,
            uuid     varchar(28 char) not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importremovedmaster IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importremovedmaster_idx ON importremovedmaster (uuid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTUPDATEDMASTER');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTUPDATEDMASTER
        (
            domainid            varchar(28 char) not null,
            uuid                varchar(28 char) not null,
            defaultvariationid  varchar(28 char) not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importupdatedmaster IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importupdatedmaster_idx ON importupdatedmaster (uuid)';
end;
/

BEGIN
  ddl.drop_table('IMPORTUPDATEDTYPECODE');
  EXECUTE IMMEDIATE
    'CREATE TABLE IMPORTUPDATEDTYPECODE
        (
            domainid            varchar(28 char) not null,
            uuid                varchar(28 char) not null,
            typecode            integer     not null
        )';
  EXECUTE IMMEDIATE 'COMMENT ON TABLE importupdatedtypecode IS ''xcs''';
  EXECUTE IMMEDIATE 'CREATE INDEX importupdatedtypecode_idx ON importupdatedtypecode (uuid)';
end;
/

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'IMPORTREMOVEDPRODUCT'          AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTUPDATEDPRODUCT'          AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDPRODUCTLISTPRICE' AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDPRODUCTCOSTPRICE' AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDCATASSIGNMENT'    AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDPRODUCTRA'        AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDUSERGROUPPRICE'   AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDPRODUCTLINK'      AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDBUNDLE'           AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTREMOVEDMASTER'           AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTUPDATEDMASTER'           AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'IMPORTUPDATEDTYPECODE'         AS tableName, 'xcs' AS cartridgeName, '&_enfinityVersion' AS version FROM dual
      ) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = UTCTIMESTAMP()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, UTCTIMESTAMP(), NULL, 0)
/


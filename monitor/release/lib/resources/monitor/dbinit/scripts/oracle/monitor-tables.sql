WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

DECLARE
  cnt PLS_INTEGER;
BEGIN
  ddl.drop_table('DBMONITOR_MASTER');
  ddl.drop_table('DBMONITOR_DETAIL');

  SELECT count(*) INTO cnt FROM user_sequences WHERE sequence_name = 'DBMONITOR_SEQUENCE';
  IF cnt > 0 THEN EXECUTE IMMEDIATE 'DROP SEQUENCE DBMonitor_Sequence'; END IF;
END;
/
show errors;


CREATE SEQUENCE DBMonitor_Sequence START WITH 1 INCREMENT BY 1;

CREATE TABLE DBMonitor_Master (
    uuid       VARCHAR2(28 CHAR)    NOT NULL,
    version    NUMBER               NOT NULL,
    typeid     NUMBER(6,2)          NOT NULL,
    type       VARCHAR2(80 CHAR)    NOT NULL,
    orderedby  VARCHAR2(64 CHAR)    NOT NULL,
    run_date   TIMESTAMP(9)         NOT NULL,
    CONSTRAINT DBMonitor_Master_PK PRIMARY KEY (uuid,typeid));

CREATE TABLE DBMonitor_Detail (
    masterid   VARCHAR2(28 CHAR)    NOT NULL,
    typeid     NUMBER(6,2)          NOT NULL,
    part       NUMBER               NOT NULL,
    sort_order NUMBER               NOT NULL,
    data       VARCHAR2(4000 CHAR)  NOT NULL,
    CONSTRAINT DBMonitor_Detail_PK PRIMARY KEY (masterid,typeid,part,sort_order));

COMMENT ON TABLE DBMonitor_Master IS 'monitor';
COMMENT ON TABLE DBMonitor_Detail IS 'monitor';

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'DBMONITOR_MASTER' AS tableName, 'monitor' AS cartridgeName, '&_enfinityVersion' AS version FROM dual UNION
       SELECT 'DBMONITOR_DETAIL' AS tableName, 'monitor' AS cartridgeName, '&_enfinityVersion' AS version FROM dual
      ) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = UTCTIMESTAMP()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, UTCTIMESTAMP(), NULL, 0)
/


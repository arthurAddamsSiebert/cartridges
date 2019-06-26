DEFINE _enfinityVersion = &1

BEGIN
  EXEC ddl$drop_table 'DBMONITOR_MASTER';
  EXEC ddl$drop_table 'DBMONITOR_DETAIL';
  DROP SEQUENCE IF EXISTS DBMonitor_Sequence; 
END
GO

CREATE SEQUENCE DBMonitor_Sequence START WITH 1 INCREMENT BY 1;

CREATE TABLE DBMonitor_Master (
    uuid       NVARCHAR(28) NOT NULL,
    version    NUMERIC      NOT NULL,
    typeid     NUMERIC(6,2) NOT NULL,
    type       NVARCHAR(80) NOT NULL,
    orderedby  NVARCHAR(64) NOT NULL,
    run_date   DATETIME2    NOT NULL,
    CONSTRAINT DBMonitor_Master_PK PRIMARY KEY (uuid,typeid));

CREATE TABLE DBMonitor_Detail (
    masterid   NVARCHAR(28)   NOT NULL,
    typeid     NUMERIC(6,2),
    part       NUMERIC        NOT NULL,
    sort_order NUMERIC        NOT NULL,
    data       NVARCHAR(4000) NOT NULL,
    CONSTRAINT DBMonitor_Detail_PK PRIMARY KEY (masterid,typeid,part,sort_order));

-- TODO comment on table    
-- COMMENT ON TABLE DBMonitor_Master IS 'monitor';
-- COMMENT ON TABLE DBMonitor_Detail IS 'monitor';

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'DBMONITOR_MASTER' AS tableName, 'monitor' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'DBMONITOR_DETAIL' AS tableName, 'monitor' AS cartridgeName, '&_enfinityVersion' AS version
      ) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = SYSUTCDATETIME()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, SYSUTCDATETIME(), NULL, 0);

GO
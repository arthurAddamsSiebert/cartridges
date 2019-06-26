WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

EXECUTE ddl.drop_table('StagingIdentification');

CREATE TABLE StagingIdentification
(
    uuid            VARCHAR2(28 CHAR) NOT NULL,
    lastmodified    TIMESTAMP(9)      NOT NULL,
    PRIMARY KEY (uuid)
);

COMMENT ON TABLE StagingIdentification IS 'core';

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'STAGINGIDENTIFICATION' AS tableName, 'core' AS cartridgeName, '&_enfinityVersion' AS version FROM dual) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = UTCTIMESTAMP()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, UTCTIMESTAMP(), NULL, 0)
/

COMMIT;

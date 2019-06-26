WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

EXECUTE ddl$drop_table 'STAGINGIDENTIFICATION';

CREATE TABLE STAGINGIDENTIFICATION
(
    UUID            NVARCHAR(28) NOT NULL,
    LASTMODIFIED    DATETIME2(7) NOT NULL,
    PRIMARY KEY (UUID)
);


MERGE INTO ENFINITYTABLE d USING (SELECT 'STAGINGIDENTIFICATION' AS TABLENAME, 'core' AS CARTRIDGENAME, 'Configuration' as CATEGORY, '&_enfinityVersion' AS VERSION) s
    ON (UPPER(d.TABLENAME) = UPPER(s.TABLENAME) AND d.VERSION = s.VERSION)
    WHEN MATCHED THEN UPDATE SET d.OCA = d.OCA+1 , d.LASTMODIFIED = dbo.UTCTIMESTAMP()
    WHEN NOT MATCHED THEN INSERT (TABLENAME, CARTRIDGENAME, CATEGORY, VERSION, LASTMODIFIED, COMMENTS, OCA)
                          VALUES (s.TABLENAME, s.CARTRIDGENAME, CATEGORY, s.VERSION, dbo.UTCTIMESTAMP(), NULL, 0);


GO
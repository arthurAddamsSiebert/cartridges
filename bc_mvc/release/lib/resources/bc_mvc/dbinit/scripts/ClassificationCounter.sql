-- 
-- TODO Not yet migrated 
--

WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

--
-- Drop existing counter snapshots
--

EXEC ddl.drop_materialized_view ('eclasscount');
EXEC ddl.drop_synonym           ('eclasscount');
EXEC ddl.drop_table             ('eclasscount');
EXEC ddl.drop_materialized_view ('eclasscount1');
EXEC ddl.drop_materialized_view ('eclasscount2');
EXEC ddl.drop_table             ('eclasscount1');
EXEC ddl.drop_table             ('eclasscount2');

EXEC ddl.drop_materialized_view ('unspsccount');
EXEC ddl.drop_synonym           ('unspsccount');
EXEC ddl.drop_table             ('unspsccount');
EXEC ddl.drop_materialized_view ('unspsccount1');
EXEC ddl.drop_materialized_view ('unspsccount2');
EXEC ddl.drop_table             ('unspsccount1');
EXEC ddl.drop_table             ('unspsccount2');

EXEC ddl.drop_materialized_view ('classificationcount');
EXEC ddl.drop_synonym           ('classificationcount');
EXEC ddl.drop_table             ('classificationcount');
EXEC ddl.drop_materialized_view ('classificationcount1');
EXEC ddl.drop_materialized_view ('classificationcount2');
EXEC ddl.drop_table             ('classificationcount1');
EXEC ddl.drop_table             ('classificationcount2');
EXEC ddl.drop_table             ('classificationcount$1');
EXEC ddl.drop_table             ('classificationcount$2');
EXEC ddl.drop_view              ('classificationcount$S');

--
-- Create new counter snapshot
--

CREATE TABLE classificationcount (
    categoryid  VARCHAR2(28 CHAR),
    domainid    VARCHAR2(28 CHAR),
    cnt         NUMBER(38),
    PRIMARY KEY (categoryid, domainid)
);

COMMENT ON TABLE classificationcount IS 'bc_mvc';

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'CLASSIFICATIONCOUNT' AS tableName, 'bc_mvc' AS cartridgeName, '&_enfinityVersion' AS version FROM dual) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = UTCTIMESTAMP()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, UTCTIMESTAMP(), NULL, 0)
/

-- Prepare CLASSIFICATIONCOUNT as staging table
BEGIN
    IF (staging.is_staging_table('CLASSIFICATIONCOUNT')) THEN

        UPDATE stagingtable SET preparationflag=0, oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tablename='CLASSIFICATIONCOUNT';
        COMMIT;

        staging_ddl.prepare_staging_table('CLASSIFICATIONCOUNT', '&_enfinityVersion');

        EXECUTE IMMEDIATE 'CREATE OR REPLACE VIEW '||
            staging.get_table_name('CLASSIFICATIONCOUNT', '$S')||
            ' AS SELECT * FROM classificationcount';

        UPDATE stagingtable SET preparationflag=1, oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tablename='CLASSIFICATIONCOUNT';
        COMMIT;

    END IF;
END;
/
show errors;

EXIT;
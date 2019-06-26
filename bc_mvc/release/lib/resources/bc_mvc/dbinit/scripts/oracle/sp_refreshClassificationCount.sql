CREATE OR REPLACE PROCEDURE sp_refreshClassificationCount AS

    sourceTable     user_tables.table_name%TYPE;
    targetTable     user_tables.table_name%TYPE;
    synonymName     user_synonyms.synonym_name%TYPE := upper('classificationcount');

BEGIN
    -- suppress oracle streaming
    core.suppress_data_movement;

    SELECT table_name INTO sourceTable FROM user_synonyms WHERE synonym_name=synonymName;
    IF substr(sourceTable, -1)='1' THEN
        targetTable := substr(sourceTable, 1, length(sourceTable)-1)||'2';
    ELSE
        targetTable := substr(sourceTable, 1, length(sourceTable)-1)||'1';
    END IF;

    sql_util.execute('TRUNCATE TABLE '||targetTable||' REUSE STORAGE');

    FOR i IN (
        SELECT iepca.categoryid AS catid, iepca.productdomainid AS domid, count(iepca.productid) AS cnt
        FROM ieproductcategoryassignment iepca
        JOIN catalogcategory cc ON (cc.uuid = iepca.categoryid)
        JOIN catalog c ON (c.catalogdomainid = cc.domainid AND c.typecode = 2 AND c.proxyflag = 0)
        GROUP BY iepca.categoryid, iepca.productdomainid
    )
    LOOP
        FOR j IN (
            SELECT * FROM catalogcategory cc
            CONNECT BY cc.uuid = PRIOR cc.parentcategoryid
            START WITH cc.uuid = i.catid
        )
        LOOP
            sql_util.execute('MERGE INTO '||targetTable||' clcnt ' ||
                'USING (SELECT ''' || j.uuid || ''' AS catid, ''' || i.domid || ''' AS domid FROM dual) c ' ||
                'ON (clcnt.categoryid = c.catid AND clcnt.domainid = c.domid) ' ||
                'WHEN MATCHED THEN ' ||
                    'UPDATE SET clcnt.cnt = clcnt.cnt + ' || i.cnt || ' ' ||
                'WHEN NOT MATCHED THEN ' ||
                   'INSERT (clcnt.categoryid, clcnt.domainid, clcnt.cnt) VALUES (c.catid, c.domid, ' || i.cnt || ')');
        END LOOP;
        COMMIT;
    END LOOP;

    UPDATE stagingtable SET livetablenamesuffix=substr(targetTable, -2), oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tableName = 'CLASSIFICATIONCOUNT';
    ddl.replace_synonym(synonymName, targetTable);

    -- re-enable oracle streaming
    core.enable_data_movement;

EXCEPTION WHEN OTHERS THEN
    BEGIN
        -- re-enable oracle streaming
        core.enable_data_movement;

        RAISE;
    END;

END;
/

show errors;

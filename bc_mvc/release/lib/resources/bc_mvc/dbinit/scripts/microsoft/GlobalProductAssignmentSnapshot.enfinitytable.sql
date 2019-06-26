WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'IEPRODUCTCATEGORYASSI$1' AS tableName, 'bc_mvc' AS cartridgeName, '&_enfinityVersion' AS version UNION
       SELECT 'IEPRODUCTCATEGORYASSI$2' AS tableName, 'bc_mvc' AS cartridgeName, '&_enfinityVersion' AS version 
      ) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = SYSUTCDATETIME()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, SYSUTCDATETIME(), NULL, 0);
/

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'PRODUCTBINDINGATTRIBUTE' AS tableName, 'bc_mvc' AS cartridgeName, '&_enfinityVersion' AS version FROM dual) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = SYSUTCDATETIME()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, SYSUTCDATETIME(), NULL, 0);
/

EXIT;

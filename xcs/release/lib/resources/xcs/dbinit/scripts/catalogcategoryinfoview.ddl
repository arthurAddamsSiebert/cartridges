/*
    ****************************************************************
    Copyright (c) 2003 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.
    ****************************************************************
*/

EXECUTE ddl.drop_table('CATALOGCATEGORYINFOVIEW')

DELETE FROM enfinitytable WHERE tablename='CATALOGCATEGORYINFOVIEW'
/

CREATE OR REPLACE VIEW CATALOGCATEGORYINFOVIEW AS
    SELECT PARENTCATEGORYID AS CATALOGCATEGORYID,
        COUNT(*) AS ITEMCOUNT,
        MAX(POSITION) AS MAXPOSITION,
        MIN(POSITION) AS MINPOSITION
        FROM CATALOGCATEGORY
        WHERE PARENTCATEGORYID IS NOT NULL
        GROUP BY PARENTCATEGORYID;


/*
    ****************************************************************
    Copyright (c) 2003 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.
    ****************************************************************
*/

EXECUTE ddl.drop_table('CATEGORYASSIGNMENTINFOVIEW')

DELETE FROM enfinitytable WHERE tablename='CATEGORYASSIGNMENTINFOVIEW'
/

CREATE OR REPLACE VIEW categoryassignmentinfoview AS
    select a.catalogcategoryid as catalogcategoryid,
           count(*)   as itemcount,
           max(position) as maxposition,
           min(position) as minposition,
		   a.domainid    as domainid
        from productcategoryassignment a
        group by catalogcategoryid,domainid;

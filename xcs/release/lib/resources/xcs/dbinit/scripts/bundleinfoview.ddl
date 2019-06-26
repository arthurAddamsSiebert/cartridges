/*
    ****************************************************************
    Copyright (c) 2003 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.
    ****************************************************************
*/

EXECUTE ddl.drop_table('BUNDLEINFOVIEW')

DELETE FROM enfinitytable WHERE tablename='BUNDLEINFOVIEW'
/

CREATE OR REPLACE VIEW bundleinfoview AS
    select a.bundleid as bundleid,
           count(*)   as itemcount,
           max(position) as maxposition,
           min(position) as minposition
        from bundleassignment a
        group by bundleid
/

/*
    ****************************************************************
    Copyright (c) 1998, 1999 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.
    ****************************************************************
*/

EXECUTE ddl.drop_table('MANUFACTURERVIEW')
EXECUTE ddl.drop_table('SITEMANUFACTURERVIEW')

DELETE FROM enfinitytable WHERE tablename='MANUFACTURERVIEW'
/

DELETE FROM enfinitytable WHERE tablename='SITEMANUFACTURERVIEW'
/

CREATE OR REPLACE VIEW manufacturerview AS SELECT /*+ ORDERED */ DISTINCT manufacturername AS name, domainid FROM product WHERE manufacturername IS NOT NULL;
CREATE OR REPLACE VIEW sitemanufacturerview AS SELECT /*+ ORDERED */ DISTINCT p.manufacturername AS name, d.siteid FROM product p, domain d  where d.domainid=p.domainid and p.manufacturername IS NOT NULL;

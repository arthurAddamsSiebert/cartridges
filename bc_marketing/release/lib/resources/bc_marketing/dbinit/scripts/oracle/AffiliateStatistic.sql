--
-- drop existing affiliatestatistic table
--

EXECUTE ddl.drop_table('AFFILIATESTATISTIC');

DELETE FROM enfinitytable WHERE tablename='AFFILIATESTATISTIC'
/

--
-- create or replace affiliatestatistic view
--

CREATE OR REPLACE VIEW affiliatestatistic AS
   SELECT   DECODE(GROUPING(partneruuid), 1, 'null', partneruuid)  AS partneruuid,
            DECODE(GROUPING(programuuid), 1, 'null', programuuid)  AS programuuid,
            COUNT (*)                                              AS sessioncount,
            COUNT (profileid)                                      AS profilecount
       FROM affiliatesession
   GROUP BY CUBE (partneruuid, programuuid);

--
-- drop existing affiliatestatistic table
--

EXECUTE ddl$drop_table 'AFFILIATESTATISTIC';

DELETE FROM enfinitytable WHERE tablename='AFFILIATESTATISTIC'
GO

--
-- create or replace affiliatestatistic view
--

CREATE OR ALTER VIEW affiliatestatistic AS
   SELECT   IIF(GROUPING(partneruuid)=1, 'null', partneruuid)  AS partneruuid,
            IIF(GROUPING(programuuid)=1, 'null', programuuid)  AS programuuid,
            COUNT (*)                                              AS sessioncount,
            COUNT (profileid)                                      AS profilecount
       FROM affiliatesession
   GROUP BY CUBE (partneruuid, programuuid);
GO

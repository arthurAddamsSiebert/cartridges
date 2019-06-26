--
-- This script removes product sets with allflag=1, nothingflag=1 or inboundflag=1
-- where more than one product set exists for a domain having the same flag.
-- Assignments of product sets to domains are fixed as well.
--
DECLARE
 originalProductSetUUID productset.uuid%TYPE;
BEGIN
  -- Loop over all domains which have product sets
  FOR d IN (SELECT DISTINCT(domainid) FROM productset) LOOP
    -- Handle allflag product sets:
    -- Loop over the allflag product sets for one domain,
    -- the result of the select contains the original product set
    -- with rownum=1 as well as the duplicate product sets with rownum>1,
    -- the productset with the greates lastmodified is considered as 
    -- the original product set
    FOR p IN 
    (
      SELECT uuid,domainid,row_number() over(ORDER BY lastmodified DESC) AS rownumber FROM productset 
      WHERE domainid=d.domainid AND allflag=1 ORDER BY lastmodified DESC
    ) 
    LOOP
      IF p.rownumber > 1 THEN
        -- Original product set exists, point assignments to the original product sets
        UPDATE productsetdomainassignment SET productsetuuid=originalProductSetUUID WHERE productsetuuid=p.uuid
        AND NOT EXISTS (SELECT 1 FROM productsetdomainassignment WHERE domainid=p.domainid AND productsetuuid=originalProductSetUUID);
        -- Delete the duplicate product set
		DELETE FROM productset_av WHERE ownerid=p.uuid;
        DELETE FROM productset WHERE uuid=p.uuid;
      ELSE
       -- It's the first result which is used as original product set 
       originalProductSetUUID:=p.uuid;
      END IF;
    END LOOP;
    
    -- Handle nothingflag product sets: see above
    FOR p IN 
    (
      SELECT uuid,domainid,row_number() over(ORDER BY lastmodified DESC) AS rownumber FROM productset 
      WHERE domainid=d.domainid AND nothingflag=1 ORDER BY lastmodified DESC
    ) 
    LOOP
      IF p.rownumber > 1 THEN
        -- Original product set exists, point assignments to the original product sets
        UPDATE productsetdomainassignment SET productsetuuid=originalProductSetUUID WHERE productsetuuid=p.uuid
        AND NOT EXISTS (SELECT 1 FROM productsetdomainassignment WHERE domainid=p.domainid AND productsetuuid=originalProductSetUUID);
        -- Delete the duplicate product set
		DELETE FROM productset_av WHERE ownerid=p.uuid;
        DELETE FROM productset WHERE uuid=p.uuid;
      ELSE
       -- It's the first result which is used as original product set 
       originalProductSetUUID:=p.uuid;
      END IF;
    END LOOP;
  
    -- Handle inboundflag product sets: see above
    FOR p IN 
    (
      SELECT uuid,domainid,row_number() over(ORDER BY lastmodified DESC) AS rownumber FROM productset 
      WHERE domainid=d.domainid AND inboundflag=1 ORDER BY lastmodified DESC
    ) 
    LOOP
      IF p.rownumber > 1 THEN
        -- Original product set exists, point assignments to the original product sets
        UPDATE productsetdomainassignment SET productsetuuid=originalProductSetUUID WHERE productsetuuid=p.uuid
        AND NOT EXISTS (SELECT 1 FROM productsetdomainassignment WHERE domainid=p.domainid AND productsetuuid=originalProductSetUUID);
        -- Delete the duplicate product set
		DELETE FROM productset_av WHERE ownerid=p.uuid;
        DELETE FROM productset WHERE uuid=p.uuid;
      ELSE
       -- It's the first result which is used as original product set 
       originalProductSetUUID:=p.uuid;
      END IF;
    END LOOP;
    
    END LOOP;

END;
/

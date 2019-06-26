CREATE OR REPLACE PROCEDURE sp_genericPoAvDeleteByDomain
(
    baseTable           IN VARCHAR2,
    avTable             IN VARCHAR2,
    suffix              IN VARCHAR2,
    domainID            IN VARCHAR2,
    domainColumnName    IN VARCHAR2
)
------------------------------------------------------------------------------------------
-- Name        : sp_genericPoAvDeleteByDomain
-- History     : user             date(MM/DD/YYYY) - desc
--             : ...
-- Created     : tkober           08/29/2011         initial created
-- Modified    : abeyer           04/03/2013         added avTable='null' option
--
-- Description : This procedure deletes all rows for given domainid for both
--               the PO base table and the related AV table.
--               If avTable is 'null' it will only delete PO base table rows based on given domainid

-- Input       : baseTable          the base PO table
--               avTable            the extensible object AV table related to base PO table, or 'null'
--               suffix             the $1/$2 if staging or null suffix
--               domainID           the domainID value
--               domainColumnName   the base PO table domainid column name
--
-- Output      : none
-- Example     : EXEC sp_genericPoAvDeleteByDomain ('Foo','Foo_AV', '$1', 'OK0KAB1LrH8AAADm9wC0ccmj', 'domainid');
------------------------------------------------------------------------------------------
AS

BEGIN

	-- for some reason 'IS NOT NULL' causes errors
    IF avTable IS NULL THEN
      -- avTable is not defined - do only base table
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name(baseTable, suffix) ||
              ' WHERE ' || domainColumnName || ' = :domainid' USING domainID;
    ELSE
      -- avTable is also defined - do base table and av table
    	EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name(avTable, suffix) ||
	            ' WHERE ownerid IN (SELECT uuid FROM '|| staging.get_table_name(baseTable, suffix) ||
	            ' WHERE ' || domainColumnName || ' = :domainid)' USING  domainID;
      -- do base table
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name(baseTable, suffix) ||
              ' WHERE ' || domainColumnName || ' = :domainid' USING domainID;
  
    END IF;
    
END sp_genericPoAvDeleteByDomain;
/

show errors

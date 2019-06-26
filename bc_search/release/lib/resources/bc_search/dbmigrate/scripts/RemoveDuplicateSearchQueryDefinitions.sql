--
-- This script removes search query definitions with duplicate name in a domain
--

DECLARE

  PROCEDURE deleteDuplicates(suffix IN VARCHAR2) AS
  BEGIN

    EXECUTE IMMEDIATE 'delete from ' || staging.get_table_name('SearchQueryDefinitio_AV', suffix) || ' where ownerid in '
                    ||' (select uuid from ' || staging.get_table_name('SearchQueryDefinition', suffix) || ' where rowid not in '
                    ||' (select min(rowid) from ' || staging.get_table_name('SearchQueryDefinition', suffix) || ' group by name, domainid))';

    logger.log(staging.get_table_name('SearchQueryDefinitio_AV', suffix) || ' duplicate "name, domainid" rows deleted: ' || sql%rowcount);

    EXECUTE IMMEDIATE 'delete from ' || staging.get_table_name('SearchQueryDefinition', suffix) || ' where rowid not in '
                    ||' (select min(rowid) from ' || staging.get_table_name('SearchQueryDefinition', suffix) || ' group by name, domainid)';

    logger.log(staging.get_table_name('SearchQueryDefinition', suffix) || ' duplicate "name, domainid" rows deleted: ' || sql%rowcount);

  END;

BEGIN

  IF sf_is_staging_table('SearchQueryDefinition') THEN
    deleteDuplicates('$1');
    deleteDuplicates('$2');
  ELSE
    deleteDuplicates(null);
  END IF;

  COMMIT;

END;
/

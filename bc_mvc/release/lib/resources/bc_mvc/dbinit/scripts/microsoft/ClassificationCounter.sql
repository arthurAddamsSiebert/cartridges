WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1

--
-- Drop existing counter snapshots
--

EXEC ddl$drop_materialized_view 'eclasscount'
EXEC ddl$drop_synonym           'eclasscount'
EXEC ddl$drop_table             'eclasscount'
EXEC ddl$drop_materialized_view 'eclasscount1'
EXEC ddl$drop_materialized_view 'eclasscount2'
EXEC ddl$drop_table             'eclasscount1'
EXEC ddl$drop_table             'eclasscount2'

EXEC ddl$drop_materialized_view 'unspsccount'
EXEC ddl$drop_synonym           'unspsccount'
EXEC ddl$drop_table             'unspsccount'
EXEC ddl$drop_materialized_view 'unspsccount1'
EXEC ddl$drop_materialized_view 'unspsccount2'
EXEC ddl$drop_table             'unspsccount1'
EXEC ddl$drop_table             'unspsccount2'

EXEC ddl$drop_table             'classificationcount'
EXEC ddl$drop_materialized_view 'classificationcount'
EXEC ddl$drop_synonym           'classificationcount'
EXEC ddl$drop_materialized_view 'classificationcount1'
EXEC ddl$drop_materialized_view 'classificationcount2'
EXEC ddl$drop_table             'classificationcount1'
EXEC ddl$drop_table             'classificationcount2'
EXEC ddl$drop_table             'classificationcount$1'
EXEC ddl$drop_table             'classificationcount$2'
EXEC ddl$drop_view              'classificationcount$S'
--
-- Create new counter snapshot
--
BEGIN TRANSACTION
	CREATE TABLE classificationcount (
	    categoryid  NVARCHAR(28),
	    domainid    NVARCHAR(28),
	    cnt         INTEGER,
	    PRIMARY KEY (categoryid, domainid)
	);
COMMIT TRANSACTION

EXEC sp_addextendedproperty @name = N'Comment', @value = 'bc_mvc', @level0type = N'Schema', @level0name = 'dbo', @level1type = N'Table', @level1name = 'CLASSIFICATIONCOUNT';

-- merge enfinitytable
MERGE INTO enfinitytable d
USING (SELECT 'CLASSIFICATIONCOUNT' AS tableName, 'bc_mvc' AS cartridgeName, '&_enfinityVersion' AS version) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN MATCHED     THEN UPDATE SET d.oca = d.oca+1 , d.lastModified = SYSUTCDATETIME()
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, SYSUTCDATETIME(), NULL, 0);
                       
-- Prepare CLASSIFICATIONCOUNT as staging table
BEGIN
	DECLARE @query NVARCHAR(4000);
	
    IF (dbo.staging$is_staging_table('CLASSIFICATIONCOUNT') = 1) 
    BEGIN
		
	    BEGIN TRANSACTION
        	UPDATE stagingtable SET preparationflag=0, oca=oca+1, lastmodified=SYSUTCDATETIME() WHERE tablename='CLASSIFICATIONCOUNT';
        COMMIT TRANSACTION
        
        BEGIN TRANSACTION
	        EXEC staging_ddl$prepare_staging_table 'CLASSIFICATIONCOUNT', '&_enfinityVersion'
	
	        SET @query = CONCAT('CREATE OR ALTER VIEW ', dbo.staging$get_table_name('CLASSIFICATIONCOUNT', '$S'), ' AS SELECT * FROM classificationcount');
	        
	        EXECUTE sp_executesql @query
	
	        UPDATE stagingtable SET preparationflag=1, oca=oca+1, lastmodified=SYSUTCDATETIME() WHERE tablename='CLASSIFICATIONCOUNT';
		COMMIT TRANSACTION
    END
END
/
show errors;

EXIT;
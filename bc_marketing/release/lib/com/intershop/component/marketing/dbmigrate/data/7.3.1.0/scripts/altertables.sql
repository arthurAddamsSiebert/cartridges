EXEC staging_ddl.drop_index('PROMOTION_PA_IE001', 'PROMOTION_PA');
-- ORA-00957: duplicate column name
EXEC staging_ddl.alter_table('PROMOTION_PA', 'RENAME COLUMN pageletUUID TO pageletID', -957);

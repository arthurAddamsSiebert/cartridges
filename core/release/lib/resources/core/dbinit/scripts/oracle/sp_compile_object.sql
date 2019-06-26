CREATE OR REPLACE PROCEDURE sp_compile_object(object_type VARCHAR2, object_name VARCHAR2) AS
------------------------------------------------------------------------------------------
-- Name        : sp_compile_object
-- Created     : Thomas Budich
-- Description : This procedure compiles given database object.
-- Input       : object_type - the object type
--               object_name - the object name
-- Output      : none
-- Example     : exec sp_compile_object('VIEW', 'PRODUCT$S')
------------------------------------------------------------------------------------------
BEGIN
    
    IF object_type = 'PACKAGE BODY' THEN
    
        EXECUTE IMMEDIATE 'ALTER PACKAGE '||object_name||' COMPILE';
        EXECUTE IMMEDIATE 'ALTER PACKAGE '||object_name||' COMPILE BODY';
        logger.log('PACKAGE '||object_name||' successfully compiled.');

    ELSIF object_name = 'SP_DBMONITOR' THEN
    
        logger.log('Do not compile stored procedure sp_DBMonitor.');
    
    ELSIF object_type IN ('PROCEDURE','FUNCTION','PACKAGE','VIEW','SYNONYM','TRIGGER', 'MATERIALIZED VIEW') THEN
        
        EXECUTE IMMEDIATE 'ALTER '||object_type||' '||object_name||' COMPILE';
        logger.log(object_type||' '||object_name||' successfully compiled.');
    
    ELSE
        logger.log('Do not compile objects of type: '||object_type);
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        logger.log('Error compiling '||object_name||': '||SQLERRM);
END;
/

show errors;

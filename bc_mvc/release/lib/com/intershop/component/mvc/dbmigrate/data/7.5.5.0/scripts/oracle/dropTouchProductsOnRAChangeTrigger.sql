-- Drop the trigger TOUCH_PRODUCTS_ON_RA_CHANGE if it exists 
DECLARE
    drop_trigger_stmt     VARCHAR2(100);
    trigger_name          VARCHAR2(100);
    table_name            VARCHAR2(100);

BEGIN

    dbms_application_info.set_module('TOUCH_PRODUCTS_ON_RA_CHANGE', 'starting...');

    trigger_name          := 'TOUCH_PRODUCTS_ON_RA_CHANGE';
    table_name            := 'PRODUCT_RA';
    
    -- the drop trigger statement (needed if staging configuration has been changed)
    drop_trigger_stmt     := 'DROP TRIGGER ';
    
    logger.log('start of deleting trigger ' || trigger_name || '...');

    IF ddl.is_object_exists(trigger_name, 'TRIGGER') THEN
        sql_util.execute(drop_trigger_stmt || trigger_name, 0);
    END IF;
    IF ddl.is_object_exists(trigger_name || '$1', 'TRIGGER') THEN
        sql_util.execute(drop_trigger_stmt || trigger_name || '$1', 0);
    END IF;
    IF ddl.is_object_exists(trigger_name || '$2', 'TRIGGER') THEN
        sql_util.execute(drop_trigger_stmt || trigger_name || '$2', 0);
    END IF;

    --
    -- clean module info
    --
    dbms_application_info.set_module(null, null);

END;

/

show errors;



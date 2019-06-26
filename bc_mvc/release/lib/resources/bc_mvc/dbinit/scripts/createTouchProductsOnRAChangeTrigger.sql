-- mind that BEFORE triggers are slightly more efficient than AFTER triggers 
DECLARE
    drop_trigger_stmt     VARCHAR2(100);
    create_trigger_stmt   VARCHAR2(100);
    trigger_condition     VARCHAR2(100);
    trigger_clause        VARCHAR2(1000);
    trigger_name          VARCHAR2(100);
    table_name            VARCHAR2(100);

BEGIN

    dbms_application_info.set_module('TOUCH_PRODUCTS_ON_RA_CHANGE', 'starting...');

    trigger_name          := 'TOUCH_PRODUCTS_ON_RA_CHANGE';
    table_name            := 'PRODUCT_RA';
    
    -- the drop trigger statement (needed if staging configuration has been changed)
    drop_trigger_stmt     := 'DROP TRIGGER ';
    
    -- the create trigger statement
    create_trigger_stmt   := 'CREATE OR REPLACE TRIGGER ';
    
    -- the timing condition
    trigger_condition     := 'BEFORE DELETE OR INSERT ON ';

    -- the trigger's detailes
    trigger_clause        := 'FOR EACH ROW ' ||
                             'DECLARE ' ||
                             '    domainid VARCHAR2(28);' ||
                             '    productid VARCHAR2(28);' ||
                             'BEGIN ' ||
                             '    IF INSERTING THEN ' ||
                             '      domainid := :NEW.USERGROUPDOMAINID; ' ||
                             '      productid := :NEW.AO_UUID; ' ||
                             '    ELSE ' ||
                             '      domainid := :OLD.USERGROUPDOMAINID; ' ||
                             '      productid := :OLD.AO_UUID; ' ||
                             '    END IF; ' ||
                             ' ' ||
                             '   UPDATE derivedproduct SET lastmodified = utctimestamp(), oca = oca + 1 ' ||
                             '      WHERE baseproductid = productid AND domainid = domainid; ' ||
                             ' ' ||
                             '   IF SQL%NOTFOUND THEN ' ||
                             '      UPDATE product SET lastmodified = utctimestamp(), oca = oca + 1 ' ||
                             '          WHERE uuid = productid; ' ||
                             '   END IF; ' ||
                             'END; '; 
    
    logger.log('creating trigger ' || trigger_name || '...');

    -- asure, that trigger is created depending on the current staging setup                             
    IF staging.is_prepared(table_name) THEN
        IF ddl.is_object_exists(trigger_name, 'TRIGGER') THEN
            sql_util.execute(drop_trigger_stmt || trigger_name, 0);
        END IF;
        logger.log('  Staging configuration found. Creating ' || trigger_name || '$1 .');
        sql_util.execute(create_trigger_stmt || trigger_name || '$1 ' || trigger_condition || staging.get_table_name(table_name, '$1') || ' ' || trigger_clause, 0);
        logger.log('  Staging configuration found. Creating ' || trigger_name || '$2 .');
        sql_util.execute(create_trigger_stmt || trigger_name || '$2 ' || trigger_condition || staging.get_table_name(table_name, '$2') || ' ' || trigger_clause, 0);
    ELSE
        IF ddl.is_object_exists(trigger_name || '$1', 'TRIGGER') THEN
            sql_util.execute(drop_trigger_stmt || trigger_name || '$1', 0);
        END IF;
        IF ddl.is_object_exists(trigger_name || '$2', 'TRIGGER') THEN
            sql_util.execute(drop_trigger_stmt || trigger_name || '$2', 0);
        END IF;
        logger.log('  Non-Staging configuration found. Creating ' || trigger_name || '.');
        sql_util.execute(create_trigger_stmt || trigger_name || ' ' || trigger_condition || table_name || ' ' || trigger_clause, 0);
    END IF;


    --
    -- clean module info
    --
    dbms_application_info.set_module(null, null);

END;

/

show errors;



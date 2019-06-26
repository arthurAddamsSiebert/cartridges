CREATE OR REPLACE PACKAGE BODY types_ddl IS

    TYPE table_type IS TABLE OF VARCHAR2(1000) INDEX BY VARCHAR2(30);
    l_types table_type;
    l_type_name user_types.type_name%type;

    PROCEDURE init_types IS
    BEGIN
    
    ------------------------------------------------------------------------------------------
    -- Name        : collectionOfUUIDs
    -- Description : this collection type is for aggregation of UUIDs
    -- Example     : select cast(collect(uuid) as collectionOfUUIDs) as uuids from domain
    ------------------------------------------------------------------------------------------
    l_types('collectionOfUUIDs') := 'as table of varchar2(112)';
        
    ------------------------------------------------------------------------------------------
    -- Name        : collectionOfSKUs
    -- Description : this collection type is for aggregation of SKUs
    -- Example     : select cast(collect(sku) as collectionOfSKUs) as skus from product
    ------------------------------------------------------------------------------------------
    --l_types('collectionOfSKUs') := 'as table of varchar2(1024)';
        
    END;

    PROCEDURE drop_types IS
    BEGIN
        types_ddl.init_types;
        l_type_name := l_types.FIRST;
        WHILE l_type_name IS NOT NULL 
        LOOP
            sql_util.executeDDL('drop type '||l_type_name, -4043);
            l_type_name := l_types.NEXT(l_type_name);  
        END LOOP;
    END;

    PROCEDURE create_types IS
    BEGIN
        types_ddl.init_types;
        l_type_name := l_types.FIRST;
        WHILE l_type_name IS NOT NULL 
        LOOP
            sql_util.executeDDL('create or replace type '||l_type_name||' '||l_types(l_type_name));
            l_type_name := l_types.NEXT(l_type_name);  
        END LOOP;
    END;

END;
/

SHOW ERRORS

BEGIN
    types_ddl.create_types;
END;
/

/*
BEGIN
    types_ddl.drop_types;
END;
/
--*/

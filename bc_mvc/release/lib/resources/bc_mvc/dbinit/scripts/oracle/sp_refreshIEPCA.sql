CREATE OR REPLACE PROCEDURE sp_refreshIEPCA (full_refresh BOOLEAN DEFAULT FALSE) AS
    sourceTable     user_tables.table_name%TYPE;
    targetTable     user_tables.table_name%TYPE;
    synonymName     user_synonyms.synonym_name%TYPE := upper('iproductcategoryassignment');
    maxLMCategories DATE;
    cCategory#      NUMBER;
    maxLMProducts   DATE;
    cProduct#       NUMBER;
    maxLMDProducts  DATE;
    cDProduct#      NUMBER;
    pba             productbindingattribute%ROWTYPE;
    isNative        NUMBER(10);

    FUNCTION syncCtxIndex RETURN BOOLEAN AS
        ctxIdxName ctx_user_indexes.idx_name%TYPE;
    BEGIN
        SELECT idx_name
        INTO ctxIdxName
        FROM ctx_user_indexes
        WHERE  idx_text_name='ATTRIBUTES'
        AND idx_table=staging.get_live_table_name('PRODUCT');
        ctx_ddl.sync_index(ctxIdxName);
        SELECT idx_name
        INTO ctxIdxName
        FROM ctx_user_indexes
        WHERE  idx_text_name='ATTRIBUTES'
        AND idx_table=staging.get_live_table_name('DERIVEDPRODUCT');
        ctx_ddl.sync_index(ctxIdxName);
        RETURN TRUE;
    EXCEPTION
        WHEN no_data_found THEN
            RETURN FALSE;
    END;

BEGIN
    -- suppress oracle streaming
    core.suppress_data_movement;

    SELECT table_name INTO sourceTable FROM user_synonyms WHERE synonym_name=synonymName;
    IF substr(sourceTable, -1)='1' THEN
        targetTable := substr(sourceTable, 1, length(sourceTable)-1)||'2';
    ELSE
        targetTable := substr(sourceTable, 1, length(sourceTable)-1)||'1';
    END IF;

    -- update product binding attribute table
    DELETE FROM productbindingattribute WHERE name NOT IN (SELECT bindingkey FROM iepca_bindingkeys);
    INSERT INTO productbindingattribute (name) SELECT bindingkey FROM iepca_bindingkeys WHERE bindingkey NOT IN (SELECT name FROM productbindingattribute);
    COMMIT;

    sql_util.execute('TRUNCATE TABLE '||targetTable||' REUSE STORAGE');

    -- for each binding attribute
    FOR i IN (SELECT * FROM productbindingattribute)
    LOOP
        SELECT count(*) INTO isNative FROM user_tab_columns WHERE column_name=i.name and table_name=staging.get_live_table_name('PRODUCT');
        SELECT max(lastmodified), count(*) INTO maxLMCategories, cCategory# FROM catalogcategory WHERE productbindingattribute=i.name;
        SELECT max(lastmodified), count(*) INTO maxLMProducts, cProduct# FROM product WHERE contains(attributes, 'HASPATH (/attrs/attr[@name="'||i.name||'"])')>0;
        SELECT max(lastmodified), count(*) INTO maxLMDProducts, cDProduct# FROM derivedproduct WHERE contains(attributes, 'HASPATH (/attrs/attr[@name="'||i.name||'"])')>0;
        logger.log('*** '||i.name||': c=('||cCategory#||','||maxLMCategories||'), p=('||cProduct#||','||maxLMProducts||'), dp=('||cDProduct#||','||maxLMDProducts||')');

        cProduct# := cProduct# + cDProduct#;
        IF maxLMDProducts >= nvl(maxLMProducts, maxLMDProducts) THEN
            maxLMProducts := maxLMDProducts;
        END IF;

        IF cProduct#=0 OR cCategory#=0 THEN
            logger.log('No implicit assignments for attribute '||i.name||' were found.');
        ELSE
            IF NOT full_refresh AND i.maxcategorylm=maxLMCategories AND i.maxproductlm=maxLMProducts AND i.product#=cProduct# AND i.category#=cCategory# THEN
                logger.log('*** The product binding attribute '''||i.name||''' has not changed!');
                sql_util.execute('INSERT /*+ APPEND */ INTO '||targetTable||' (categoryid,productid,productdomainid,productbindingattribute) '||
                    'SELECT categoryid,productid,productdomainid,productbindingattribute FROM '||sourceTable||
                    ' WHERE productbindingattribute='''||i.name||'''');
                COMMIT;
            ELSIF isNative=0 THEN
                IF syncCtxIndex THEN
                    -- get attribute value from XML attributes
                    sql_util.execute('INSERT /*+ APPEND */ INTO '||targetTable||' (categoryid,productid,productdomainid, productbindingattribute) '||
                        'SELECT c.uuid, p.uuid, p.domainid, c.productbindingattribute '||
                        ' FROM catalogcategory c '||
                        ' JOIN (SELECT * FROM product WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="'||i.name||'"])'')>0) p '||
                        ' ON (c.productbindingvalue=extractValue(XMLType(p.attributes), ''/attrs/attr[@name="'||i.name||'"]/string'')) '||
                        'WHERE NOT EXISTS '||
                        '( '||
                        ' SELECT 1 FROM '||targetTable||
                        ' WHERE categoryid=c.uuid AND productid=p.uuid AND productdomainid=p.domainid '||
                        ') ');
                    COMMIT;
                    sql_util.execute('INSERT /*+ APPEND */ INTO '||targetTable||' (categoryid,productid,productdomainid, productbindingattribute) '||
                        'SELECT c.uuid, p.baseproductid, p.domainid, c.productbindingattribute '||
                        ' FROM catalogcategory c '||
                        ' JOIN (SELECT * FROM derivedproduct WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="'||i.name||'"])'')>0) p '||
                        ' ON (c.productbindingvalue=extractValue(XMLType(p.attributes), ''/attrs/attr[@name="'||i.name||'"]/string'')) '||
                        'WHERE NOT EXISTS '||
                        '( '||
                        ' SELECT 1 FROM '||targetTable||
                        ' WHERE categoryid=c.uuid AND productid=p.baseproductid AND productdomainid=p.domainid '||
                        ') ');
                    COMMIT;
                ELSE
                    logger.log('Error determining implicit pcas for '||i.name||', because context index on product.attributes is not available.');
                END IF;
            ELSE
                -- get attribute value from native attribute
                sql_util.execute('INSERT /*+ APPEND */ INTO '||targetTable||' (categoryid,productid,productdomainid, productbindingattribute) '||
                    'SELECT c.uuid, p.uuid, p.domainid, c.productbindingattribute '||
                    ' FROM catalogcategory c '||
                    ' JOIN product p ON (c.productbindingvalue=p.'||i.name||')'||
                    'WHERE NOT EXISTS '||
                    '( '||
                    ' SELECT 1 FROM '||targetTable||
                    ' WHERE categoryid=c.uuid AND productid=p.uuid AND productdomainid=p.domainid '||
                    ') ');
                COMMIT;
            END IF;
        END IF;

        UPDATE productbindingattribute SET
            maxcategorylm=maxLMCategories,
            category#=cCategory#,
            maxproductlm=maxLMProducts,
            product#=cProduct#
        WHERE name = i.name;
        COMMIT;

    END LOOP;
    COMMIT;

    UPDATE stagingtable SET livetablenamesuffix=substr(targetTable, -2), oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tableName = 'IPRODUCTCATEGORYASSIGNMENT';
    ddl.replace_synonym(synonymName, targetTable);

    -- re-enable oracle streaming
    core.enable_data_movement;

EXCEPTION WHEN OTHERS THEN
    BEGIN
        -- re-enable oracle streaming
        core.enable_data_movement;
        RAISE;
    END;

END;
/

show errors;

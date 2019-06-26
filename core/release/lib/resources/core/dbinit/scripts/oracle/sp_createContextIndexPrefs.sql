CREATE OR REPLACE PROCEDURE sp_createContextIndexPrefs(
    ts_name    IN VARCHAR2 DEFAULT 'IS_INDX_CTX',
    doRecreate IN BOOLEAN DEFAULT FALSE,
    localeid   IN VARCHAR2 DEFAULT null)
AS
    aPrefName VARCHAR2(50);

    FUNCTION doesPreferenceExist(preName IN VARCHAR2, preClass IN VARCHAR2)
        RETURN BOOLEAN AS
        cnt INTEGER;
    BEGIN
        SELECT count(*) INTO cnt FROM ctx_user_preferences
        WHERE pre_name = preName AND pre_class = preClass;
        RETURN cnt>0;
    END;

    FUNCTION doesSectionGroupExist(aName IN VARCHAR2)
        RETURN BOOLEAN AS
        cnt INTEGER;
    BEGIN
        SELECT count(*) INTO cnt FROM ctx_user_section_groups WHERE sgp_name = aName;
        RETURN cnt>0;
    END;


    PROCEDURE createMultiColumnPref(aLocaleID IN VARCHAR2)
    AS
        aPrefName VARCHAR2(50);
    BEGIN
        aPrefName := 'ENFINITY_MULTI_COLUMNS_'||upper(aLocaleID);
        IF doesPreferenceExist(aPrefName, 'DATASTORE') AND doRecreate THEN
            logger.log('drop datastore '||aPrefName||'...');
            ctx_ddl.drop_preference(aPrefName);
        END IF;

        IF doesPreferenceExist(aPrefName, 'DATASTORE') THEN
            logger.log('datastore '||aPrefName||' already exists. Proceed...');
        ELSE
            logger.log('creating datastore '||aPrefName||'...');
            ctx_ddl.create_preference(aPrefName, 'MULTI_COLUMN_DATASTORE');
            ctx_ddl.set_attribute(aPrefName, 'COLUMNS', 'attributes,attributes_'||aLocaleID);
        END IF;
    END;
BEGIN
    /* LEXER */
    IF doesPreferenceExist('ENFINITY_LEXER', 'LEXER') AND doRecreate THEN
        logger.log('drop lexer ENFINITY_LEXER...');
        ctx_ddl.drop_preference('ENFINITY_LEXER');
    END IF;

    IF doesPreferenceExist('ENFINITY_LEXER', 'LEXER') THEN
        logger.log('lexer ENFINITY_LEXER already exists. Proceed...');
    ELSE
        logger.log('create ENFINITY_LEXER...');
        ctx_ddl.create_preference('ENFINITY_LEXER', 'BASIC_LEXER');
        ctx_ddl.set_attribute('ENFINITY_LEXER', 'INDEX_TEXT', 'TRUE');
        ctx_ddl.set_attribute('ENFINITY_LEXER', 'INDEX_THEMES', 'FALSE');
    END IF;

    /* WORDLIST */
    IF doesPreferenceExist('ENFINITY_WORDLIST', 'WORDLIST') AND doRecreate THEN
        logger.log('drop wordlist ENFINITY_WORDLIST...');
        ctx_ddl.drop_preference('ENFINITY_WORDLIST');
    END IF;

    IF doesPreferenceExist('ENFINITY_WORDLIST', 'WORDLIST') THEN
        logger.log('wordlist ENFINITY_WORDLIST already exists. Proceed...');
    ELSE
        logger.log('creating ENFINITY_WORDLIST...');
        ctx_ddl.create_preference('ENFINITY_WORDLIST', 'BASIC_WORDLIST');
        ctx_ddl.set_attribute('ENFINITY_WORDLIST', 'SUBSTRING_INDEX', 'FALSE');
        ctx_ddl.set_attribute('ENFINITY_WORDLIST', 'PREFIX_INDEX', 'FALSE');
        ctx_ddl.set_attribute('ENFINITY_WORDLIST', 'PREFIX_MIN_LENGTH',3);
        ctx_ddl.set_attribute('ENFINITY_WORDLIST', 'PREFIX_MAX_LENGTH',15);
    END IF;

    /* create multicolumn datastores for xml extensible objects */
    /* @deprecated, see #37235 
    FOR i IN (SELECT localeid FROM localeinformation) LOOP
        createMultiColumnPref(i.localeid);
    END LOOP;
    IF localeid IS NOT NULL THEN
        createMultiColumnPref(localeid);
    END IF;
    --*/
    
    /* PATH SECTION GROUP */
    IF doesSectionGroupExist('ENFINITY_PATH_SECTION_GROUP') AND doRecreate THEN
        logger.log('drop section group ENFINITY_PATH_SECTION_GROUP...');
        ctx_ddl.drop_section_group('ENFINITY_PATH_SECTION_GROUP');
    END IF;

    IF doesSectionGroupExist('ENFINITY_PATH_SECTION_GROUP') THEN
        logger.log('section group ENFINITY_PATH_SECTION_GROUP already exists. Proceed...');
    ELSE
        logger.log('creating section group ENFINITY_PATH_SECTION_GROUP...');
        ctx_ddl.create_section_group('ENFINITY_PATH_SECTION_GROUP', 'PATH_SECTION_GROUP');
    END IF;

    aPrefName := 'ENFINITY_STORAGE';
    IF doesPreferenceExist(aPrefName, 'STORAGE') AND doRecreate THEN
        logger.log('drop storage '||aPrefName||'...');
        ctx_ddl.drop_preference(aPrefName);
    END IF;

    IF doesPreferenceExist(aPrefName, 'STORAGE') THEN
        logger.log('storage '||aPrefName||' already exists. Proceed...');
    ELSE
        logger.log('creating storage '||aPrefName||'...');

        ctx_ddl.create_preference(aPrefName, 'BASIC_STORAGE');
        ctx_ddl.set_attribute(aPrefName, 'I_TABLE_CLAUSE', 'LOB(token_info)'||
            ' STORE AS (CHUNK 32768 CACHE) TABLESPACE '||ts_name||' CACHE');
        ctx_ddl.set_attribute(aPrefName, 'I_INDEX_CLAUSE', 'TABLESPACE '||ts_name);
        ctx_ddl.set_attribute(aPrefName, 'K_TABLE_CLAUSE', 'TABLESPACE '||ts_name);
        ctx_ddl.set_attribute(aPrefName, 'N_TABLE_CLAUSE', 'TABLESPACE '||ts_name);
        ctx_ddl.set_attribute(aPrefName, 'R_TABLE_CLAUSE', 'LOB(data)' ||
            ' STORE AS (CHUNK 32768 CACHE) TABLESPACE '||ts_name||' CACHE');
        ctx_ddl.set_attribute(aPrefName, 'P_TABLE_CLAUSE', 'TABLESPACE ' || ts_name);
    END IF;
END sp_createContextIndexPrefs;
/

show errors;

CREATE OR REPLACE PACKAGE BODY staging IS
    ------------------------------------------------------------------------------------------
    -- Name        : get_editing_object
    -- Description : builds the object name using parameters
    -- Input       : name - the object name
    --               editing_schema_name - name of editing schema
    --               db_link_name - name of database link
    -- Output      : the editing object name
    -- Example     : exec staging.get_editing_object('DOMAIN', NULL, 'ISEDITING')
    --               exec staging.get_editing_object('DOMAIN', 'INTERSHOP_EDIT', NULL)
    ------------------------------------------------------------------------------------------
    FUNCTION get_editing_object(name IN VARCHAR2,
                                editing_schema_name IN VARCHAR2,
                                db_link_name IN VARCHAR2)
    RETURN VARCHAR2 IS
    BEGIN
        IF editing_schema_name IS NOT NULL AND length(editing_schema_name)>0 THEN
            RETURN editing_schema_name||'.'||name;
        ELSIF db_link_name IS NOT NULL AND length(db_link_name)>0 THEN
            RETURN name||'@'||db_link_name;
        ELSE
            RETURN name;
        END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : execute
    -- Description : Performs given statement for given table or in case of
    --               a synonym for both $1/$2 tables.
    -- Input       : stmt       - the beginning of statement
    --               table_name - the name of table or synonym
    --               clause     - the end of statement
    -- Output      : none
    ------------------------------------------------------------------------
    PROCEDURE execute(stmt IN VARCHAR2, table_name IN VARCHAR2, clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0) AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            sql_util.execute(stmt||' '||staging.get_table_name(table_name, '$1')||' '||clause, ignoreErrorCode);
            sql_util.execute(stmt||' '||staging.get_table_name(table_name, '$2')||' '||clause, ignoreErrorCode);
        ELSE
            sql_util.execute(stmt||' '||table_name||' '||clause, ignoreErrorCode);
        END IF;
    END execute;


    ------------------------------------------------------------------------------------------
    -- Name        : get_synonym_name
    -- Description : This function returns the synonym name of given staging table. It does
    --               not matter if table is active or inactive ($1 or $2).
    -- Input       : tableName   - the name of staging table (live or shadow)
    -- Output      : the synonym of given staging table
    ------------------------------------------------------------------------------------------
    FUNCTION get_synonym_name(tableName IN user_tables.table_name%TYPE) RETURN user_synonyms.synonym_name%TYPE IS
        synonymName user_synonyms.synonym_name%TYPE;
    BEGIN
        SELECT synonym_name INTO synonymName FROM user_synonyms
         WHERE table_name LIKE substr(upper(tableName), 1, length(tableName)-1)||'_';
        RETURN synonymName;
    EXCEPTION
        WHEN no_data_found THEN
            RETURN tableName;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_table_name
    -- Description : This function returns the name of staging table being currently alive.
    -- Input       : tableName   - the name of staging table
    -- Output      : the current live table
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_table_name(tableName IN user_tables.table_name%TYPE) RETURN user_tables.table_name%TYPE IS
        name user_tables.table_name%TYPE;
    BEGIN
        SELECT table_name INTO name FROM user_synonyms
         WHERE synonym_name = upper(tableName);
        RETURN name;
    EXCEPTION
        WHEN no_data_found THEN

            IF tableName LIKE '%$_' THEN
                RETURN get_live_table_name(get_synonym_name(tableName));
            ELSE
                RETURN tableName;
            END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_table_name
    -- Description : This function returns the name of staging table being currently not alive.
    -- Input       : tableName   - the name of staging table
    -- Output      : the current shadow table
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_table_name(tableName IN user_tables.table_name%TYPE) RETURN user_tables.table_name%TYPE IS
        name user_tables.table_name%TYPE;
    BEGIN
        name := get_live_table_name(tableName);
        IF substr(name, -2)='$1' THEN
            return replace(name, '$1', '$2');
        ELSIF substr(name, -2)='$2' THEN
            return replace(name, '$2', '$1');
        ELSE
            RETURN tableName;
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : handle_live_user_privs
    -- Description : It grants or revokes some object privileges of editing system to user of
    --               live system.
    -- Input       : the schema name of live system.
    --               isGranted true, if privileges should be granted or
    --                         false, if privileges should be revoked
    -- Output      : none
    -- Example     : exec staging.handle_live_user_privs ('LIVE_USER', TRUE)
    ------------------------------------------------------------------------------------------
    PROCEDURE handle_live_user_privs( schema_name IN VARCHAR2, isGranted IN BOOLEAN)
    AS
        object_names    ddl.type_object_name_list;
        cur             INTEGER;
        grant_stmt      VARCHAR2(10);
        grant_keyword   VARCHAR2(10);

    BEGIN
        IF isGranted THEN
            grant_stmt := 'GRANT';
            grant_keyword := ' TO ';
        ELSE
            grant_stmt := 'REVOKE';
            grant_keyword := ' FROM ';
        END IF;

        cur := dbms_sql.open_cursor;
        --
        -- grant select on source view of all staging tables
        --
        SELECT view_name BULK COLLECT INTO object_names  FROM user_views;

        IF object_names.COUNT>0 THEN
            FOR i IN object_names.FIRST .. object_names.LAST
            LOOP
                sql_util.execute(cur, grant_stmt||' SELECT ON '||object_names(i)||grant_keyword||schema_name, -1927);
            END LOOP;
        END IF;

        --
        -- grant select on all tables and delete on all deletion tables
        --
        SELECT table_name BULK COLLECT INTO object_names FROM user_tables WHERE iot_type != 'IOT_OVERFLOW' or iot_type is null;
        IF object_names.COUNT>0 THEN
            FOR i IN object_names.FIRST .. object_names.LAST
            LOOP
                IF object_names(i) LIKE 'D$%' THEN
                    sql_util.execute(cur, grant_stmt||' SELECT,DELETE ON '||object_names(i)||grant_keyword||schema_name, -1927);
                ELSE
                    sql_util.execute(cur, grant_stmt||' SELECT ON '||object_names(i)||grant_keyword||schema_name, -1927);
                END IF;
            END LOOP;
        END IF;

        --
        -- grant delete on stagingidentification table in editing system
        --
        sql_util.execute(cur, grant_stmt||' DELETE ON stagingidentification'||grant_keyword||schema_name, -1927);
        sql_util.execute(cur, grant_stmt||' UPDATE ON process'||grant_keyword||schema_name, -1927);
        sql_util.execute(cur, grant_stmt||' UPDATE ON process_av'||grant_keyword||schema_name, -1927);
        sql_util.execute(cur, grant_stmt||' UPDATE ON stagingprocesscomponent'||grant_keyword||schema_name, -1927);

        dbms_sql.close_cursor(cur);

    END;

    ------------------------------------------------------------------------------------------
    -- Name        : create_synonym
    -- Description : This procedure is used to create given synonym. If the synonym exists, it
    --               will be dropped before.
    -- Input       : synonymname   - the name of synonym
    --               tablename     - the name of table
    ------------------------------------------------------------------------------------------
    PROCEDURE create_synonym (synonymname IN user_synonyms.synonym_name%TYPE,
                              tablename   IN user_synonyms.table_name%TYPE)
    AS
    BEGIN
        -- create the synonyms
        logger.log('Creating synonym '||synonymname||' to '||tablename||'...');

        ddl.replace_synonym(synonymname, tablename);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : create_synonyms_of_list
    -- Description : This procedure is used to switch given synonym.
    -- Input       : synonyms   - the list of synonyms
    --               tablenames - the list of tablenames
    ------------------------------------------------------------------------------------------
    PROCEDURE create_synonyms_of_list (synonyms IN ddl.type_object_name_list,
                                       tablenames IN ddl.type_object_name_list)
    AS
    BEGIN
        IF synonyms.COUNT=0 THEN
            RETURN;
        END IF;
        FOR i IN synonyms.FIRST..synonyms.LAST LOOP
            create_synonym(synonyms(i), tablenames(i));
        END LOOP;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : switch_synonyms_of_list
    -- Description : This procedure is used to switch given synonym.
    -- Input       : synonyms - the list of synonyms
    ------------------------------------------------------------------------------------------
    PROCEDURE switch_synonyms_of_list (synonyms IN ddl.type_object_name_list)
    AS
        aStagingTable     stagingtable%ROWTYPE;
        new_table_name    VARCHAR2(30);
    BEGIN
        IF synonyms.COUNT=0 THEN
            RETURN;
        END IF;
        FOR i IN synonyms.FIRST..synonyms.LAST LOOP

            aStagingTable := get_staging_table(synonyms(i));

            -- get real table names
            new_table_name := get_table_name(aStagingTable.tablename, switch_suffix(aStagingTable.livetablenamesuffix));

            create_synonym(aStagingTable.tablename, new_table_name);
        END LOOP;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_staging_table
    -- Description : This function returns TRUE if table with given name is a staging table,
    --               else FALSE.
    -- Input       : table_name - the name of table
    -- Output      : TRUE if given table is a staging table
    ------------------------------------------------------------------------------------------
    FUNCTION is_staging_table (table_name IN VARCHAR2) RETURN BOOLEAN
    IS
        i INTEGER;
    BEGIN
        SELECT count(1) INTO i FROM stagingtable WHERE tablename = UPPER(table_name);

        RETURN i>0;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_prepared
    -- Description : This function returns TRUE if table with given name is a staging table
    --               and it is prepared.
    -- Input       : table_name - the name of table
    -- Output      : TRUE if given table is a staging table and is prepared
    ------------------------------------------------------------------------------------------
    FUNCTION is_prepared (table_name IN VARCHAR2) RETURN BOOLEAN AS
    BEGIN
        RETURN     is_staging_table(table_name)
               AND ddl.is_object_exists(table_name, 'SYNONYM')
               AND ddl.is_object_exists(staging.get_table_name(table_name, '$1'))
               AND ddl.is_object_exists(staging.get_table_name(table_name, '$2'));
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_staging_table
    -- Description : This function returns the staging table with given name.
    -- Input       : name - the name of staging table
    -- Output      : the staging table
    ------------------------------------------------------------------------------------------
    FUNCTION get_staging_table(name IN stagingtable.tablename%TYPE) RETURN stagingtable%ROWTYPE
    IS
        t stagingtable%ROWTYPE;
    BEGIN
        SELECT * INTO t FROM stagingtable WHERE tablename = upper(name);
        RETURN t;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_staging_initialized
    -- Description : This function returns TRUE if staging environment is initialized.
    -- Output      : TRUE if staging is initialized
    ------------------------------------------------------------------------------------------
    FUNCTION is_staging_initialized RETURN BOOLEAN
    IS
        staging_initialized NUMBER;
    BEGIN
        SELECT count(1) INTO staging_initialized
        FROM process WHERE name='StagingProcess' AND
                           (state='StagingInitialized' OR
                            state='StagingProcessCompleted');

        RETURN staging_initialized>0;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : cut_name
    -- Description : This function is used to cut the given name. Suffix like '_AV' or '_RA'
    --               are kept.
    -- Input       : name - the name to be cutted
    -- Output      : the cutted name
    ------------------------------------------------------------------------------------------
    FUNCTION cut_name(name IN VARCHAR2, max_length IN NUMBER DEFAULT MAX_TABLE_NAME_LENGTH) RETURN VARCHAR2
    IS
        cutted_name VARCHAR2(30);
        appendix    VARCHAR2(3) := substr(name, -3);
    BEGIN
        IF length(name)>max_length AND appendix LIKE '\___' ESCAPE '\' THEN
            -- cut in all cases the appendix and make sure remaining name is shorter than
            -- maximal table name length
            cutted_name := substr(name, 1, max_length-3);
        ELSE
            appendix := '';
            cutted_name := name;
        END IF;

        RETURN substr(cutted_name, 1, max_length)||appendix;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_table_name
    -- Description : This function returns the table name with given suffix. If table_name is
    --               larger than 20 character it will be cut. This function makes sure, that
    --               appendixes like '_AV' or '_RA' are not cutted.
    -- Input       : table_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               suffix the according suffix ($1, $2)
    -- Output      : the table name with given suffix (e.g. USERGROUPASSIGNME$1)
    ------------------------------------------------------------------------------------------
    FUNCTION get_table_name (table_name IN stagingtable.tablename%TYPE, suffix IN VARCHAR2)
        RETURN user_tables.table_name%TYPE IS
    BEGIN
        IF suffix IS NULL THEN
            RETURN table_name;
        ELSE
            RETURN cut_name(table_name)||suffix;
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : switch_suffix
    -- Description : This function is used to switch given synonym.
    -- Input       : currentSuffix - the current suffix
    -- Output      : the switch suffix
    ------------------------------------------------------------------------------------------
    FUNCTION switch_suffix(currentSuffix IN stagingtable.livetablenamesuffix%TYPE)
                           RETURN stagingtable.livetablenamesuffix%TYPE
    IS
    BEGIN
        IF currentSuffix = '$1' THEN
            RETURN '$2';
        ELSE
            RETURN '$1';
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_constraint_name
    -- Description : This function returns the constraint name with given suffix. If table_name is
    --               larger than maximum table name length it will be cut.
    -- Input       : constraint_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               aDstTableName the name of destination table
    -- Output      : the constraint name with given suffix (e.g. USERGROUPASSIGNME$1_CO001)
    ------------------------------------------------------------------------------------------
    FUNCTION get_constraint_name (constraint_name IN VARCHAR2, aDstTableName IN VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
        -- constraint names are build like index names
        RETURN get_index_name(constraint_name, aDstTableName);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_index_name
    -- Description : This function returns the index name with given suffix. If table_name is
    --               larger than maximum table name length it will be cut.
    -- Input       : index_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               aDstTableName the name of destination table
    -- Output      : the index name with given suffix (e.g. USERGROUPASSIGNME$1_FK001)
    ------------------------------------------------------------------------------------------
    FUNCTION get_index_name (index_name IN VARCHAR2, aDstTableName IN user_tables.table_name%TYPE)
        RETURN user_indexes.index_name%TYPE
    IS
        suffix VARCHAR2(2) := substr(aDstTableName, -2);
    BEGIN
        IF  substr(index_name, -2) LIKE '%$_' THEN
            -- remove $_ suffix and replace it by the table suffix
            RETURN substr(index_name, 0, length(index_name)-2)||suffix;
        ELSIF substr(index_name, -8) LIKE '_STR_VAL' THEN
            -- return <dsttable>_STR_VAL
            RETURN index_name||suffix;
        ELSIF index_name LIKE '%\_CTX\_%' ESCAPE '\' THEN
            -- return <dsttable>_CTX_EN_US
            RETURN index_name||suffix;
        -- begin bug #10592
        ELSIF substr(index_name, -6) LIKE '\_CK0__' ESCAPE '\' THEN
            -- return <dsttable>_CK001
            RETURN index_name||suffix;
        -- end bug
        ELSIF substr(index_name, -6) LIKE '\______' ESCAPE '\' THEN
            -- return <dsttable>_IE001
            RETURN aDstTableName||substr(index_name, -6);
        ELSIF length(index_name)>27 THEN
            -- cut index name and append table name suffix
            RETURN substr(index_name, 3)||suffix;
        ELSE
            -- take index_name and table suffix
            RETURN index_name||suffix;
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_index_name
    -- Description : This function returns the index name of given table.
    -- Input       : index_name - the original index name
    --               table_name - the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               suffix     - the suffix of destination table
    -- Output      : the index name with given suffix (e.g. USERGROUPASSIGNME$1_FK001)
    ------------------------------------------------------------------------------------------
    FUNCTION get_index_name (index_name IN VARCHAR2, table_name IN VARCHAR2, suffix IN VARCHAR2)
        RETURN VARCHAR2 IS
    BEGIN
        RETURN get_index_name(index_name, get_table_name(table_name, suffix));
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_tables
    -- Description : This function returns all shadow tables of given staging group.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_tables(aStagingGroupID IN staginggroup.uuid%TYPE) RETURN ddl.type_object_name_list
    AS
        names ddl.type_object_name_list;
    BEGIN
        SELECT staging.get_table_name(tablename, staging.switch_suffix(livetablenamesuffix))
        BULK COLLECT INTO names
          FROM staginggroup g JOIN stagingtable t ON (g.uuid=t.staginggroupid)
         WHERE g.uuid=aStagingGroupID;

        RETURN names;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_tables
    -- Description : This function returns all live tables of given staging group.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_tables(aStagingGroupID IN staginggroup.uuid%TYPE) RETURN ddl.type_object_name_list
    AS
        names ddl.type_object_name_list;
    BEGIN
        SELECT staging.get_table_name(tablename, livetablenamesuffix)
        BULK COLLECT INTO names
          FROM staginggroup g JOIN stagingtable t ON (g.uuid=t.staginggroupid)
         WHERE g.uuid=aStagingGroupID;

        RETURN names;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_table_refs
    -- Description : This function returns all foreign keys referencing the shadow tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_table_refs(aStagingGroupID IN staginggroup.uuid%TYPE)
        RETURN ddl.type_constraints
    AS
        shadow_tables ddl.type_object_name_list;
        fks           ddl.type_constraints := ddl.type_constraints();
        table_fks     ddl.type_constraints;
    BEGIN
        shadow_tables := get_shadow_tables(aStagingGroupID);

        IF shadow_tables.COUNT=0 THEN
            RETURN ddl.type_constraints();
        END IF;

        FOR i IN shadow_tables.FIRST..shadow_tables.LAST LOOP
            table_fks := ddl.get_references(shadow_tables(i));

            IF table_fks.COUNT>0 THEN
                FOR j IN table_fks.FIRST..table_fks.LAST LOOP
                    fks.EXTEND;
                    fks(fks.LAST) := table_fks(j);
                END LOOP;
            END IF;
        END LOOP;

        RETURN fks;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_table_refs
    -- Description : This function returns all foreign keys referencing the live tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_table_refs(aStagingGroupID IN staginggroup.uuid%TYPE)
        RETURN ddl.type_constraints
    AS
        live_tables   ddl.type_object_name_list;
        fks           ddl.type_constraints := ddl.type_constraints();
        table_fks     ddl.type_constraints;
    BEGIN
        live_tables := get_live_tables(aStagingGroupID);

        IF live_tables.COUNT=0 THEN
            RETURN ddl.type_constraints();
        END IF;

        FOR i IN live_tables.FIRST..live_tables.LAST LOOP
            table_fks := ddl.get_references(live_tables(i));

            IF table_fks.COUNT>0 THEN
                FOR j IN table_fks.FIRST..table_fks.LAST LOOP
                    fks.EXTEND;
                    fks(fks.LAST) := table_fks(j);
                END LOOP;
            END IF;
        END LOOP;

        RETURN fks;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_table_cons
    -- Description : This function returns all constraints of the shadow tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    --               aType           - the type of constraints
    -- Output      : a list of constraints
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_table_cons(aStagingGroupID IN staginggroup.uuid%TYPE, aType IN user_constraints.constraint_type%TYPE DEFAULT NULL)
        RETURN ddl.type_constraints
    AS
        shadow_tables ddl.type_object_name_list;
        cons          ddl.type_constraints := ddl.type_constraints();
        table_cons    ddl.type_constraints;
    BEGIN
        shadow_tables := get_shadow_tables(aStagingGroupID);

        IF shadow_tables.COUNT=0 THEN
            RETURN ddl.type_constraints();
        END IF;

        FOR i IN shadow_tables.FIRST..shadow_tables.LAST LOOP
            table_cons := ddl.get_constraints(shadow_tables(i), aType);

            IF table_cons.COUNT>0 THEN
                FOR j IN table_cons.FIRST..table_cons.LAST LOOP
                    cons.EXTEND;
                    cons(cons.LAST) := table_cons(j);
                END LOOP;
            END IF;
        END LOOP;

        RETURN cons;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_table_cons
    -- Description : This function returns all constraints of the live tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    --               aType           - defines the type of constraints
    -- Output      : a list of constraints
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_table_cons(aStagingGroupID IN staginggroup.uuid%TYPE, aType IN user_constraints.constraint_type%TYPE DEFAULT NULL)
        RETURN ddl.type_constraints
    AS
        live_tables ddl.type_object_name_list;
        cons          ddl.type_constraints := ddl.type_constraints();
        table_cons    ddl.type_constraints;
    BEGIN
        live_tables := get_live_tables(aStagingGroupID);

        IF live_tables.COUNT=0 THEN
            RETURN ddl.type_constraints();
        END IF;

        FOR i IN live_tables.FIRST..live_tables.LAST LOOP
            table_cons := ddl.get_constraints(live_tables(i), aType);

            IF table_cons.COUNT>0 THEN
                FOR j IN table_cons.FIRST..table_cons.LAST LOOP
                    cons.EXTEND;
                    cons(cons.LAST) := table_cons(j);
                END LOOP;
            END IF;
        END LOOP;

        RETURN cons;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : staging.switch_references
    -- Description : This procedure switches all foreign keys referencing staging tables
    --               belonging to staging group with given UUID.
    -- Input       : groupid   - the UUID of staging group
    -- Output      : none
    -- Example     : exec staging.switch_references('UBMKAB3MZfoAAAD0OymCGwAO')
    ------------------------------------------------------------------------------------------
    PROCEDURE switch_references(groupid IN staginggroup.uuid%TYPE)
    AS
        refs     ddl.type_constraints;
        ref_cols ddl.type_object_name_list;
        pk       ddl.type_constraint;
        pk_cols  ddl.type_object_name_list;
        name     user_tables.table_name%TYPE;
        suffix   VARCHAR2(2);
        st       stagingtable%ROWTYPE;
    BEGIN
        IF groupid IS NULL THEN
            logger.log('Mandatory input parameter ''groupid'' is null.');
            RETURN;
        END IF;

        logger.log('Switch all foreign keys referencing tables of staging group with uuid = '||groupid);

        refs := get_live_table_refs(groupid);
        IF refs.COUNT=0 THEN
            logger.log('Staging group "'||groupid||'" is not referenced by other tables.');
            RETURN;
        END IF;

        FOR i IN refs.FIRST..refs.LAST LOOP

            -- get columns of constraint
            ref_cols := ddl.get_cons_columns(refs(i).constraint_name);

            -- get referenced primary key
            pk := ddl.get_constraint(refs(i).r_constraint_name);
            pk_cols := ddl.get_cons_columns(pk.constraint_name);

            -- get current referenced live table
            SELECT * INTO st FROM stagingtable WHERE get_table_name(tablename, livetablenamesuffix)=pk.table_name;

            -- switch references to future live tables
            suffix := substr(pk.table_name, -2);
            name := get_table_name(st.tablename, switch_suffix(st.livetablenamesuffix));

            -- drop old constraint and create same constraint to future live table
            sql_util.execute('ALTER TABLE '||refs(i).table_name||' DROP CONSTRAINT '||refs(i).constraint_name);
            sql_util.execute('ALTER TABLE '||refs(i).table_name||' ADD CONSTRAINT '||refs(i).constraint_name||
                             ' FOREIGN KEY ('||ddl.to_string(ref_cols)||
                             ') REFERENCES '||name||' ('||ddl.to_string(pk_cols)||
                             ') INITIALLY DEFERRED DEFERRABLE ENABLE NOVALIDATE');
        END LOOP;
    END;

    -----------------------------------------------------------------------------------------
    -- Name        : staging.switch_synonyms
    -- Description : This procedure switches all synonyms of staging tables belonging to
    --               staging group with given UUID.
    -- Input       : groupid   - the UUID of staging group
    -- Output      : none
    -- Example     : exec sp_switch_synonyms('UBMKAB3MZfoAAAD0OymCGwAO')
    ------------------------------------------------------------------------------------------
    PROCEDURE switch_synonyms(groupid IN staginggroup.uuid%TYPE)
    AS
        synonyms ddl.type_object_name_list;
    BEGIN
        IF groupid IS NULL THEN
            logger.log('Mandatory input parameter ''groupid'' is null.');
            RETURN;
        END IF;

        logger.log('Switch all synonyms belonging to staging group with uuid = '||groupid);

        SELECT tablename BULK COLLECT INTO synonyms
          FROM stagingtable WHERE preparationflag=1 AND staginggroupid=groupid;

        switch_synonyms_of_list(synonyms);
    END;

    -----------------------------------------------------------------------------------------
    -- Name        : staging.create_synonyms
    -- Description : This procedure switches all synonyms returned by given query for
    --               staging gropu with given identifier.
    -- Input       : query     - the query returning the synonym name and new table name
    --               groupid   - the UUID of staging group
    -- Output      : none
    ------------------------------------------------------------------------------------------
    PROCEDURE create_synonyms(query IN VARCHAR2, groupid IN staginggroup.uuid%TYPE)
    AS
        aSynonymName user_synonyms.synonym_name%TYPE;
        aTableName   user_synonyms.table_name%TYPE;
        tables   ddl.type_object_name_list;
        TYPE t_ref_cursor IS REF CURSOR;
        cur  t_ref_cursor;
    BEGIN
        IF query IS NULL THEN
            logger.log('Mandatory input parameter "query" is null.');
            RETURN;
        END IF;

        IF groupid IS NULL THEN
            logger.log('Mandatory input parameter "groupid" is null.');
            RETURN;
        END IF;

        OPEN cur FOR query USING groupid;
        LOOP
            FETCH cur INTO aSynonymName, aTableName;
            EXIT WHEN cur%NOTFOUND;

            create_synonym(aSynonymName, aTableName);

        END LOOP;
        CLOSE cur;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : restore_synonyms
    -- Description : This procedure restores all synonyms of staging tables belonging to
    --               staging group with given UUID.
    -- Input       : groupid   - the UUID of staging group
    -- Example     : exec staging.restore_synonyms('UBMKAB3MZfoAAAD0OymCGwAO')
    ------------------------------------------------------------------------------------------
    PROCEDURE restore_synonyms (groupid IN staginggroup.uuid%TYPE) AS
        synonyms   ddl.type_object_name_list;
        tablenames ddl.type_object_name_list;
    BEGIN
        IF groupid IS NULL THEN
            logger.log('Mandatory input parameter ''groupid'' is null.');
            RETURN;
        END IF;

        logger.log('Switch all synonyms belonging to staging group with uuid = '||groupid);

        SELECT t.tablename, t.livetablename BULK COLLECT INTO synonyms, tablenames
          FROM (SELECT tablename, staging.get_table_name(tablename, livetablenamesuffix) livetablename FROM stagingtable WHERE preparationflag=1 AND staginggroupid=groupid) t
          LEFT OUTER JOIN user_synonyms s ON (t.tablename=s.synonym_name)
         WHERE s.table_name IS NULL OR s.table_name<>t.livetablename;

        create_synonyms_of_list(synonyms, tablenames);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : restore_synonyms
    -- Description : This procedure restores all synonyms.
    -- Example     : exec staging.restore_synonyms
    ------------------------------------------------------------------------------------------
    PROCEDURE restore_synonyms AS
        synonyms   ddl.type_object_name_list;
        tablenames ddl.type_object_name_list;
    BEGIN
        logger.log('Restoring all synonyms...');

        SELECT t.tablename, t.livetablename BULK COLLECT INTO synonyms, tablenames
          FROM (SELECT tablename, staging.get_table_name(tablename, livetablenamesuffix) livetablename FROM stagingtable WHERE preparationflag=1) t
          LEFT OUTER JOIN user_synonyms s ON (t.tablename=s.synonym_name)
         WHERE s.table_name IS NULL OR s.table_name<>t.livetablename;

        create_synonyms_of_list(synonyms, tablenames);

        logger.log('Restoring all synonyms...Ok!');
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : revoke_live_user_privs
    -- Description : It revokes some object privileges of editing system from user of
    --               live system.
    -- Input       : the schema name of live system user
    -- Output      : none
    -- Example     : exec staging.revoke_live_user_privs ('LIVE_USER')
    ------------------------------------------------------------------------------------------
    PROCEDURE revoke_live_user_privs( schema_name IN VARCHAR2) AS
    BEGIN
        handle_live_user_privs(schema_name, FALSE);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : grant_live_user_privs
    -- Description : It grants some object privileges of editing system to user of
    --               live system.
    -- Input       : the schema name of live system user
    -- Output      : none
    -- Example     : exec staging.grant_live_user_privs ('LIVE_USER')
    ------------------------------------------------------------------------------------------
    PROCEDURE grant_live_user_privs( schema_name IN VARCHAR2) AS
    BEGIN
        handle_live_user_privs(schema_name, TRUE);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : sync_live_with_editing_process
    -- Description : This procedure is used to synchronize the live with editing process.
    -- Input       : schema_name - the schema name of editing user or
    --               db_link     - database link to editing database
    -- Output      : none
    -- Example     : exec staging.sync_live_with_editing_process('EDIT_USER', null) or
    --               exec staging.sync_live_with_editing_process(null, 'ISEDITING') or
    ------------------------------------------------------------------------------------------
    PROCEDURE sync_live_with_editing_process(schema_name IN VARCHAR2, db_link IN VARCHAR2 )
    AS
        TYPE cur_type IS REF CURSOR;
        cur cur_type;
        p process%ROWTYPE;
        
        PROCEDURE close_db_link(db_link IN VARCHAR2)
        AS
          BEGIN
            IF db_link IS NOT NULL AND length(db_link)>0 THEN
              dbms_session.close_database_link(db_link);
            END IF;
          END;
    
    BEGIN
        
        OPEN cur FOR 'SELECT e.* FROM process l, '||get_editing_object('process', schema_name, db_link)||
                     ' e WHERE e.uuid = l.uuid AND e.enddate IS NOT NULL AND l.enddate IS NULL';
        LOOP
            FETCH cur INTO p;
            EXIT WHEN cur%NOTFOUND;

            UPDATE process SET enddate = p.enddate, state=p.state WHERE uuid=p.uuid;
            UPDATE stagingprocesscomponent SET state=p.state WHERE stagingprocessid=p.uuid;
        END LOOP;
        CLOSE cur;
        COMMIT;
        close_db_link(db_link); 
        
        EXCEPTION
          WHEN OTHERS
          THEN
               close_db_link(db_link);
               RAISE;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : insert_into
    -- Description : inserts given content into given table. Depending on table is a staging table
    --               the insert statement will be performed in $1/$2 table.
    -- Input       : table_name - name of table
    --               insert_clause - the insert clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.insert_into('DOMAININFORMATION', '(domainid, domainname) VALUES (''afsfffds'', ''aDomain'')')
    ------------------------------------------------------------------------------------------
    PROCEDURE insert_into(table_name IN VARCHAR2, insert_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0) AS
    BEGIN
        execute('INSERT INTO', table_name, insert_clause, ignoreErrorCode);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : delete_from
    -- Description : deletes content from given table. Depending on table is a staging table
    --               the delete statement will be performed for both $1/$2 table.
    -- Input       : table_name - name of table
    --               delete_clause - the delete clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.delete_from('DOMAININFORMATION', 'WHERE uuid=''asdfsadfsdf''')
    ------------------------------------------------------------------------------------------
    PROCEDURE delete_from(table_name IN VARCHAR2, delete_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0) AS
    BEGIN
        execute('DELETE FROM', table_name, delete_clause, ignoreErrorCode);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : update_table
    -- Description : updates given content in given table. Depending on table is a staging table
    --               the update statement will be performed in $1/$2 table.
    -- Input       : table_name - name of table
    --               update_clause - the update clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.update_table('DOMAININFORMATION', 'SET domainname=''aname'' WHERE uuid=''asdfsadfsdf''')
    ------------------------------------------------------------------------------------------
    PROCEDURE update_table(table_name IN VARCHAR2, update_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0) AS
    BEGIN
        execute('UPDATE', table_name, update_clause, ignoreErrorCode);
    END;
END staging;
/

show errors;

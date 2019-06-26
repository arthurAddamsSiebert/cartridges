CREATE OR REPLACE PACKAGE BODY ddl IS

    ------------------------------------------------------------------------------------------
    -- Name        : get_domainid
    -- Description : Returns the domainid for domain with given name
    -- Input       : aDomainName - a domain name
    -- Output      : The domain identifier of domain with given name.
    ------------------------------------------------------------------------------------------
    FUNCTION get_domainid (aDomainName IN VARCHAR2) RETURN VARCHAR2
    AS
        aDomainID VARCHAR2(30);
    BEGIN
        EXECUTE IMMEDIATE 'SELECT domainid FROM domaininformation WHERE domainname=:domainName' INTO aDomainID USING aDomainName;
        RETURN aDomainID;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_string_preference
    -- Description : Returns the string value of given preference.
    -- Input       : aName       - the preference name
    --               aDomainName - a domain name
    -- Output      : The value of given preference.
    ------------------------------------------------------------------------------------------
    FUNCTION get_string_preference (aName IN VARCHAR2, aDomainName IN VARCHAR2) RETURN VARCHAR2
    AS
        aValue VARCHAR2(50);
        aDomainID VARCHAR2(30);
    BEGIN
      aDomainID := get_domainid(aDomainName);
        EXECUTE IMMEDIATE 'SELECT stringvalue FROM preference WHERE preferencename=:aName AND domainid=:aDomainID' INTO aValue USING aName, aDomainID;
        RETURN aValue;
    EXCEPTION
      WHEN no_data_found THEN
        RETURN NULL;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : set_string_preference
    -- Description : Sets a new string preference.
    -- Input       : aName       - name of preference
    --               aDomainName - a domain name
    --               aValue      - new value of preference
    ------------------------------------------------------------------------------------------
    PROCEDURE set_string_preference (aName IN VARCHAR2, aDomainName IN VARCHAR2, aValue IN VARCHAR2)
    AS
        aDomainID VARCHAR2(30) := get_domainid(aDomainName);
    BEGIN
        EXECUTE IMMEDIATE 'UPDATE preference SET stringvalue = :aValue WHERE preferencename = :aName AND domainid = :aDomainID'
            USING aValue, aName, aDomainID;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : to_string
    -- Description : Returns string representation of object list
    -- Input       : none
    -- Output      : string representation of given object name list
    ------------------------------------------------------------------------------------------
    FUNCTION to_string(objects IN type_object_name_list) RETURN VARCHAR2
    AS
        str VARCHAR2(4000) := NULL;
    BEGIN
        IF objects IS NULL THEN
            logger.log('objects are null');
        ELSIF objects.COUNT=0 THEN
            logger.log('no objects found.');
            RETURN NULL;
        ELSE
            FOR i IN objects.FIRST..objects.LAST LOOP
                str := str ||','||objects(i);
            END LOOP;
        END IF;

        RETURN substr(str, 2);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_cons_columns_str
    -- Description : This function returns the comma separated list of constraints columns
    -- Input       : the prefix before each column name
    -- Output      : the constraints columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_cons_columns_str(p IN VARCHAR2 DEFAULT '') RETURN VARCHAR2 IS
    BEGIN
        RETURN p||'OWNER, '||p||'CONSTRAINT_NAME, '||p||'CONSTRAINT_TYPE, '||p||'TABLE_NAME, '||p||'R_OWNER, '
             ||p||'R_CONSTRAINT_NAME, '||p||'DELETE_RULE, '||p||'STATUS, '||p||'DEFERRABLE, '
             ||p||'DEFERRED, '||p||'VALIDATED, '||p||'GENERATED, '||p||'BAD, '||p||'RELY, '
             ||p||'LAST_CHANGE, '||p||'INDEX_OWNER, '||p||'INDEX_NAME, '||p||'INVALID, '
             ||p||'VIEW_RELATED';
    END;

    ------------------------------------------------------------------------
    -- Name        : create_constraints_list
    -- Description : This method returns a list of object names returned
    --               by given query.
    -- Input       : query     - the object name query
    --               bindValue - a bind value
    -- Output      : the list of object names
    ------------------------------------------------------------------------
    FUNCTION create_object_name_list (query IN VARCHAR2, bindValue IN VARCHAR2 DEFAULT NULL) RETURN type_object_name_list
    AS
        TYPE t_ref_cursor IS REF CURSOR;
        cur t_ref_cursor;
        objects type_object_name_list;
        o user_objects.object_name%TYPE;
    BEGIN
        objects := type_object_name_list();
        IF bindValue IS NULL THEN
            OPEN cur FOR query;
        ELSE
            OPEN cur FOR query USING bindValue;
        END IF;
        LOOP
            FETCH cur INTO o;
            EXIT WHEN cur%NOTFOUND;

            objects.EXTEND;
            objects(objects.LAST) := o;
        END LOOP;

        RETURN objects;
    END;

    ------------------------------------------------------------------------
    -- Name        : create_constraints_list
    -- Description : This method returns a list of constraints returned
    --               by given query.
    -- Input       : query     - the constraint query
    --               bindValue - a bind value
    -- Output      : the list of constraints
    ------------------------------------------------------------------------
    FUNCTION create_constraints_list (query IN VARCHAR2, bindValue IN VARCHAR2 DEFAULT NULL) RETURN type_constraints
    AS
        TYPE t_ref_cursor IS REF CURSOR;
        cur t_ref_cursor;
        constraints type_constraints;
        c type_constraint;
    BEGIN
        constraints := type_constraints();
        IF bindValue IS NULL THEN
            OPEN cur FOR query;
        ELSE
            OPEN cur FOR query USING bindValue;
        END IF;
        LOOP
            FETCH cur INTO c;
            EXIT WHEN cur%NOTFOUND;

            constraints.EXTEND;
            constraints(constraints.LAST) := c;
        END LOOP;

        RETURN constraints;
    END;

    ------------------------------------------------------------------------
    -- Name        : get_staging_fk_constraints
    -- Description : This method returns all foreign keys referencing staging tables.
    -- Output      : the list of all foreign keys
    ------------------------------------------------------------------------
    FUNCTION get_staging_fk_constraints (prefix IN VARCHAR2 DEFAULT '') RETURN type_constraints
    AS
    BEGIN
        RETURN create_constraints_list(
            'SELECT '||get_cons_columns_str()||' FROM '||
            prefix||'user_constraints WHERE constraint_type IN (''R'', ''U'', ''P'') '||
            'AND (table_name LIKE ''%$1'' OR table_name LIKE ''%$2'')', null);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_recyclebin
    -- Description : This function returns TRUE if 10g recyclebin is present, else FALSE.
    -- Input       : none
    -- Output      : TRUE if recyclebin exists, else FALSE
    ------------------------------------------------------------------------------------------
    FUNCTION is_recyclebin RETURN BOOLEAN
    IS
        i INTEGER;
    BEGIN
        SELECT COUNT(*) INTO i FROM dictionary WHERE table_name = 'USER_RECYCLEBIN';
        RETURN i>0;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_synonym
    -- Description : This function returns true if given object is an synonym.
    -- Input       : objectName - the object name
    -- Output      : true if given object is a synonym
    ------------------------------------------------------------------------------------------
    FUNCTION is_synonym(objectName IN user_synonyms.synonym_name%TYPE) RETURN BOOLEAN
    AS
        i NUMBER(1);
    BEGIN
        SELECT COUNT(*) INTO i FROM user_synonyms WHERE synonym_name = UPPER(objectName);
        RETURN i>0;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_object_exists
    -- Description : This function returns TRUE if given object exists.
    -- Input       : objectName - the object name
    -- Input       : objectType - the object type or null
    -- Output      : TRUE if given object of type exists.
    ------------------------------------------------------------------------------------------
    FUNCTION is_object_exists(objectName IN user_objects.object_name%TYPE,
                              objectType IN user_objects.object_type%TYPE DEFAULT NULL)
        RETURN BOOLEAN
    IS
        aCnt NUMBER;
    BEGIN
        IF objectType IS NULL THEN
            SELECT COUNT(*) INTO aCnt FROM user_objects WHERE object_name = UPPER(objectName);
        ELSE
            SELECT COUNT(*) INTO aCnt FROM user_objects WHERE object_name = UPPER(objectName) AND object_type = UPPER(objectType);
        END IF;
        RETURN aCnt > 0;
    END;

    ------------------------------------------------------------------------
    -- Name        : get_constraints
    -- Description : This method returns all constraints of a given table.
    -- Input       : aTableName - the name of table
    --               aType      - the type of constraints (defautl is null, means all)
    --               prefix     - prefix of constraints cache tables
    -- Output      : the list of all constraints belonging to given table
    ------------------------------------------------------------------------
    FUNCTION get_constraints(aTableName IN user_tables.table_name%TYPE,
                             aType IN user_constraints.constraint_type%TYPE DEFAULT NULL,
                             prefix IN VARCHAR2 DEFAULT '')
        RETURN type_constraints
    AS
        query VARCHAR2(1000) :=
            'SELECT '||get_cons_columns_str()||
            ' FROM '||prefix||'user_constraints'||
            ' WHERE table_name';
    BEGIN
        IF is_synonym(aTableName) THEN
            query := query || ' IN (SELECT table_name FROM user_synonyms WHERE synonym_name=UPPER(:aTableName))';
        ELSE
            query := query || '=UPPER(:aTableName)';
        END IF;

        IF aType IS NOT NULL THEN
            query := query || ' AND constraint_type='''||aType||'''';
        END IF;

        RETURN create_constraints_list(query, UPPER(aTableName));
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : migrate_constraint
    -- Description : This procedure is used to add a constraint on a table with given name.
    --               If the constraint exists per name and list of columns, it will be dropped before.
    -- Input       : aTableName      - the name of table
    --               aConstraintName - the name of constraint
    --               clause          - the constraint clause
    -- Example     : exec ddl.migrate_constraint('BASICADDRESS', 'BASICADDRESS_CO001', 'FOREIGN KEY (domainid) REFERENCES domain(uuid)')
    ------------------------------------------------------------------------------------------
    PROCEDURE migrate_constraint(aTableName      IN user_objects.object_name%TYPE,
                                 aConstraintName IN user_objects.object_name%TYPE,
                                 clause          IN VARCHAR2)
    AS
        cnt INTEGER;

        l_cons_name_byCols user_objects.object_name%TYPE := NULL;
        l_cons_name_byName user_objects.object_name%TYPE := UPPER(aConstraintName);
        l_table_name       user_objects.object_name%TYPE := UPPER(aTableName);

        -- helper get column name list as string
        FUNCTION get_column_name_list_as_str (column_name_list IN type_column_name_list)
            RETURN VARCHAR2
        AS
            column_list VARCHAR2(500);
            column_list_sep VARCHAR2(1);
        BEGIN
            FOR i IN column_name_list.FIRST..column_name_list.LAST LOOP
                column_list := column_list || column_list_sep || column_name_list(i);
                column_list_sep := ',';
            END LOOP;
            RETURN column_list;
        END;

        -- helper get column name list from the clause string
        FUNCTION get_column_name_list (clause IN VARCHAR2)
            RETURN type_column_name_list
        AS
            column_name_list type_column_name_list := type_column_name_list();
            sep_list varchar2(2000);
            sep_list_len number;
            out_tab dbms_utility.uncl_array;
        BEGIN
            sep_list := SUBSTR(clause,
                               INSTR(clause, '(') + 1,
                               INSTR(clause, ')') - INSTR(clause, '(') - 1);

            dbms_utility.comma_to_table(sep_list, sep_list_len, out_tab);

            FOR i IN out_tab.FIRST.. out_tab.LAST-1 LOOP -- last value: NULL
                column_name_list.EXTEND;
                column_name_list(column_name_list.LAST) := UPPER(LTRIM(RTRIM(out_tab(i))));
            END LOOP;

            RETURN column_name_list;
        END;

    BEGIN

        -- determine fk constraint by name
        -- if exits, drop it
        SELECT count(*) INTO cnt FROM user_constraints WHERE constraint_name = l_cons_name_byName;
        IF cnt>0 THEN
            sql_util.executeDDL('ALTER TABLE '||l_table_name||' DROP CONSTRAINT '||l_cons_name_byName, -2443);
        END IF;

        -- determine fk constraint for given column list
        -- if exits, drop it
        l_cons_name_byCols := ddl.get_fk_const_by_tab_col_names(l_table_name, get_column_name_list(clause));
        IF l_cons_name_byCols IS NOT NULL THEN
            sql_util.executeDDL('ALTER TABLE '||l_table_name||' DROP CONSTRAINT '||l_cons_name_byCols, -2443);
        END IF;

        -- add the new constraint
        sql_util.executeDDL('ALTER TABLE '||l_table_name||'  ADD CONSTRAINT '||l_cons_name_byName||' '||clause);

    END;

    ------------------------------------------------------------------------
    -- Name        : get_indexes
    -- Description : This method returns all indexes of a given table.
    -- Input       : aTableName - the name of table
    -- Output      : the list of all indexes belonging to given table
    ------------------------------------------------------------------------
    FUNCTION get_indexes(aTableName IN user_tables.table_name%TYPE, prefix IN VARCHAR2 DEFAULT '')
        RETURN type_object_name_list
    AS
        query VARCHAR2(1000) := 'SELECT index_name FROM '||prefix||'user_indexes WHERE table_name';
    BEGIN
        IF is_synonym(aTableName) THEN
            query := query || ' IN (SELECT table_name FROM user_synonyms WHERE synonym_name=UPPER(:aTableName))';
        ELSE
            query := query || '=UPPER(:aTableName)';
        END IF;
        RETURN create_object_name_list(query, aTableName);
    END;


    ------------------------------------------------------------------------
    -- Name        : get_index_columns
    -- Description : This method returns a comma separated string of columns
    --               belonging to given index.
    -- Input       : aIndexName - the name of index
    --               prefix     - prefix of cached dict views
    -- Output      : the columns of index
    ------------------------------------------------------------------------
    FUNCTION get_index_columns (aIndexName IN user_indexes.index_name%TYPE,
                                prefix IN VARCHAR2 DEFAULT '') RETURN VARCHAR2
    AS
        cur_cols type_object_name_list;
        col_list VARCHAR2(1000);
    BEGIN
        EXECUTE IMMEDIATE 'SELECT column_name FROM '||prefix||'user_ind_columns '||
                          'WHERE index_name=:aIndexName ORDER BY column_position'
                          BULK COLLECT INTO cur_cols
                          USING upper(aIndexName);

        IF cur_cols.COUNT=0 THEN
            RETURN NULL;
        ELSE
            RETURN to_string(cur_cols);
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : migrate_index
    -- Description : This procedure is used to migrate an index for a table.
    -- Input       : aIndexName  - the index name
    --               aTableName  - the name of table or (for staging) the synonym name
    --               aColumnsDef - the list of indexed columns
    --               aTableSpace  - the tablespace of index
    --               uniqueness  - uniqueness of index, values UNIQUE or NONUNIQUE, default is NONUNIQUE
    --               prefix     - prefix of cached dict views
    -- Example     : exec ddl.migrate_index('ServiceLineItem_FK003', 'ServiceLineItem', '(lineItemGroupID)', 'IS_INDX', 'NONUNIQUE')
    ------------------------------------------------------------------------------------------
    PROCEDURE migrate_index(aIndexName  IN user_indexes.index_name%TYPE,
                            aTableName  IN VARCHAR2,
                            aColumnsDef IN VARCHAR2,
                            aTableSpace IN VARCHAR2,
                            uniqueness  IN VARCHAR2 DEFAULT 'NONUNIQUE',
                            prefix IN VARCHAR2 DEFAULT '')
    AS
        i        user_indexes%ROWTYPE;
        def        VARCHAR2(200);
        idx_unique VARCHAR2(20) := uniqueness;

        PROCEDURE drop_index(i IN VARCHAR2) AS
        BEGIN
            sql_util.executeDDL('DROP INDEX '||i, -1418);
            IF prefix IS NOT NULL THEN
              EXECUTE IMMEDIATE 'DELETE FROM '||prefix||'user_indexes WHERE index_name=:i' USING i;
              EXECUTE IMMEDIATE 'DELETE FROM '||prefix||'user_ind_columns WHERE index_name=:i' USING i;
              COMMIT;
            END IF;
        END;

        PROCEDURE rename_index(fromIndex IN VARCHAR2, toIndex IN VARCHAR2)
        AS
        BEGIN
            sql_util.executeDDL('DROP INDEX '||toIndex, -1418);
            sql_util.executeDDL('ALTER INDEX '||fromIndex||' RENAME TO '||toIndex);
            IF prefix IS NOT NULL THEN
              EXECUTE IMMEDIATE 'UPDATE '||prefix||'user_indexes SET index_name=:toIndex WHERE index_name=:fromIndex' USING toIndex, fromIndex;
              EXECUTE IMMEDIATE 'UPDATE '||prefix||'user_ind_columns SET index_name=:toIndex WHERE index_name=:fromIndex' USING toIndex, fromIndex;
              COMMIT;
            END IF;
        END;

        PROCEDURE execute(stmt IN VARCHAR2)
        AS
            ret INTEGER;
        BEGIN
            sql_util.executeDDL(stmt, -1);
        EXCEPTION
            WHEN OTHERS THEN
                IF SQLCODE=-01408 THEN
                    logger.log('Already indexes: '||stmt);
                ELSE
                    RAISE;
                END IF;
        END;

    BEGIN
        IF aTableSpace IS NOT NULL THEN
            def := ' '||aColumnsDef||' TABLESPACE '||aTableSpace;
        ELSE
            def := ' '||aColumnsDef;
        END IF;

        IF upper(uniqueness)<>'UNIQUE' THEN
            idx_unique := NULL;
        END IF;

        EXECUTE IMMEDIATE 'SELECT * FROM '||prefix||'user_indexes'||
                          ' WHERE table_name=:aTableName'||
                          ' AND ''(''||ddl.get_index_columns(index_name)||'')''=:def'||
						  ' AND index_type=''NORMAL'''
                          INTO i
                          USING upper(aTableName), upper(replace(aColumnsDef, ' ', ''));

        IF i.index_name LIKE 'SYS\_%' ESCAPE '\' THEN

            logger.log('Do not overwrite system index '||i.index_name||' on table '||i.table_name||'. Proceed.');

        ELSIF i.index_name=upper(aIndexName) AND i.uniqueness=uniqueness AND i.tablespace_name=upper(aTableSpace) THEN

            -- index has not been changed
            logger.log(aIndexName||' already exists. Proceed.');
            RETURN;

        ELSIF i.index_name<>upper(aIndexName) AND i.uniqueness=upper(uniqueness) AND i.tablespace_name=upper(aTableSpace) THEN

            -- index name has been changed
            drop_index(aIndexName);
            rename_index(i.index_name, aIndexName);

        ELSE

            -- drop old index
            drop_index(i.index_name);

            -- create the new one
            sql_util.executeDDL('CREATE '|| idx_unique ||' INDEX '||aIndexName||' ON '||aTableName||def, -955);

        END IF;

    EXCEPTION
        WHEN no_data_found THEN

            -- drop old index
            drop_index(aIndexName);

            -- create new index
            sql_util.executeDDL('CREATE '|| idx_unique ||' INDEX '||aIndexName||' ON '||aTableName||def, -01408);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : create_ctx_index
    -- Description : This procedure is used to create a context index.
    -- Input       : aIndexName  - the index name
    --               aTableName  - the name of table or (for staging) the synonym name
    --               aColumnName - the name of column
    --               parameters  - the parameters string of context index (optional)
    --               paraMemory  - the memory parameter string of context index (optional)
    --               doRecreate  - if the old index should be dropped before
    --               parallel    - parallel degree
    -- Example     : exec ddl.create_ctx_index('DOMAIN_AV_STR_VAL', 'DOMAIN_AV', 'stringvalue')
    ------------------------------------------------------------------------------------------
    PROCEDURE create_ctx_index(aIndexName  IN user_indexes.index_name%TYPE,
                               aTableName  IN VARCHAR2,
                               aColumnName IN VARCHAR2,
                               parameters  IN VARCHAR2 DEFAULT 'Lexer Enfinity_Lexer Wordlist Enfinity_Wordlist Storage Enfinity_Storage',
                               paraMemory  IN VARCHAR2 DEFAULT 'Memory 250M',
                               doRecreate  IN BOOLEAN DEFAULT TRUE,
                               parallel    IN NUMBER DEFAULT 2)
    AS
        cnt INTEGER;
    BEGIN
        IF doRecreate THEN
            -- drop old index
            sql_util.executeDDL('DROP INDEX '||aIndexName||' FORCE', -1418);
        END IF;

        SELECT count(*) INTO cnt FROM ctx_user_indexes WHERE idx_name=upper(aIndexName);
        IF cnt=0 THEN
            -- create the new one
            sql_util.executeDDL('CREATE INDEX '||aIndexName||' ON '||
                                aTableName||'('||aColumnName||') '||
                                'INDEXTYPE IS ctxsys.context '||
                                'PARAMETERS ('''||paraMemory||' '||parameters||''') ' ||
                                'PARALLEL ' || parallel, 0);
        ELSE
            logger.log(aIndexName||' already exists.');
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_ctx_indexes
    -- Description : This procedure is used to drop all indexes of a table.
    -- Input       : aTableName  - the name of table
    -- Example     : exec ddl.drop_ctx_indexes('DOMAIN_AV')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_ctx_indexes(aTableName  IN VARCHAR2) AS
    BEGIN
        FOR i IN (SELECT idx_name FROM ctx_user_indexes WHERE idx_table=upper(aTableName)) LOOP
            sql_util.executeDDL('DROP INDEX '||i.idx_name||' FORCE', -1418);
        END LOOP;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_all_ctx_indexes
    -- Description : This procedure is used to drop all indexes in current schema.
    -- Example     : exec ddl.drop_all_ctx_indexes()
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_all_ctx_indexes AS
    BEGIN
        FOR i IN (SELECT idx_name FROM ctx_user_indexes) LOOP
            sql_util.executeDDL('DROP INDEX '||i.idx_name||' FORCE', -1418);
        END LOOP;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_constraint
    -- Description : This function returns the constraint with given name.
    -- Input       : aConstraintName
    -- Output      : the constraint
    ------------------------------------------------------------------------------------------
    FUNCTION get_constraint(aConstraintName IN user_constraints.constraint_name%TYPE,
                            prefix IN VARCHAR2 DEFAULT '')
        RETURN type_constraint
    IS
        c type_constraint;
    BEGIN
        EXECUTE IMMEDIATE 'SELECT '||get_cons_columns_str()||' FROM '||prefix||'user_constraints WHERE constraint_name=:name'
            INTO c USING aConstraintName;
        RETURN c;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_fk_const_by_tab_col_names
    -- Description : This function returns the fk constraint for given tablename
    --               and given position sorted column list.
    -- Input       : aTableName
    -- Input       : aColumnNameList
    -- Output      : the constraint name
    ------------------------------------------------------------------------------------------
    FUNCTION get_fk_const_by_tab_col_names(aTableName      IN user_constraints.table_name%TYPE,
                                           aColumnNameList IN type_column_name_list,
                                           prefix          IN VARCHAR2 DEFAULT '')
        RETURN user_constraints.constraint_name%TYPE
    IS
        constraint_name user_constraints.constraint_name%TYPE;
        bind_column_list VARCHAR2(500);
        column_list_sep  VARCHAR2(2);
        cur              INTEGER;
        ret              INTEGER;
        query            VARCHAR2(2000) :=
            '  SELECT ucc.constraint_name AS constraint_name' ||
            '    FROM user_constraints uc' ||
            '    JOIN user_cons_columns ucc ON (uc.table_name = ucc.table_name AND uc.constraint_name = ucc.constraint_name)' ||
            '   WHERE uc.table_name = :table_name' ||
            '     AND uc.constraint_type = ''R'''||
            '     AND (ucc.column_name, ucc.position) IN (_bind_column_pos_list) ' ||
            'GROUP BY ucc.constraint_name HAVING COUNT(*) = :pos_count';

    BEGIN

        IF aTableName IS NULL OR aColumnNameList.COUNT=0 THEN
            RETURN NULL;
        END IF;

        -- dynamic bind column position list
        FOR i IN aColumnNameList.FIRST..aColumnNameList.LAST LOOP
            bind_column_list := bind_column_list || column_list_sep || '(:col'||i||', :pos'||i||')';
            column_list_sep := ', ';
        END LOOP;

        -- insert dynamic bind column position list into query
        query := replace(query, '_bind_column_pos_list', bind_column_list);

        -- open/parse
        cur := dbms_sql.open_cursor;
        dbms_sql.parse(cur, query, dbms_sql.native);

        -- bind column position values
        FOR i IN aColumnNameList.FIRST..aColumnNameList.LAST LOOP
            dbms_sql.bind_variable (cur, ':col'||i, aColumnNameList(i));
            dbms_sql.bind_variable (cur, ':pos'||i, i);
        END LOOP;

        -- bind tablename and position count
        dbms_sql.bind_variable (cur, ':table_name', aTableName);
        dbms_sql.bind_variable (cur, ':pos_count', aColumnNameList.COUNT);

        -- define result column
        dbms_sql.define_column (cur, 1, constraint_name, 30);

        -- exec
        ret := dbms_sql.execute (cur);

        -- fetch
        LOOP
            EXIT WHEN dbms_sql.fetch_rows (cur) = 0;
            dbms_sql.column_value (cur, 1, constraint_name);
        END LOOP;

        dbms_sql.close_cursor (cur);

        RETURN constraint_name;

    EXCEPTION
        WHEN OTHERS THEN
            IF dbms_sql.is_open (cur) THEN
                dbms_sql.close_cursor (cur);
            END IF;
            RAISE;
    END;

    ------------------------------------------------------------------------
    -- Name        : get_cartridge_foreign_keys
    -- Description : This method returns all constraints belonging to given
    --               cartridge.
    -- Input       : cartridge - the name of cartridge
    -- Output      : the list of all constraints belonging to given cartridge
    ------------------------------------------------------------------------
    FUNCTION get_cartridge_foreign_keys(cartridge IN VARCHAR2, prefix IN VARCHAR2 DEFAULT '') RETURN type_constraints
    AS
        query VARCHAR2(1000) :=
            'SELECT '||get_cons_columns_str('c.')||' FROM '||prefix||'user_constraints c, user_tab_comments t '||
            'WHERE c.table_name = t.table_name AND c.constraint_type=''R'' AND t.comments=:cartridge';
    BEGIN
        RETURN create_constraints_list(query, cartridge);
    END;

    ------------------------------------------------------------------------
    -- Name        : get_all_foreign_keys
    -- Description : This method returns all foreign keys.
    -- Output      : the list of all foreign keys
    ------------------------------------------------------------------------
    FUNCTION get_all_foreign_keys (prefix IN VARCHAR2 DEFAULT '') RETURN type_constraints
    AS
    BEGIN
        RETURN create_constraints_list(
            'SELECT '||get_cons_columns_str()||' FROM '||
            prefix||'user_constraints WHERE constraint_type=:type', 'R');
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_references
    -- Description : This function returns all foreign keys referencing given table.
    -- Input       : aTableName  - the name of table
    -- Output      : list of foreign keys referencing given table
    ------------------------------------------------------------------------------------------
    FUNCTION get_references(aTableName IN user_tables.table_name%TYPE, prefix IN VARCHAR2 DEFAULT '') RETURN type_constraints
    AS
        query VARCHAR2(1000) :=
            'SELECT '||get_cons_columns_str('src.')||' FROM '||prefix||'user_constraints src, '||prefix||'user_constraints ref '||
            'WHERE src.r_constraint_name=ref.constraint_name '||
            'AND src.constraint_type=''R'''||
            'AND ref.table_name ';
    BEGIN
        IF is_synonym(aTableName) THEN
            query := query || ' IN (SELECT table_name FROM user_synonyms WHERE synonym_name=UPPER(:aTableName))';
        ELSE
            query := query || '=UPPER(:aTableName)';
        END IF;
        RETURN create_constraints_list(query, aTableName);
    END;


    ------------------------------------------------------------------------------------------
    -- Name        : get_cons_columns
    -- Description : This function returns the list of all columns of given constraint.
    -- Input       : aConstraintName - the constraint name
    --               prefix          - the prefix used in comma separated list for each column
    -- Output      : comma separated list of constraint columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_cons_columns(aConstraintName IN user_constraints.constraint_name%TYPE, prefix IN VARCHAR2 DEFAULT '')
        RETURN type_object_name_list
    IS
        query VARCHAR2(1000) :=
            'SELECT column_name FROM '||prefix||'user_cons_columns WHERE constraint_name=:name ORDER BY position';
    BEGIN
        RETURN create_object_name_list(query, aConstraintName);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_tab_columns
    -- Description : This function returns the columns of given table.
    -- Input       : aTableName - the table name
    -- Output      : table columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_tab_columns(aTableName IN user_tables.table_name%TYPE) RETURN type_object_name_list
    IS
        cols type_object_name_list;
        tab user_tables.table_name%TYPE;
    BEGIN
        IF is_synonym(aTableName) THEN
            SELECT table_name INTO tab FROM user_synonyms WHERE synonym_name=upper(aTableName);
        ELSE
            tab := upper(aTableName);
        END IF;
        SELECT column_name BULK COLLECT INTO cols
          FROM user_tab_columns
         WHERE table_name=tab
         ORDER BY column_id;

        RETURN cols;
    END;

    ------------------------------------------------------------------------
    -- Name        : disable_constraints
    -- Description : This method is used to disable all constraints
    --               of given list.
    -- Input       : constraints - list of constraints
    ------------------------------------------------------------------------
    PROCEDURE disable_constraints(constraints IN type_constraints) AS
    BEGIN

        IF constraints.COUNT=0 THEN
            RETURN;
        END IF;

        FOR i IN constraints.FIRST..constraints.LAST LOOP

            IF constraints(i).status<>'DISABLED' THEN
                sql_util.execute('ALTER TABLE '||constraints(i).table_name||
                                 ' MODIFY CONSTRAINT '||constraints(i).constraint_name||' DISABLE');
            END IF;

        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : set_fk_constraint_properties
    -- Description : This method is used to set the 'EnableFKConstraints' and
    --               'ValidateFKConstraints' property  for foreign key constraints
    --               within preferences for Domain 'system'.
    -- Input       : enable_value - 'true' or 'false', default is 'true'
    -- Input       : validate_value - 'true' or 'false', default is 'true'
    ------------------------------------------------------------------------
    PROCEDURE set_fk_constraint_properties(enable_value VARCHAR2 DEFAULT 'true',
                                           validate_value VARCHAR2 DEFAULT 'true')
    AS
    BEGIN
      -- enable value
      set_string_preference('EnableFKConstraints', 'system', LOWER(enable_value));

      -- validate  value
      set_string_preference('ValidateFKConstraints', 'system', LOWER(validate_value));

      COMMIT;

    END;

    ------------------------------------------------------------------------
    -- Name        : enable_constraints
    -- Description : This method is used to enable all constraints
    --               of given list.
    -- Input       : constraints - list of constraints
    ------------------------------------------------------------------------
    PROCEDURE enable_constraints(constraints IN type_constraints)
    AS
        v_enableFKConstraints VARCHAR2(50) := get_string_preference('EnableFKConstraints', 'system');
        v_validateFKConstraints VARCHAR2(50) := get_string_preference('ValidateFKConstraints', 'system');
        v_validate VARCHAR2(50) := 'NOVALIDATE';
        v_cnt INTEGER;
        v_staging_fks type_constraints;

        FUNCTION is_staging_constraint (constraint IN type_constraint) RETURN BOOLEAN AS
        BEGIN
          IF v_staging_fks.COUNT>0 THEN
            FOR i IN v_staging_fks.FIRST..v_staging_fks.LAST LOOP
              IF v_staging_fks(i).constraint_name = constraint.constraint_name OR
                 v_staging_fks(i).constraint_name = constraint.r_constraint_name
              THEN
                RETURN TRUE;
              END IF;
            END LOOP;
          END IF;
          RETURN FALSE;
        END;

    BEGIN

        IF constraints.COUNT=0 THEN
            RETURN;
        END IF;

      EXECUTE IMMEDIATE 'SELECT count(*) FROM process_av WHERE name=''StagingSystemType'' AND stringvalue=''LIVE''' INTO v_cnt;
      IF v_cnt>0 THEN
        v_staging_fks := get_staging_fk_constraints();
      ELSE
        v_staging_fks := type_constraints();
      END IF;

        IF lower(v_validateFKConstraints) = 'true' THEN
            v_validate := 'VALIDATE';
        END IF;

        FOR i IN constraints.FIRST..constraints.LAST LOOP

            -- only not enabled constraints
            IF constraints(i).status<>'ENABLED' THEN
                -- for foreign key constraint 'R'
                IF constraints(i).constraint_Type = 'R' THEN
                    -- enabled preference property TRUE
                    IF v_enableFKConstraints IS NULL OR lower(v_enableFKConstraints) <> 'true' THEN
                      logger.log('Do not enable '||constraints(i).constraint_name||'.');
                    ELSIF is_staging_constraint(constraints(i)) THEN
                      logger.log('Do not enable '||constraints(i).constraint_name||', because it references a staging table.');
                    ELSE
                        sql_util.execute('ALTER TABLE '||constraints(i).table_name||
                                         ' MODIFY CONSTRAINT '||constraints(i).constraint_name||' ENABLE '||v_validate);
                    END IF;
                -- all other constraints
                ELSE
                    sql_util.execute('ALTER TABLE '||constraints(i).table_name||
                                     ' MODIFY CONSTRAINT '||constraints(i).constraint_name||' ENABLE ');
                END IF;
            END IF;

        END LOOP;

    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_constraints
    -- Description : This procedure is used to drop all constraints defined by given list.
    -- Input       : constraints - list of constraints
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_constraints(constraints IN type_constraints)
    AS
    BEGIN
        IF constraints.COUNT=0 THEN
            RETURN;
        END IF;

        FOR i IN constraints.FIRST..constraints.LAST
        LOOP
            sql_util.execute('ALTER TABLE '||constraints(i).table_name||' DROP CONSTRAINT '||constraints(i).constraint_name, -2443);
        END LOOP;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_table
    -- Description : This procedure is used to drop a table.
    -- Input       : table_name  - the name of table
    -- Example     : exec ddl.drop_table('RESOURCEPO')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_table(table_name IN user_objects.object_name%TYPE)
    AS
        drop_stmt VARCHAR2(100) := 'DROP TABLE '||table_name||' CASCADE CONSTRAINTS';
    BEGIN
        -- 10g recycle bin exists?
        IF is_recyclebin THEN
            drop_stmt := drop_stmt || ' PURGE';
        END IF;

        sql_util.execute(drop_stmt, -942);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_view
    -- Description : This procedure is used to drop a view.
    -- Input       : view_name  - the name of view
    -- Example     : exec ddl.drop_view('RESOURCEPO')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_view(table_name IN user_objects.object_name%TYPE)
    AS
        drop_stmt VARCHAR2(100) := 'DROP VIEW '||table_name;
    BEGIN
        sql_util.execute(drop_stmt, -942);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_index
    -- Description : This procedure is used to drop an index.
    -- Input       : index_name  - the name of index
    -- Example     : exec ddl.drop_index('ISRESOURCE_IE001')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_index(index_name IN user_objects.object_name%TYPE)
    AS
        drop_stmt VARCHAR2(100) := 'DROP INDEX '||index_name;
    BEGIN
        sql_util.execute(drop_stmt, -1418);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : rename_index
    -- Description : This procedure is used to rename an index.
    -- Input       : index_name  - the name of index
    -- Example     : exec ddl.rename_index('ISRESOURCE_IE001', 'ISRESOURCE_IE002', TRUE)
    ------------------------------------------------------------------------------------------
    PROCEDURE rename_index(oldIndexName IN user_objects.object_name%TYPE,
                           newIndexName IN user_objects.object_name%TYPE,
                           force IN BOOLEAN DEFAULT TRUE)
    AS
    BEGIN
        IF oldIndexName=newIndexName THEN
            RETURN;
        ELSIF force THEN
            drop_index(newIndexName);
        END IF;

        sql_util.execute('ALTER INDEX '||oldIndexName||' RENAME TO '||newIndexName);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_trigger
    -- Description : This procedure is used to drop a trigger.
    -- Input       : trigger_name  - the name of trigger
    -- Example     : exec ddl.drop_trigger('T$BASICADDRESS')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_trigger(trigger_name IN user_objects.object_name%TYPE)
    AS
        drop_stmt VARCHAR2(100) := 'DROP TRIGGER '||trigger_name;
    BEGIN
        sql_util.execute(drop_stmt, -4080);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_synonym
    -- Description : This procedure is used to drop given synonym.
    -- Input       : synonym_name  - the name of synonym
    -- Example     : exec ddl.drop_synonym('PRODUCT')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_synonym(synonym_name IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('DROP SYNONYM '||synonym_name, -1434);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_materialized_view
    -- Description : This procedure is used to drop given materialized view.
    -- Input       : name  - the name of materialized view
    -- Example     : exec ddl.drop_maeterialized_view('ECLASSCOUNT')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_materialized_view(name IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('DROP MATERIALIZED VIEW '||name, -12003);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_sequence
    -- Description : This procedure is used to drop given sequence.
    -- Input       : name  - the name of sequence
    -- Example     : exec ddl.drop_sequence('ASEQUENCE')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_sequence(name IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('DROP SEQUENCE '||name, -2289);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_procedure
    -- Description : This procedure is used to drop given procedure.
    -- Input       : name  - the name of procedure
    -- Example     : exec ddl.drop_sequence('APROCEDURE')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_procedure(name IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('DROP PROCEDURE '||name, -4043);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : create_synonym
    -- Description : This procedure is used to create given synonym.
    -- Input       : synonym_name  - the name of synonym
    --               object_name   - the name of object
    -- Example     : exec ddl.create_synonym('PRODUCT', 'PRODUCT$1')
    ------------------------------------------------------------------------------------------
    PROCEDURE create_synonym(synonym_name IN user_objects.object_name%TYPE,
                             object_name IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('CREATE SYNONYM '||synonym_name||' FOR '||object_name);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : replace_synonym
    -- Description : This procedure is used to replace given synonym.
    -- Input       : synonym_name  - the name of synonym
    --               object_name   - the name of object
    -- Example     : exec ddl.create_synonym('PRODUCT', 'PRODUCT$1')
    ------------------------------------------------------------------------------------------
    PROCEDURE replace_synonym(synonym_name IN user_objects.object_name%TYPE,
                              object_name IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('CREATE OR REPLACE SYNONYM '||synonym_name||' FOR '||object_name);
    END;

    ------------------------------------------------------------------------
    -- Name        : rename_table
    -- Description : renames a table and updates according dict cache views.
    -- Input       : srcName - The source table name.
    --               dstName - The destination table name.
    --               prefix  - the prefix of cache tables
    -- Example     : exec ddl.cache_cons_dict_views
    ------------------------------------------------------------------------
    PROCEDURE rename_table(srcName IN VARCHAR2, dstName IN VARCHAR2,
        dict_view_prefix IN VARCHAR2 DEFAULT '')
    AS
        PROCEDURE update_table(dictView IN VARCHAR2)
        AS
            i INTEGER;
        BEGIN
            SELECT count(*) INTO i FROM user_tables WHERE table_name = upper(dictView);
            IF i>0 THEN
                logger.log('Update cached dict view '||dictView||': '||srcName||'->'||dstName);
                EXECUTE IMMEDIATE 'UPDATE '||dictView||
                    ' SET table_name=:newName WHERE table_name=:oldName'
                USING dstName, srcName;
            ELSE
                logger.log(dictView||' does not exists. Ignore it.');
            END IF;
        END;

    BEGIN
        IF dict_view_prefix IS NOT NULL THEN
            update_table(dict_view_prefix||'user_constraints');
            update_table(dict_view_prefix||'user_cons_columns');
            update_table(dict_view_prefix||'user_indexes');
            update_table(dict_view_prefix||'user_ind_columns');
        END IF;
        sql_util.executeDDL('ALTER TABLE '||srcName||' RENAME TO '||dstName);
    END;

    ------------------------------------------------------------------------
    -- Name        : cache_cons_dict_views
    -- Description : caches the dictionary views containing constraints
    --               information.
    -- Input       : prefix - the prefix of cache tables
    -- Example     : exec ddl.cache_cons_dict_views
    ------------------------------------------------------------------------
    PROCEDURE cache_cons_dict_views(prefix IN VARCHAR2) AS
    BEGIN
        IF prefix IS NOT NULL THEN
            ddl.drop_table(prefix||'user_constraints');
            ddl.drop_table(prefix||'user_cons_columns');

            EXECUTE IMMEDIATE 'CREATE TABLE '||prefix||'user_constraints AS SELECT '||
                              get_cons_columns_str()||' FROM user_constraints';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'co_cname ON '||prefix||'user_constraints(constraint_name)';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'co_ctype ON '||prefix||'user_constraints(constraint_type)';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'co_ctable ON '||prefix||'user_constraints(table_name)';

            EXECUTE IMMEDIATE 'CREATE TABLE '||prefix||'user_cons_columns AS SELECT * FROM user_cons_columns';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'cco_cname ON '||prefix||'user_cons_columns(constraint_name)';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'cco_ctable ON '||prefix||'user_cons_columns(table_name)';

            EXECUTE IMMEDIATE 'COMMENT ON TABLE '||prefix||'user_constraints  IS ''core''';
            EXECUTE IMMEDIATE 'COMMENT ON TABLE '||prefix||'user_cons_columns IS ''core''';
        END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : cache_index_dict_views
    -- Description : caches the dictionary views containing index
    --               information.
    -- Input       : prefix - the prefix of cache tables
    -- Example     : exec ddl.cache_index_dict_views
    ------------------------------------------------------------------------
    PROCEDURE cache_index_dict_views(prefix IN VARCHAR2) AS
    BEGIN
        IF prefix IS NOT NULL THEN
            ddl.drop_table(prefix||'user_ind_columns');
            ddl.drop_table(prefix||'user_indexes');

            EXECUTE IMMEDIATE 'CREATE TABLE '||prefix||'user_ind_columns AS SELECT * FROM user_ind_columns';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'uic_iname ON '||prefix||'user_ind_columns(index_name)';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'uic_tname ON '||prefix||'user_ind_columns(table_name)';

            EXECUTE IMMEDIATE 'CREATE TABLE '||prefix||'user_indexes AS SELECT * FROM user_indexes';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'ui_iname ON '||prefix||'user_indexes(index_name)';
            EXECUTE IMMEDIATE 'CREATE INDEX '||prefix||'ui_tname ON '||prefix||'user_indexes(table_name)';

            EXECUTE IMMEDIATE 'COMMENT ON TABLE '||prefix||'user_ind_columns  IS ''core''';
            EXECUTE IMMEDIATE 'COMMENT ON TABLE '||prefix||'user_indexes      IS ''core''';
        END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : compile_object
    -- Description : Compiles given and dependent objects in database.
    -- Input       : aType    - the type of object
    --               anObject - the name of object
    ------------------------------------------------------------------------
    PROCEDURE compile_object(aType IN VARCHAR2, anObject IN VARCHAR2) AS
    BEGIN
        IF anObject=upper('sp_DBMonitor') THEN
            logger.log('Ignore '||aType||' '||anObject);
            RETURN;
        ELSIF aType='PACKAGE BODY' THEN
            logger.log('Compile '||aType||' '||anObject);
            EXECUTE IMMEDIATE 'ALTER PACKAGE '||anObject||' COMPILE';
            EXECUTE IMMEDIATE 'ALTER PACKAGE '||anObject||' COMPILE BODY';
        ELSIF aType IN ('PACKAGE','PROCEDURE','FUNCTION','VIEW','SYNONYM','TRIGGER', 'MATERIALIZED VIEW') THEN
            logger.log('Compile '||aType||' '||anObject);
            EXECUTE IMMEDIATE 'ALTER '||aType||' '||anObject||' COMPILE';
        END IF;

        FOR c IN (SELECT d.name, d.type
                  FROM user_dependencies d
                  JOIN user_objects o ON (d.referenced_name=o.object_name)
                  WHERE d.referenced_name = anObject
                  AND o.status='INVALID') LOOP
            compile_object(c.type,c.name);
        END LOOP;
    END;

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given array of constraints
    -- Input       : cons - the array of constraints
    ------------------------------------------------------------------------
    PROCEDURE log(cons ddl.type_constraints)
    AS
        cols1     type_object_name_list;
        cols2     type_object_name_list;
        ref_cons  type_constraint;
    BEGIN
        IF cons IS NULL THEN
            logger.log('Constraints array is null.');
        ELSIF cons.COUNT=0 THEN
            logger.log('Constraints array is empty.');
        ELSE
            FOR i IN cons.FIRST..cons.LAST
            LOOP
                cols1 := get_cons_columns(cons(i).constraint_name);
                cols2 := get_cons_columns(cons(i).r_constraint_name);
                ref_cons := get_constraint(cons(i).r_constraint_name);

                logger.log(cons(i).table_name||'('||to_string(cols1)||')'||
                    ' -> '||ref_cons.table_name||'('||to_string(cols2)||')');
            END LOOP;
        END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given array of columns
    -- Input       : cols - the array of columns
    ------------------------------------------------------------------------
    PROCEDURE log(cols ddl.type_table_columns) AS
    BEGIN
        IF cols IS NULL THEN
            logger.log('Column array is null.');
        ELSIF cols.COUNT=0 THEN
            logger.log('Column array is empty.');
        ELSE
            FOR i IN cols.FIRST..cols.LAST LOOP
                logger.log(cols(i).column_name||' '||cols(i).data_type);
            END LOOP;

        END IF;
    END;

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given array of object names
    -- Input       : objects - array of objects
    ------------------------------------------------------------------------
    PROCEDURE log(objects ddl.type_object_name_list) AS
    BEGIN
        logger.log(to_string(objects));
    END;

    ------------------------------------------------------------------------
    -- Name        : clear_table
    -- Description : This method truncates the given table with the 'REUSE STORAGE' option.
    -- Input       : aTableName - the name of table
    -- Example     : exec ddl.clear_table('IPRODUCTCATEGORYASSIG$2')
    ------------------------------------------------------------------------
    PROCEDURE clear_table(aTableName  IN user_objects.object_name%TYPE) AS
    BEGIN
        sql_util.execute('TRUNCATE TABLE '||UPPER(aTableName)||' REUSE STORAGE');
    END;


    ------------------------------------------------------------------------------------------
    -- Name        : migrate_table_column
    -- Description : migrates a table column to another datatype.
    --               Reason: alter table <table> modify <column> <new_col_type>
    --               throws generic ORA-22858: invalid alteration of datatype
    -- Input       : table_name  - name of table
    --               column_name - name of the column
    --               data_type   - name of new datatype for column_name
    -- Example     : exec ddl.migrate_table_column('stagingmview', 'query', 'CLOB')
    ------------------------------------------------------------------------------------------
    PROCEDURE migrate_table_column(table_name IN VARCHAR2, column_name IN VARCHAR2, data_type IN VARCHAR2) AS
        tmp_col VARCHAR2(10) := 'tmp';
    BEGIN
        sql_util.execute('ALTER TABLE '||table_name||' ADD '||tmp_col||'   '||data_type);
        sql_util.execute('     UPDATE '||table_name||' SET '||tmp_col||' = '||column_name);
        sql_util.execute('ALTER TABLE '||table_name||' DROP COLUMN '||column_name);
        sql_util.execute('ALTER TABLE '||table_name||' RENAME COLUMN '||tmp_col||' TO '||column_name);
   END;

END ddl;
/

show errors;

CREATE OR REPLACE PACKAGE BODY staging_ddl IS

    PROCEDURE create_source_view(stagingTable IN StagingTable%ROWTYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : copy_comment
    -- Description : This procedure copies the database comment from table$1 to table$2.
    ------------------------------------------------------------------------------------------
    PROCEDURE copy_comment(table$1 IN user_tables.table_name%TYPE, table$2 IN user_tables.table_name%TYPE) AS
        c user_tab_comments.comments%TYPE;
    BEGIN
        SELECT comments INTO c FROM user_tab_comments WHERE table_name=table$1;
        EXECUTE IMMEDIATE 'COMMENT ON TABLE '||table$2||' IS '''||c||'''';
    EXCEPTION
        WHEN no_data_found THEN
            NULL;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_domainid_columns
    -- Description : This function returns the name of all columns referencing a domain.
    -- Input       : tableName - the name of table
    -- Output      : domainid columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_domainid_columns(tableName IN user_tables.table_name%TYPE)
        RETURN ddl.type_object_name_list
    IS
        TYPE t_ref_cursor IS REF CURSOR;
        cur  t_ref_cursor;
        cols ddl.type_object_name_list;
        o    user_objects.object_name%TYPE;
        nr   NUMBER;
    BEGIN
        cols := ddl.type_object_name_list();

        -- check if there is a column with name 'DOMAINID'
        SELECT count(*) INTO nr FROM user_tab_columns
         WHERE column_name='DOMAINID'
           AND (table_name=tableName OR table_name=staging.get_table_name(tableName, '$1'));

        IF nr>0 THEN
            -- use standard domainid column
            cols.EXTEND;
            cols(cols.LAST) := 'DOMAINID';
        ELSE

            OPEN cur FOR 'SELECT c_src.column_name '||
                         'FROM user_cons_columns c_src, '||
                               'user_constraints src, '||
                               'user_cons_columns ref '||
                         'WHERE src.r_constraint_name=ref.constraint_name '||
                         'AND c_src.constraint_name=src.constraint_name '||
                         'AND (src.table_name=:tableName OR src.table_name=staging.get_table_name(:tableName, ''$1''))'||
                         'AND (ref.table_name LIKE ''DOMAIN$_'' OR ref.table_name = ''DOMAIN'')' USING tableName, tableName;
            LOOP
                FETCH cur INTO o;
                EXIT WHEN cur%NOTFOUND;

                cols.EXTEND;
                cols(cols.LAST) := o;
            END LOOP;
        END IF;

        RETURN cols;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_constraints
    -- Description : This function returns the constraints of given type and of given table.
    -- Input       : tableName - name of table
    --               cons_type - constraint type
    -- Output      : the table constraints
    ------------------------------------------------------------------------------------------
    FUNCTION get_constraints(tableName IN user_tables.table_name%TYPE, cons_type IN VARCHAR2 DEFAULT '')
        RETURN ddl.type_constraints
    IS
    BEGIN
        RETURN ddl.get_constraints(tableName, cons_type);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_indexes
    -- Description : This function returns the indexes of given table.
    -- Input       : tableName - name of table
    -- Output      : the indexes of table
    ------------------------------------------------------------------------------------------
    FUNCTION get_indexes(tableName IN user_tables.table_name%TYPE)
        RETURN ddl.type_object_name_list
    IS
    BEGIN
        RETURN ddl.get_indexes(tableName);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_tab_columns
    -- Description : This function returns the columns of given table.
    -- Input       : tableName - name of table
    -- Output      : columns of table
    ------------------------------------------------------------------------------------------
    FUNCTION get_tab_columns(tableName IN user_tables.table_name%TYPE) RETURN ddl.type_object_name_list
    IS
        cols ddl.type_object_name_list;
    BEGIN
        cols := ddl.get_tab_columns(tableName);
        IF cols.COUNT=0 THEN
            cols := ddl.get_tab_columns(staging.get_table_name(tableName, '$1'));
        END IF;
        RETURN cols;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : get_cs_string
    -- Description : This function returns a string representation of give object name list.
    -- Input       : list   - a list of object names
    --               prefix - the prefix used in comma separated list for each column
    -- Output      : string representation of given list
    ------------------------------------------------------------------------------------------
    FUNCTION get_cs_string(list IN ddl.type_object_name_list, prefix IN VARCHAR2 DEFAULT NULL) RETURN VARCHAR2
    IS
        string VARCHAR2(4000);
    BEGIN
        FOR i IN list.FIRST..list.LAST LOOP
            string := string||','||prefix||list(i);
        END LOOP;

        -- cut first character and return the string
        RETURN substr(string, 2);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : join_columns
    -- Description : This function returns a string representing a join between given column
    --               lists
    -- Input       : prefix1 - the prefix of first column list
    --               cols1 - a list of column names
    --               prefix2 - the prefix of second column list
    --               cols2 - a list of column names
    -- Output      : string representation of join
    ------------------------------------------------------------------------------------------
    FUNCTION join_columns(prefix1 IN VARCHAR2, cols1 IN ddl.type_object_name_list,
                          prefix2 IN VARCHAR2, cols2 IN ddl.type_object_name_list) RETURN VARCHAR2
    AS
        result VARCHAR2(4000);
    BEGIN
        FOR i IN cols1.FIRST..cols1.LAST LOOP
            result := result||' AND '||prefix1||cols1(i)||'='||prefix2||cols2(i);
        END LOOP;

        RETURN substr(result, 6);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_staging_table
    -- Description : This procedure is used to drop a table of a normal or staging table.
    --               In second case the table is dropped as $1 as well as $2 table.
    -- Input       : table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging_ddl.drop_staging_table('DOMAIN')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_staging_table(table_name  IN user_objects.object_name%TYPE) AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            ddl.drop_table(staging.get_table_name(table_name, '$1'));
            ddl.drop_table(staging.get_table_name(table_name, '$2'));
            ddl.drop_view(staging.get_table_name(table_name, '$S'));
            ddl.drop_synonym(table_name);
        ELSE
            ddl.drop_table(table_name);
        END IF;
    END;


    ------------------------------------------------------------------------------------------
    -- Name        : drop_staging_trigger
    -- Description : This procedure is used to drop a staging trigger of a staging table.
    --               The staging table trigger is dropped as T$<table_name>$1 as well as
    --               T$<table_name>$2 satging table trigger.
    -- Input       : table_name  - the name of staging table
    -- Example     : exec staging_ddl.drop_staging_trigger('BASICADDRESS')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_staging_trigger(table_name  IN user_objects.object_name%TYPE) AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            ddl.drop_trigger('T$' || staging.get_table_name(table_name, '$1'));
            ddl.drop_trigger('T$' || staging.get_table_name(table_name, '$2'));
        ELSE
            NULL;
        END IF;
    END;


    ------------------------------------------------------------------------------------------
    -- Name        : add_constraint
    -- Description : This procedure is used to add a constraint on a table with given name.
    --               If table is a staging table and it is prepared, the constraint is added
    --               to both tables ending with '$1' and '$2'. In case of a simple table the
    --               constraint is added directly.
    -- Input       : table_name      - the name of table
    --               constraint_name - the name of constraint
    --               clause          - the constraint clause
    -- Example     : exec staging_ddl.add_constraint('BASICADDRESS', 'BASICADDRESS_CO001', 'FOREIGN KEY (domainid) REFERENCES domain(uuid)')
    ------------------------------------------------------------------------------------------
    PROCEDURE add_constraint(table_name      IN user_objects.object_name%TYPE,
                             constraint_name IN user_objects.object_name%TYPE,
                             clause          IN VARCHAR2)
    AS
        l_clause VARCHAR2(2000) := clause;
        n user_objects.object_name%TYPE;

        PROCEDURE replace_ref_table(clause IN OUT VARCHAR2, suffix IN VARCHAR2)
        AS
            ref_tab             user_tables.table_name%TYPE;
            ref_tab_clause_part VARCHAR2(2000);
        BEGIN
            -- split into ref tab and ref tab + part
            SELECT TRIM(REGEXP_SUBSTR(clause, 'REFERENCES( .+)\(', 1, 1, 'i', 1)),
                   TRIM(REGEXP_SUBSTR(clause, 'REFERENCES( .+)\(', 1, 1, 'i'   ))
                   INTO ref_tab, ref_tab_clause_part
              FROM dual;

            -- only set $1/2 part for ref table if ref tab is also a staging table
            IF staging.is_prepared(ref_tab) THEN

                clause := REPLACE
                          (
                            clause,
                            ref_tab_clause_part,
                            REPLACE(ref_tab_clause_part, ref_tab, staging.get_table_name(ref_tab, suffix))
                          );
            END IF;
        END;

    BEGIN
        IF staging.is_prepared(table_name) THEN

            n := staging.get_table_name(table_name, '$1');
            l_clause := clause;
            replace_ref_table(l_clause, '$1');
            ddl.migrate_constraint(n, staging.get_constraint_name(constraint_name, n), l_clause);

            n := staging.get_table_name(table_name, '$2');
            l_clause := clause;
            replace_ref_table(l_clause, '$2');
            ddl.migrate_constraint(n, staging.get_constraint_name(constraint_name, n), l_clause);

        ELSE
            ddl.migrate_constraint(table_name, constraint_name, l_clause);
        END IF;
    END;


    ------------------------------------------------------------------------------------------
    -- Name        : add_column
    -- Description : This procedure is used to add a column to a normal or staging table.
    --               In second case the column is added to $1 as well as $2 table.
    -- Input       : tab_name - the name of table or (for staging) the synonym name
    --               col_name - the name of column to be added
    --               col_def  - the definition of column
    -- Example     : exec staging.add_column('RESOURCEPO', 'lockingthreadid', 'VARCHAR2(256)')
    ------------------------------------------------------------------------------------------
    PROCEDURE add_column(tab_name IN user_tables.table_name%TYPE,
                         col_name IN user_tab_columns.column_name%TYPE,
                         col_def IN VARCHAR2)
    AS
        counter NUMBER(2);
    BEGIN
        IF staging.is_prepared(tab_name) THEN

            add_column(staging.get_table_name(tab_name, '$1'), col_name, col_def);
            add_column(staging.get_table_name(tab_name, '$2'), col_name, col_def);

            create_source_view(staging.get_staging_table(tab_name));
        ELSE
            select count(column_name) INTO counter FROM user_tab_columns WHERE table_name=upper(tab_name) AND column_name=upper(col_name);
            IF counter=0 THEN
                sql_util.executeDDL('ALTER TABLE '||tab_name||' ADD ('||col_name||' '||col_def||')', -1430);
            ELSE
                logger.log('Table '||tab_name||' possesses already a column with name '||col_name||'.');
            END IF;
        END IF;
    END add_column;


    ------------------------------------------------------------------------------------------
    -- Name        : drop_column
    -- Description : This procedure is used to drop a column of a normal or staging table.
    --               In second case the column is dropped in $1 as well as $2 table.
    -- Input       : table_name  - the name of table or (for staging) the synonym name
    --               column_name - the name of column to be dropped
    -- Example     : exec staging.drop_column('RESOURCEPO', 'lockingthreadid')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_column(table_name  IN user_tables.table_name%TYPE,
                          column_name IN user_tab_columns.column_name%TYPE)
    AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            sql_util.executeDDL('ALTER TABLE '||staging.get_table_name(table_name, '$1')||' DROP COLUMN '||column_name, -904);
            sql_util.executeDDL('ALTER TABLE '||staging.get_table_name(table_name, '$2')||' DROP COLUMN '||column_name, -904);
        ELSE
            sql_util.executeDDL('ALTER TABLE '||table_name||' DROP COLUMN '||column_name, -904);
        END IF;
    END drop_column;

    ------------------------------------------------------------------------------------------
    -- Name        : create_index
    -- Description : This procedure is used to create an index for a normal or staging table.
    --               In second case the index is created for $1 as well as $2 table.
    -- Input       : index_name  - the index name
    --               table_name  - the name of table or (for staging) the synonym name
    --               columns_def - the list of indexed columns
    --               tablespace  - the tablespace of index
    --               uniqueness  - uniqueness of index, values UNIQUE or NONUNIQUE, default is NONUNIQUE
    --               recreate    - is '1' if index should be dropped before
    -- Example     : exec staging.create_index('ServiceLineItem_FK003', 'ServiceLineItem', '(lineItemGroupID)', 'IS_INDX', 'NONUNIQUE')
    ------------------------------------------------------------------------------------------
    PROCEDURE create_index(index_name  IN user_indexes.index_name%TYPE,
                           table_name  IN VARCHAR2,
                           columns_def IN VARCHAR2,
                           tablespace  IN VARCHAR2,
                           uniqueness  IN VARCHAR2 DEFAULT 'NONUNIQUE',
                           recreate    IN NUMBER DEFAULT 1)
    AS
        def VARCHAR2(200);
        dymmy VARCHAR2(100);
        idx_unique VARCHAR2(10);
    BEGIN

        IF recreate = 1 THEN
            drop_index(index_name, table_name);
        END IF;

        IF staging.is_prepared(table_name) THEN
            ddl.migrate_index(
                staging.get_index_name(index_name, table_name, '$1'),
                staging.get_table_name(table_name, '$1'),
                columns_def, tablespace, uniqueness);
            ddl.migrate_index(
                staging.get_index_name(index_name, table_name, '$2'),
                staging.get_table_name(table_name, '$2'),
                columns_def, tablespace, uniqueness);
        ELSE
            ddl.migrate_index(index_name, table_name, columns_def, tablespace, uniqueness);
        END IF;

    END create_index;

    ------------------------------------------------------------------------------------------
    -- Name        : create_ctx_index
    -- Description : This procedure is used to create a context index for a normal or staging table.
    --               In second case the index is created for $1 as well as $2 table.
    -- Input       : index_name  - the index name
    --               table_name  - the name of table or (for staging) the synonym name
    --               column_name - the name of column
    --               parameters  - the parameters definition
    --               paraMemory  - the memory parameter string of context index (optional)
    --               doRecreate  - if the old index should be dropped before
    --               tableType   - one of 'Live', 'Shadow', 'Both'
    --               parallel    - parallel degree
    -- Example     : exec staging_ddl.create_ctx_index('DOMAIN_AV_STR_VAL', 'DOMAIN_AV', 'stringvalue',
    --                    '(''Lexer Enfinity_Lexer Wordlist Enfinity_Wordlist '  ||
    --                    'Storage Enfinity_Storage section group path_section_group'')', 'Memory 250M', TRUE, 'Both', 2)
    ------------------------------------------------------------------------------------------
    PROCEDURE create_ctx_index(index_name  IN user_indexes.index_name%TYPE,
                               table_name  IN VARCHAR2,
                               column_name IN VARCHAR2,
                               parameters  IN VARCHAR2 DEFAULT 'Lexer Enfinity_Lexer Wordlist Enfinity_Wordlist Storage Enfinity_Storage',
                               paraMemory  IN VARCHAR2 DEFAULT 'Memory 250M',
                               doRecreate  IN BOOLEAN DEFAULT TRUE,
                               tableType   IN VARCHAR2 DEFAULT 'Both',
                               parallel    IN NUMBER DEFAULT 2)
    AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            IF tableType='Live' THEN
                ddl.create_ctx_index(
                    staging.get_index_name(index_name, staging.get_live_table_name(table_name)),
                    staging.get_live_table_name(table_name),
                    column_name, parameters, paraMemory, doRecreate, parallel);
            ELSIF tableType='Shadow' THEN
                ddl.create_ctx_index(
                    staging.get_index_name(index_name, staging.get_shadow_table_name(table_name)),
                    staging.get_shadow_table_name(table_name),
                    column_name, parameters, paraMemory, doRecreate, parallel);
            ELSE
                ddl.create_ctx_index(
                    staging.get_index_name(index_name, table_name, '$1'),
                    staging.get_table_name(table_name, '$1'),
                    column_name, parameters, paraMemory, doRecreate, parallel);
                ddl.create_ctx_index(
                    staging.get_index_name(index_name, table_name, '$2'),
                    staging.get_table_name(table_name, '$2'),
                    column_name, parameters, paraMemory, doRecreate, parallel);
            END IF;
        ELSE
            ddl.create_ctx_index(index_name, table_name, column_name, parameters, paraMemory, doRecreate, parallel);
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_constraint
    -- Description : This procedure is used to drop a constraint of a normal or staging table.
    --               In second case the constraint is dropped for $1 as well as $2 table.
    -- Input       : constraint_name  - the constraint name
    --               table_name       - the name of table or (for staging) the synonym name
    -- Example     : exec staging_ddl.drop_constraint('PRODUCTLIST_AK001', 'PRODUCTLIST')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_constraint
    (
        constraint_name IN user_constraints.constraint_name%TYPE,
        table_name      IN VARCHAR2
    )
    AS
        tab user_objects.object_name%TYPE;
        con user_objects.object_name%TYPE;
    BEGIN
        IF staging.is_prepared(table_name) THEN
            tab := staging.get_table_name(table_name, '$1');
            con := staging.get_constraint_name(constraint_name, tab);
            sql_util.executeDDL('ALTER TABLE '|| tab ||' DROP CONSTRAINT '|| con, -2443);
            sql_util.executeDDL('ALTER TABLE '|| tab ||' DROP CONSTRAINT '|| constraint_name, -2443);
            tab := staging.get_table_name(table_name, '$2');
            con := staging.get_constraint_name(constraint_name, tab);
            sql_util.executeDDL('ALTER TABLE '|| tab ||' DROP CONSTRAINT '|| con, -2443);
            sql_util.executeDDL('ALTER TABLE '|| tab ||' DROP CONSTRAINT '|| constraint_name, -2443);
        ELSE
            IF ddl.is_object_exists(table_name, 'TABLE') THEN
                sql_util.executeDDL('ALTER TABLE '||table_name||' DROP CONSTRAINT '||constraint_name, -2443);
            END IF;
        END IF;
    END drop_constraint;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_index
    -- Description : This procedure is used to drop an index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : index_name  - the index name
    --               table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging.drop_index('ServiceLineItem_FK003', 'ServiceLineItem')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_index(index_name IN user_indexes.index_name%TYPE,
                         table_name IN VARCHAR2)
    AS
    BEGIN
        sql_util.executeDDL('DROP INDEX '||index_name, -1418);
        sql_util.executeDDL('DROP INDEX '||staging.get_index_name(index_name, table_name, '$1'), -1418);
        sql_util.executeDDL('DROP INDEX '||staging.get_index_name(index_name, table_name, '$2'), -1418);
    END drop_index;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_ctx_index
    -- Description : This procedure is used to drop a context index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : index_name  - the index name
    --               table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging.drop_index('DOMAIN_AV_STR_VAL', 'DOMAIN_AV')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_ctx_index(index_name IN user_indexes.index_name%TYPE,
                             table_name IN VARCHAR2)
    AS
    BEGIN
        sql_util.executeDDL('DROP INDEX '||index_name||' FORCE', -1418);
        sql_util.executeDDL('DROP INDEX '||staging.get_index_name(index_name, table_name, '$1')||' FORCE', -1418);
        sql_util.executeDDL('DROP INDEX '||staging.get_index_name(index_name, table_name, '$2')||' FORCE', -1418);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_ctx_indexes
    -- Description : This procedure is used to drop all context index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging.drop_indexes('DOMAIN_AV')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_ctx_indexes(table_name IN VARCHAR2)
    AS
    BEGIN
        ddl.drop_ctx_indexes(table_name);
        ddl.drop_ctx_indexes(staging.get_table_name(table_name, '$1'));
        ddl.drop_ctx_indexes(staging.get_table_name(table_name, '$2'));
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_index_on
    -- Description : This procedure is used to drop an index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : tab_name - the name of table or (for staging) the synonym name
    --               col_name - the name of column with index to be dropped
    --               col_pos  - the position of column in index (default = 1)
    -- Example     : exec staging.drop_index('ServiceLineItem_FK003', 'ServiceLineItem')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_index_on(tab_name IN user_ind_columns.table_name%TYPE,
                            col_name IN user_ind_columns.column_name%TYPE,
                            col_pos  IN user_ind_columns.column_position%TYPE := 1)
    AS
        name user_indexes.index_name%TYPE;
    BEGIN
        IF staging.is_prepared(tab_name) THEN
            drop_index_on(staging.get_table_name(tab_name, '$1'), col_name, col_pos);
            drop_index_on(staging.get_table_name(tab_name, '$2'), col_name, col_pos);
        ELSE
            SELECT index_name INTO name
              FROM user_ind_columns
             WHERE table_name = upper(tab_name)
               AND column_name = upper(col_name)
               AND column_position=col_pos;
            sql_util.executeDDL('DROP INDEX '||name, -1418);
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            logger.log('Index on '||tab_name||'('||col_name||') already dropped.');
    END drop_index_on;

    ------------------------------------------------------------------------------------------
    -- Name        : transform_constraint_name
    -- Description : This procedure is used to transform the name of constraint in given
    --               ddl statement
    -- Input       : constraints   - the list of constraints of source table
    --               aSrcTableName - the name of source table
    --               aDstTableName - the name of destination table
    --               ddl           - the ddl statement containing the constraint name
    ------------------------------------------------------------------------------------------
    PROCEDURE transform_constraint_name(constraints IN ddl.type_constraints,
                                        aSrcTableName IN user_tables.table_name%TYPE,
                                        aDstTableName IN user_tables.table_name%TYPE,
                                        ddl IN OUT NOCOPY CLOB)
    IS
        r_SrcTableName user_tables.table_name%TYPE;
        r_DstTableName user_tables.table_name%TYPE;
    BEGIN
        IF constraints.COUNT=0 THEN
            RETURN;
        END IF;

        logger.log('Rename constraints from '||aSrcTableName||' to '||aDstTableName);

        FOR i IN constraints.FIRST..constraints.LAST LOOP

            -- replace the name of constraint
            ddl := replace(ddl,
                           '"'||staging.get_constraint_name(constraints(i).constraint_name, aSrcTableName)||'"',
                           '"'||staging.get_constraint_name(constraints(i).constraint_name, aDstTableName)||'"');

            ddl := replace(ddl,
                           '"'||constraints(i).constraint_name||'"',
                           '"'||staging.get_constraint_name(constraints(i).constraint_name, aDstTableName)||'"');

            -- get the referencing parent table for foreign key constraint
            -- if constraint_type = 'R'
            IF constraints(i).constraint_type = 'R' THEN

                SELECT table_name INTO r_SrcTableName FROM user_constraints WHERE constraint_name = constraints(i).r_constraint_name;
                r_DstTableName := REPLACE(r_SrcTableName, SUBSTR(aSrcTableName,-2), SUBSTR(aDstTableName,-2));

                ddl := replace(ddl,
                               '"'||r_SrcTableName||'"',
                               '"'||r_DstTableName||'"');

            END IF;

        END LOOP;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : copy_named_constraints
    -- Description : This procedure is used to copy all constraints (foreign keys and unique)
    --               from source to destination table.
    -- Input       : tableName - the name of staging table
    -- Example     : exec staging_ddl.copy_named_constraints(constraints, 'DOMAIN$1', 'DOMAIN$2')
    ------------------------------------------------------------------------------------------
    PROCEDURE copy_named_constraints(constraints IN ddl.type_constraints, srcTableName IN user_tables.table_name%TYPE, dstTableName IN user_tables.table_name%TYPE)
    AS
        handle       NUMBER;
        transHandle  NUMBER;
        tableDDLs    sys.ku$_ddls;
        stmt         CLOB;

    BEGIN

        -- remove all foreign keys of destination table
        ddl.drop_constraints(ddl.get_constraints(dstTableName, 'R'));

        -- remove all unique constraints of destination table
        ddl.drop_constraints(ddl.get_constraints(dstTableName, 'U'));

        handle := dbms_metadata.open('TABLE');
        dbms_metadata.set_count(handle, 1);
        dbms_metadata.set_filter(handle, 'NAME', srcTableName);

        transHandle := dbms_metadata.add_transform(handle, 'DDL');
        dbms_metadata.set_transform_param(transHandle, 'CONSTRAINTS_AS_ALTER', true);

        LOOP
            tableDDLs := dbms_metadata.fetch_ddl(handle);
            EXIT WHEN tableDDLs IS NULL;

            FOR i IN tableDDLs.FIRST..tableDDLs.LAST
            LOOP

                -- get ddl fetched ddl statement
                stmt := tableDDLs(i).ddltext;

                -- get only ADD CONSTRAINT(s) creations
                IF stmt LIKE '%ALTER TABLE % ADD CONSTRAINT %' THEN

                    -- replace the table name(s) in the original ddl statement
                    stmt := replace(stmt, '"'||srcTableName||'"', '"'||dstTableName||'"');

                    -- replace the constraint name(s) in the original ddl statement
                    transform_constraint_name(constraints, srcTableName, dstTableName, stmt);

                    -- add the new constraint(s) to destination table
                    sql_util.executeDDL(stmt);

                END IF;

            END LOOP;

        END LOOP;

        dbms_metadata.close(handle);
        dbms_lob.freetemporary(stmt);

    END;

    ------------------------------------------------------------------------------------------
    -- Name        : copy_indexes
    -- Description : This procedure is used to copy all indexes of source table to destination
    --               table.
    -- Input       : aSrcTableName - the name of source table
    --               aDstTablename - the name of destination table
    -- Example     : exec staging_ddl.copy_indexes('DOMAIN$1', 'DOMAIN$2')
    ------------------------------------------------------------------------------------------
    PROCEDURE copy_indexes(aSrcTableName IN user_tables.table_name%TYPE, aDstTableName IN user_tables.table_name%TYPE)
    AS
        srcTableName user_tables.table_name%TYPE := upper(aSrcTableName);
        dstTableName user_tables.table_name%TYPE := upper(aDstTableName);
        dstIndexName user_indexes.index_name%TYPE;
        ddl          VARCHAR2(4000);

    BEGIN

        FOR i IN (SELECT index_name, table_name FROM user_indexes WHERE table_name=upper(srcTableName) AND index_name NOT LIKE 'SYS_%') LOOP

            ddl := dbms_metadata.get_ddl('INDEX', i.index_name);

            -- replace the table name in the original ddl statement
            ddl := replace(ddl, '"'||srcTableName||'"', '"'||dstTableName||'"');

            -- replace the table name in the original ddl statement
            ddl := replace(ddl, '"'||i.index_name||'"', '"'||staging.get_index_name(i.index_name, aDstTableName)||'"');

            -- add the new constraint to destination table
            sql_util.executeDDL(ddl);

        END LOOP;

    END;


    ------------------------------------------------------------------------------------------
    -- Name        : create_primary_key
    -- Description : Creates a new primary key consisting of given columns. If given table is
    --               a staging table the primary key of both $ tables is created, otherwise
    --               the original primary key is created.
    -- Input       : table_name  - name of table
    --               columns_def - the definition of columns
    -- Output      : none
    -- Example     : exec staging.create_primary_key('DOMAIN', '(uuid, domainid)')
    ------------------------------------------------------------------------------------------
    PROCEDURE create_primary_key(table_name IN VARCHAR2, columns_def IN VARCHAR2)
    AS
    BEGIN
        drop_primary_key(table_name);
        IF staging.is_prepared(table_name) THEN
            sql_util.executeDDL('ALTER TABLE '||staging.get_table_name(table_name, '$1')||' ADD PRIMARY KEY '||columns_def);
            sql_util.executeDDL('ALTER TABLE '||staging.get_table_name(table_name, '$2')||' ADD PRIMARY KEY '||columns_def);
        ELSE
            sql_util.executeDDL('ALTER TABLE '||table_name||' ADD PRIMARY KEY '||columns_def);
        END IF;
    END;


    ------------------------------------------------------------------------------------------
    -- Name        : drop_primary_key
    -- Description : Drops primary key of given table. If given table is a staging table the
    --               primary key of both $ tables is dropped, otherwise the original primary
    --               key is dropped.
    -- Input       : table_name - name of table
    -- Output      : none
    -- Example     : exec staging.drop_primary_key('DOMAIN')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_primary_key(table_name IN VARCHAR2) AS
    BEGIN
        IF staging.is_prepared(table_name) THEN
            sql_util.executeDDL('ALTER TABLE '||staging.get_table_name(table_name, '$1')||' DROP PRIMARY KEY', -2441);
            sql_util.executeDDL('ALTER TABLE '||staging.get_table_name(table_name, '$2')||' DROP PRIMARY KEY', -2441);
        ELSE
            sql_util.executeDDL('ALTER TABLE '||table_name||' DROP PRIMARY KEY', -2441);
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : alter_table
    -- Description : alters given table(s). Depending on table is a staging table
    --               the update statement will be performed in $1/$2 table.
    -- Input       : table_name - name of table
    --               modify_clause - the update clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.modify_table('STAGINGGROUP', 'MODIFY staginggroupid IS NULL')
    ------------------------------------------------------------------------------------------
    PROCEDURE alter_table(table_name IN VARCHAR2, alter_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT -1451) AS
    BEGIN
        staging.execute('ALTER TABLE', table_name, alter_clause, ignoreErrorCode);
    END alter_table;

    ------------------------------------------------------------------------------------------
    -- Name        : create_source_view
    -- Description : This procedure is used to create the source view.
    -- Input       : stagingTable - the staging table
    ------------------------------------------------------------------------------------------
    PROCEDURE create_source_view(stagingTable IN StagingTable%ROWTYPE)
    AS
        domainColumns    ddl.type_object_name_list;
        liveTableName    user_tables.table_name%TYPE := staging.get_live_table_name(stagingTable.tableName);
        srcConstraints   ddl.type_constraints;
        srcConstraint    ddl.type_constraint;
        refConstraint    ddl.type_constraint;
        fk               ddl.type_object_name_list;
        pk               ddl.type_object_name_list;
        cols             VARCHAR2(4000);
        domainFKFound    BOOLEAN := FALSE;

    BEGIN
        domainColumns := get_domainid_columns(stagingTable.tablename);
        IF stagingTable.domainSpecificFlag=1 AND domainColumns.COUNT=0 THEN

            -- get all constraints of given table
            srcConstraints := get_constraints(stagingTable.tablename, 'R');

            IF srcConstraints.COUNT=0 THEN
                RAISE_APPLICATION_ERROR(-20001,'Table '||liveTableName||' does not reference the domain table nor another table.');
                RETURN;
            END IF;

            FOR i IN srcConstraints.FIRST..srcConstraints.LAST
            LOOP

                srcConstraint := srcConstraints(i);
                refConstraint := ddl.get_constraint(srcConstraint.r_constraint_name);

                -- get column name of domain identifier
                domainColumns := get_domainid_columns(refConstraint.table_name);

                IF domainColumns.COUNT>0 THEN

                    -- get foreign key columns
                    fk := ddl.get_cons_columns(srcConstraint.constraint_name);

                    -- get primary key of referenced table
                    pk := ddl.get_cons_columns(refConstraint.constraint_name);

                    -- get columns of source table
                    cols := get_cs_string(get_tab_columns(srcConstraint.table_name), 'src.');

                    -- hide unused domainid column
                    cols := replace(cols, 'src.'||domainColumns(domainColumns.FIRST), '');
                    cols := replace(cols, ',,', ',');
                    cols := ltrim(cols, ',');
                    cols := rtrim(cols, ',');

                    sql_util.executeDDL('CREATE OR REPLACE VIEW '||staging.get_table_name(stagingTable.tableName, '$S')||
                                        ' AS SELECT '||cols||', ref.'||domainColumns(domainColumns.FIRST)||
                                        ' FROM '||srcConstraint.table_name||' src, '||refConstraint.table_name||' ref'||
                                        ' WHERE '||join_columns('src.', fk, 'ref.', pk));
                    domainFKFound := TRUE;
                    EXIT; -- view successfully created
                END IF;
            END LOOP;

            IF NOT domainFKFound THEN
                RAISE_APPLICATION_ERROR(-20002,'Table '||liveTableName||' does not reference the domain table nor another table.');
            END IF;

        ELSE
            sql_util.executeDDL(
                'CREATE OR REPLACE VIEW '||staging.get_table_name(stagingTable.tableName, '$S')||
                ' AS SELECT * FROM '||stagingTable.tableName);
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : is_synonym
    -- Description : This function returns true if given object is an synonym.
    -- Input       : aObjectName - the object name
    -- Output      : true if given object is a synonym
    -- Example     : exec staging_ddl.is_synonym('DOMAIN')
    ------------------------------------------------------------------------------------------
    FUNCTION is_synonym(aObjectName IN user_synonyms.synonym_name%TYPE) RETURN BOOLEAN
    AS
        i NUMBER(1);
    BEGIN
        SELECT count(*) INTO i FROM user_synonyms WHERE synonym_name=upper(aObjectName);
        RETURN i=1;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : restore_table
    -- Description : This procedure is used to restore original table.
    --               All indexes and constraints are renamed, too.
    -- Input       : tableName - the name of table
    ------------------------------------------------------------------------------------------
    PROCEDURE restore_table(aTableName IN VARCHAR2)
    AS
        liveTableName user_tables.table_name%TYPE;
        cons ddl.type_constraints;
        indx ddl.type_object_name_list;
        name user_objects.object_name%TYPE;
    BEGIN

        SELECT table_name INTO liveTableName FROM user_synonyms WHERE synonym_name=aTableName;

        -- rename original table and
        -- create synonym for original table
        sql_util.executeDDL('DROP SYNONYM '||aTableName, -1434);
        ddl.rename_table(liveTableName, aTableName);

        -- rename constraints
        cons := get_constraints(aTableName);
        IF cons.COUNT>0 THEN
            FOR i IN cons.FIRST..cons.LAST LOOP
                name := replace(cons(i).constraint_name, '$1', '');
                name := replace(name, '$2', '');
                IF name<>cons(i).constraint_name THEN
                    sql_util.execute('ALTER TABLE '||aTableName||
                                     ' RENAME CONSTRAINT '||cons(i).constraint_name||
                                     ' TO '||name, -2264);
                END IF;
            END LOOP;
        ELSE
            logger.log(aTableName||' does not possess any constraints.');
        END IF;

        -- rename indexes
        indx := get_indexes(aTableName);
        IF indx.COUNT>0 THEN
            FOR i IN indx.FIRST..indx.LAST LOOP
                name := replace(indx(i), '$1', '');
                name := replace(name, '$2', '');
                IF name<>indx(i) THEN
                    sql_util.executeDDL('ALTER INDEX '||indx(i)||' RENAME TO '||name, -2264);
                END IF;
            END LOOP;
        ELSE
            logger.log('No indexes found for table '||aTableName);
        END IF;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : rename_table
    -- Description : This procedure is used to rename given table to a staging table.
    --               All indexes and constraints are renamed, too.
    -- Input       : tableName - the name of table
    --               suffix    - the staging suffix ('$1', '$2')
    ------------------------------------------------------------------------------------------
    PROCEDURE rename_table(aTableName IN VARCHAR2, suffix IN VARCHAR2)
    AS
        dstTableName user_tables.table_name%TYPE := staging.get_table_name(aTableName, suffix);
        cons ddl.type_constraints;
        indx ddl.type_object_name_list;
        name user_objects.object_name%TYPE;
    BEGIN
        ddl.drop_table(dstTableName);

        -- rename original table and
        -- create synonym for original table
        ddl.rename_table(aTableName, dstTableName);
        sql_util.executeDDL('CREATE SYNONYM '||aTableName||' FOR '||dstTableName);

        -- rename constraints
        cons := get_constraints(dstTableName);
        IF cons.COUNT>0 THEN
            FOR i IN cons.FIRST..cons.LAST LOOP
                name := staging.get_constraint_name(cons(i).constraint_name, dstTableName);
                IF name=cons(i).constraint_name THEN
                   logger.log(cons(i).constraint_name||' does not abides the naming rules of Enfinity Suite constraints.');
                ELSIF cons(i).constraint_name LIKE 'SYS\_%' ESCAPE '\' THEN
                   logger.log(cons(i).constraint_name||' starts with "SYS_". It is handled as system constraint.');
                ELSE
                    sql_util.execute('ALTER TABLE '||dstTableName||
                                     ' RENAME CONSTRAINT '||cons(i).constraint_name||
                                     ' TO '||name, -2264);
                END IF;
            END LOOP;
        ELSE
            logger.log(aTableName||' does not possess any constraints.');
        END IF;

        -- rename indexes
        indx := get_indexes(dstTableName);
        IF indx.COUNT>0 THEN
            FOR i IN indx.FIRST..indx.LAST LOOP
                name := staging.get_index_name(indx(i), dstTableName);
                IF name=indx(i) THEN
                    logger.log('Can not rename index '||indx(i)||' TO '||name);
                ELSIF indx(i) LIKE 'SYS_%' THEN
                    logger.log(indx(i)||' is a system constraint and need not to be renamed.');
                ELSE
                    sql_util.executeDDL('ALTER INDEX '||indx(i)||' RENAME TO '||name, -2264);
                END IF;
            END LOOP;
        ELSE
            logger.log('No indexes found for table '||aTableName);
        END IF;

        -- make sure correct live table name suffix is set
        UPDATE stagingtable SET livetablenamesuffix=suffix, oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tableName = aTableName; COMMIT;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        :
    -- Description : This procedure is used to prepare constraints.
    -- Input       : tableName - the name table
    --
    -- Example     : exec staging_ddl.prepare_constraints('DOMAIN')
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_constraints
    (
        aTableName          IN user_tables.table_name%TYPE
    )
    AS
        aTable       stagingtable%ROWTYPE;
        tableName    user_tables.table_name%TYPE := upper(aTableName);
        table$1      user_tables.table_name%TYPE;
        table$2      user_tables.table_name%TYPE;
        constraints  ddl.type_constraints;
    BEGIN
        aTable := staging.get_staging_table(aTableName);
        -- get underlying real table names of staging environment
        table$1 := staging.get_table_name(tableName, aTable.livetablenamesuffix);
        IF aTable.livetablenamesuffix='$1' THEN
            table$2 := staging.get_table_name(tableName, '$2');
        ELSE
            table$2 := staging.get_table_name(tableName, '$1');
        END IF;

        constraints := get_constraints(aTableName);
        copy_named_constraints(constraints, table$1, table$2);
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_table
    -- Description : This procedure is used to copy the structure of a table.
    -- Input       : tableName - the name table
    --               aEnfinityVersion - the enfinity version number
    -- Example     : exec staging_ddl.prepare_table('DOMAIN', '6.5.0.0')
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_table
    (
        aTableName          IN user_tables.table_name%TYPE,
        aEnfinityVersion    IN VARCHAR2
    )
    AS
        aTable       stagingtable%ROWTYPE;
        tableName    user_tables.table_name%TYPE := upper(aTableName);
        table$1      user_tables.table_name%TYPE;
        table$2      user_tables.table_name%TYPE;
        handle       NUMBER;
        transHandle  NUMBER;
        tableDDLs    sys.ku$_ddls;
        stmt         CLOB;
        stmt_comment CLOB;
        stmt_enftab  VARCHAR2(2000);
        constraints  ddl.type_constraints;
    BEGIN

        aTable := staging.get_staging_table(aTableName);

        IF aTable.preparationflag = 1 THEN
            logger.log('Staging table '||aTableName||' is already prepared!');
            RETURN;
        END IF;

        -- get underlying real table names of staging environment
        table$1 := staging.get_table_name(tableName, aTable.livetablenamesuffix);
        IF aTable.livetablenamesuffix='$1' THEN
            table$2 := staging.get_table_name(tableName, '$2');
        ELSE
            table$2 := staging.get_table_name(tableName, '$1');
        END IF;

        -- restore original table if necessary
        IF is_synonym(tableName) THEN
            logger.log('Staging environment already exists. Restore original table first...');
            restore_table(tableName);

        END IF;

        logger.log('Staging environment does not exists. Starting creating it...');
        rename_table(tableName, aTable.livetablenamesuffix);
        ddl.drop_table(table$2);

        handle := dbms_metadata.open('TABLE');

        dbms_metadata.set_count(handle, 1);
        dbms_metadata.set_filter(handle, 'NAME', upper(table$1));

        transHandle := dbms_metadata.add_transform(handle, 'DDL');
        dbms_metadata.set_transform_param(transHandle, 'CONSTRAINTS_AS_ALTER', true);

        LOOP
            tableDDLs := dbms_metadata.fetch_ddl(handle);
            EXIT WHEN tableDDLs IS NULL;

            FOR i IN 1..tableDDLs.COUNT
            LOOP

                stmt := tableDDLs(i).ddltext;

                IF stmt NOT LIKE '%ALTER TABLE % ADD CONSTRAINT %' AND
                   stmt NOT LIKE '%CREATE INDEX%' AND
                   stmt NOT LIKE '%CREATE UNIQUE INDEX%' THEN

                    -- all system generated constraints and the table itself
                    -- should be created here
                    stmt := replace(stmt, '"'||table$1||'"', '"'||table$2||'"');
                    sql_util.executeDDL(stmt);

                END IF;


                IF stmt LIKE '%CREATE TABLE%' THEN

                    copy_indexes(table$1, table$2);

                    --
                    -- insert table$1/2 for table(synonym) to enfinitytable
                    --
                    stmt_enftab :=
                    '
                    MERGE INTO enfinitytable d
                    USING (
                            SELECT ''_table$1_'' AS tableName, ''_version_'' AS version, cartridgeName, category, comments, oca
                              FROM enfinitytable
                             WHERE UPPER(tableName) = UPPER(''_table_'')
                               AND UPPER(version)   = UPPER(''_version_'')
                             UNION
                            SELECT ''_table$2_'' AS tableName, ''_version_'' AS version, cartridgeName, category, comments, oca
                              FROM enfinitytable
                             WHERE UPPER(tableName) = UPPER(''_table_'')
                               AND UPPER(version)   = UPPER(''_version_'')
                          ) s
                       ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
                     WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, category, version, lastModified, comments, oca)
                                           VALUES (s.tableName, s.cartridgeName, s.category, s.version, utctimestamp, s.comments, s.oca)
                    ';

                    stmt_enftab := replace(stmt_enftab, '_table$1_',  table$1);
                    stmt_enftab := replace(stmt_enftab, '_table$2_',  table$2);
                    stmt_enftab := replace(stmt_enftab, '_table_',    tableName);
                    stmt_enftab := replace(stmt_enftab, '_version_',  aEnfinityVersion);
                    --logger.log(stmt_enftab);
                    sql_util.executeDDL(stmt_enftab);

                    --
                    -- remove table(synonym) from enfinitytable
                    --
                    stmt_enftab :=
                    '
                    DELETE
                      FROM enfinitytable
                     WHERE UPPER(tableName) = UPPER(''_table_'')
                       AND version = ''_version_''
                    ';

                    stmt_enftab := replace(stmt_enftab, '_table_',   tableName);
                    stmt_enftab := replace(stmt_enftab, '_version_', aEnfinityVersion);
                    --logger.log(stmt_enftab);
                    sql_util.executeDDL(stmt_enftab);

                END IF;

            END LOOP;

        END LOOP;

        dbms_metadata.close(handle);
        dbms_lob.freetemporary(stmt);

        -- constraints := get_constraints(aTableName);
        -- copy_named_constraints(constraints, table$1, table$2);
        -- DEFERED: only if all tables prepared all potential target $2 tables exists to create foreign key constraints.
        -- usage: prepare_stg_tables_constraints or prepare_stg_table_constraints after prepare_staging_tables

        -- TODO move source view creation from Java-Layer to PL/SQL
        -- create_source_view(aTable);

        copy_comment(table$1, table$2);

        UPDATE stagingtable SET preparationflag=1, oca=oca+1, lastmodified=UTCTIMESTAMP() WHERE tableName=upper(aTableName); COMMIT;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_staging_table
    -- Description : This procedure is used to prepare given staging table
    -- Input       : aTableName    - the name of staging table
    --               log_behaviour - the log behaviour
    --               aEnfinityVersion - the enfinity version number
    -- Example     : exec staging_ddl.prepare_staging_table('DOMAIN', '6.5.0.0')
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_staging_table
    (
        aTableName          IN user_tables.table_name%TYPE,
        aEnfinityVersion    IN VARCHAR2,
        log_behaviour       IN VARCHAR2 DEFAULT sql_util.LOG_ON_ERROR
    )
    AS
    BEGIN
        dbms_output.enable(buffer_size => NULL);
        sql_util.set_log_behaviour(log_behaviour);

        prepare_table(aTableName, aEnfinityVersion);

        sp_compile_invalid_objects;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_staging_tables
    -- Description : This procedure is used to prepare all staging tables.
    -- Input       : log_behaviour - the log behaviour
    --               aEnfinityVersion - the enfinity version number
    -- Example     : exec staging_ddl.prepare_staging_tables('6.5.0.0')
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_staging_tables
    (
        aEnfinityVersion    IN VARCHAR2,
        log_behaviour       IN VARCHAR2 DEFAULT sql_util.LOG_ON_ERROR
    )
    AS
        table_list ddl.type_object_name_list;
    BEGIN
        dbms_output.enable(buffer_size => NULL);
        sql_util.set_log_behaviour(log_behaviour);

        SELECT tableName BULK COLLECT INTO table_list FROM stagingtable ORDER BY 1;

        IF table_list.COUNT=0 THEN
            logger.log('No unprepared staging tables found.');
            RETURN;
        END IF;

        FOR i IN table_list.FIRST..table_list.LAST LOOP
            prepare_table(table_list(i), aEnfinityVersion);
        END LOOP;

        sp_compile_invalid_objects;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_stg_tables_constraints
    -- Description : This procedure is used to prepare all constraints for all staging tables.
    -- Input       : log_behaviour - the log behaviour
    -- Example     : exec staging_ddl.prepare_stg_table_constraints
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_stg_tables_constraints
    (
        log_behaviour       IN VARCHAR2 DEFAULT sql_util.LOG_ON_ERROR
    )
    AS
        table_list ddl.type_object_name_list;
    BEGIN
        dbms_output.enable(buffer_size => NULL);
        sql_util.set_log_behaviour(log_behaviour);

        SELECT tableName BULK COLLECT INTO table_list FROM stagingtable ORDER BY 1;

        IF table_list.COUNT=0 THEN
            logger.log('No unprepared staging tables found.');
            RETURN;
        END IF;

        FOR i IN table_list.FIRST..table_list.LAST LOOP
            prepare_constraints(table_list(i));
        END LOOP;

        sp_compile_invalid_objects;
    END;

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_stg_table_constraints
    -- Description : This procedure is used to prepare all constraints for a staging table.
    -- Input       : aTableName    - the name of staging table
    --             : log_behaviour - the log behaviour
    -- Example     : exec staging_ddl.prepare_stg_table_constraints('DOMAIN')
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_stg_table_constraints
    (
        aTableName          IN user_tables.table_name%TYPE,
        log_behaviour       IN VARCHAR2 DEFAULT sql_util.LOG_ON_ERROR
    )
    AS
    BEGIN
        dbms_output.enable(buffer_size => NULL);
        sql_util.set_log_behaviour(log_behaviour);

        prepare_constraints(aTableName);

        sp_compile_invalid_objects;
    END;

END staging_ddl;
/

show errors;


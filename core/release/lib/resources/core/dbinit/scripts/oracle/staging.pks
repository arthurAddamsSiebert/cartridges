CREATE OR REPLACE PACKAGE staging IS

    ------------------------------------------------------------------------------------------
    -- Name        : staging
    -- Created     : Thomas Budich
    -- Description : This package contains staging related functions and procedures.
    ------------------------------------------------------------------------------------------

    MAX_TABLE_NAME_LENGTH CONSTANT NUMBER := 21;
    MAX_INDEX_NAME_LENGTH CONSTANT NUMBER := 19;

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
                                db_link_name IN VARCHAR2) RETURN VARCHAR2;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_table_name
    -- Description : This function returns the name of staging table being currently alive.
    -- Input       : tableName   - the name of staging table
    -- Output      : the current live table
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_table_name(tableName IN user_tables.table_name%TYPE) RETURN user_tables.table_name%TYPE;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_table_name
    -- Description : This function returns the name of staging table being currently not alive.
    -- Input       : tableName   - the name of staging table
    -- Output      : the current shadow table
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_table_name(tableName IN user_tables.table_name%TYPE) RETURN user_tables.table_name%TYPE;
    
    ------------------------------------------------------------------------------------------
    -- Name        : is_staging_table
    -- Description : This function returns TRUE if table with given name is a staging table,
    --               else FALSE.
    -- Input       : table_name - the name of table
    -- Output      : TRUE if given table is a staging table
    ------------------------------------------------------------------------------------------
    FUNCTION is_staging_table (table_name IN VARCHAR2) RETURN BOOLEAN;

    ------------------------------------------------------------------------------------------
    -- Name        : is_prepared
    -- Description : This function returns TRUE if table with given name is a staging table
    --               and it is prepared.
    -- Input       : table_name - the name of table
    -- Output      : TRUE if given table is a staging table and is prepared
    ------------------------------------------------------------------------------------------
    FUNCTION is_prepared (table_name IN VARCHAR2) RETURN BOOLEAN;

    ------------------------------------------------------------------------------------------
    -- Name        : get_staging_table
    -- Description : This function returns the staging table with given name.
    -- Input       : name - the name of staging table
    -- Output      : the staging table
    ------------------------------------------------------------------------------------------
    FUNCTION get_staging_table(name IN stagingtable.tablename%TYPE) RETURN stagingtable%ROWTYPE;

    ------------------------------------------------------------------------------------------
    -- Name        : is_staging_initialized
    -- Description : This function returns TRUE if staging environment is initialized.
    -- Output      : TRUE if staging is initialized
    ------------------------------------------------------------------------------------------
    FUNCTION is_staging_initialized RETURN BOOLEAN;

    ------------------------------------------------------------------------------------------
    -- Name        : cut_name
    -- Description : This function is used to cut the given name. Suffix like '_AV' or '_RA'
    --               are kept.
    -- Input       : name       - the name to be cutted
    --               max_length - the maximal length of name
    -- Output      : the cutted name
    ------------------------------------------------------------------------------------------
    FUNCTION cut_name(name IN VARCHAR2, max_length IN NUMBER DEFAULT MAX_TABLE_NAME_LENGTH) RETURN VARCHAR2;

    ------------------------------------------------------------------------------------------
    -- Name        : switch_suffix
    -- Description : This function is used to switch given synonym.
    -- Input       : currentSuffix - the current suffix
    -- Output      : the switch suffix
    ------------------------------------------------------------------------------------------
    FUNCTION switch_suffix(currentSuffix IN stagingtable.livetablenamesuffix%TYPE)
                           RETURN stagingtable.livetablenamesuffix%TYPE;

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
        RETURN user_tables.table_name%TYPE;

    ------------------------------------------------------------------------------------------
    -- Name        : get_index_name
    -- Description : This function returns the index name with given suffix. If table_name is
    --               larger than maximum table name length it will be cut.
    -- Input       : index_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               aDstTableName the name of destination table
    -- Output      : the index name with given suffix (e.g. USERGROUPASSIGNME$1_FK001)
    ------------------------------------------------------------------------------------------
    FUNCTION get_index_name (index_name IN VARCHAR2,
                             table_name IN VARCHAR2,
                             suffix IN VARCHAR2) RETURN VARCHAR2;
    ------------------------------------------------------------------------------------------
    -- Name        : get_index_name
    -- Description : This function returns the index name with given suffix. If table_name is
    --               larger than maximum table name length it will be cut.
    -- Input       : index_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               aDstTableName the name of destination table
    -- Output      : the index name with given suffix (e.g. USERGROUPASSIGNME$1_FK001)
    ------------------------------------------------------------------------------------------
    FUNCTION get_index_name (index_name IN VARCHAR2, aDstTableName IN user_tables.table_name%TYPE)
        RETURN user_indexes.index_name%TYPE;

    ------------------------------------------------------------------------------------------
    -- Name        : get_constraint_name
    -- Description : This function returns the constraint name with given suffix. If table_name is
    --               larger than maximum table name length it will be cut.
    -- Input       : constraint_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
    --               aDstTableName the name of destination table
    -- Output      : the constraint name with given suffix (e.g. USERGROUPASSIGNME$1_CO001)
    ------------------------------------------------------------------------------------------
    FUNCTION get_constraint_name (constraint_name IN VARCHAR2, aDstTableName IN VARCHAR2) RETURN VARCHAR2;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_tables
    -- Description : This function returns all shadow tables of given staging group.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_tables(aStagingGroupID IN staginggroup.uuid%TYPE) RETURN ddl.type_object_name_list;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_tables
    -- Description : This function returns all live tables of given staging group.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_tables(aStagingGroupID IN staginggroup.uuid%TYPE) RETURN ddl.type_object_name_list;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_table_refs
    -- Description : This function returns all foreign keys referencing the shadow tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_table_refs(aStagingGroupID IN staginggroup.uuid%TYPE)
        RETURN ddl.type_constraints;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_table_refs
    -- Description : This function returns all foreign keys referencing the live tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    -- Output      : a list of foreign keys
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_table_refs(aStagingGroupID IN staginggroup.uuid%TYPE)
        RETURN ddl.type_constraints;

    ------------------------------------------------------------------------------------------
    -- Name        : get_shadow_table_cons
    -- Description : This function returns all constraints of the shadow tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    --               aType           - the type of constraints
    -- Output      : a list of constraints
    ------------------------------------------------------------------------------------------
    FUNCTION get_shadow_table_cons(aStagingGroupID IN staginggroup.uuid%TYPE, aType IN user_constraints.constraint_type%TYPE DEFAULT NULL)
        RETURN ddl.type_constraints;

    ------------------------------------------------------------------------------------------
    -- Name        : get_live_table_cons
    -- Description : This function returns all constraints of the live tables
    --               assigned to staging group with given uuid.
    -- Input       : aStagingGroupID - the uuid of staging group
    --               aType           - the type of constraints
    -- Output      : a list of constraints
    ------------------------------------------------------------------------------------------
    FUNCTION get_live_table_cons(aStagingGroupID IN staginggroup.uuid%TYPE, aType IN user_constraints.constraint_type%TYPE DEFAULT NULL)
        RETURN ddl.type_constraints;

    ------------------------------------------------------------------------------------------
    -- Name        : staging.switch_references
    -- Description : This procedure switches all foreign keys referencing staging tables
    --               belonging to staging group with given UUID.
    -- Input       : groupid   - the UUID of staging group
    -- Output      : none
    -- Example     : exec staging.switch_references('UBMKAB3MZfoAAAD0OymCGwAO')
    ------------------------------------------------------------------------------------------
    PROCEDURE switch_references(groupid IN staginggroup.uuid%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : create_synonym
    -- Description : This procedure is used to create given synonym. If the synonym exists, it
    --               will be dropped before.
    -- Input       : synonymname   - the name of synonym
    --               tablename     - the name of table
    ------------------------------------------------------------------------------------------
    PROCEDURE create_synonym (synonymname IN user_synonyms.synonym_name%TYPE,
                              tablename   IN user_synonyms.table_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : staging.switch_synonyms
    -- Description : This procedure switches all synonyms of staging tables belonging to
    --               staging group with given UUID.
    -- Input       : groupid   - the UUID of staging group
    -- Output      : none
    -- Example     : exec staging.switch_synonyms('UBMKAB3MZfoAAAD0OymCGwAO')
    ------------------------------------------------------------------------------------------
    PROCEDURE switch_synonyms (groupid IN staginggroup.uuid%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : restore_synonyms
    -- Description : This procedure restores all synonyms of staging tables belonging to
    --               staging group with given UUID.
    -- Input       : groupid   - the UUID of staging group
    -- Example     : exec staging.restore_synonyms('UBMKAB3MZfoAAAD0OymCGwAO')
    ------------------------------------------------------------------------------------------
    PROCEDURE restore_synonyms (groupid IN staginggroup.uuid%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : restore_synonyms
    -- Description : This procedure restores all synonyms.
    -- Example     : exec staging.restore_synonyms
    ------------------------------------------------------------------------------------------
    PROCEDURE restore_synonyms;

    ------------------------------------------------------------------------------------------
    -- Name        : revoke_live_user_privs
    -- Description : It revokes some object privileges of editing system from user of
    --               live system.
    -- Input       : the schema name of live system user
    -- Output      : none
    -- Example     : exec staging.revoke_live_user_privs ('LIVE_USER')
    ------------------------------------------------------------------------------------------
    PROCEDURE revoke_live_user_privs(schema_name IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : grant_live_user_privs
    -- Description : It grants some object privileges of editing system to user of
    --               live system.
    -- Input       : the schema name of live system user
    -- Output      : none
    -- Example     : exec staging.grant_live_user_privs ('LIVE_USER')
    ------------------------------------------------------------------------------------------
    PROCEDURE grant_live_user_privs(schema_name IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : sync_live_with_editing_process
    -- Description : This procedure is used to synchronize the live with editing process.
    -- Input       : schema_name - the schema name of editing user or
    --               db_link     - database link to editing database
    -- Output      : none
    -- Example     : exec staging.sync_live_with_editing_process('EDIT_USER', null) or
    --               exec staging.sync_live_with_editing_process(null, 'ISEDITING') or
    ------------------------------------------------------------------------------------------
    PROCEDURE sync_live_with_editing_process(schema_name IN VARCHAR2, db_link IN VARCHAR2 );

    ------------------------------------------------------------------------
    -- Name        : execute
    -- Description : Performs given statement for given table or in case of
    --               a synonym for both $1/$2 tables.
    -- Input       : stmt       - the beginning of statement
    --               table_name - the name of table or synonym
    --               clause     - the end of statement
    -- Output      : none
    -- Example     : exec staging.execute('INSERT INTO', 'ATABLE', ' VALUES (1, ''test'')')
    ------------------------------------------------------------------------
    PROCEDURE execute(stmt IN VARCHAR2, table_name IN VARCHAR2, clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0);

    ------------------------------------------------------------------------------------------
    -- Name        : insert_into
    -- Description : inserts given content into given table. Depending on table is a staging table
    --               the insert statement will be performed in $1/$2 table.
    -- Input       : table_name - name of table
    --               insert_clause - the insert clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.insert_into('DOMAININFORMATION', '(domainid, domainname) VALUES (''afsfffds'', ''aDomain'')')
    ------------------------------------------------------------------------------------------
    PROCEDURE insert_into(table_name IN VARCHAR2, insert_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0);

    ------------------------------------------------------------------------------------------
    -- Name        : delete_from
    -- Description : deletes content from given table. Depending on table is a staging table
    --               the delete statement will be performed for both $1/$2 table.
    -- Input       : table_name - name of table
    --               delete_clause - the delete clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.delete_from('DOMAININFORMATION', 'WHERE uuid=''asdfsadfsdf''')
    ------------------------------------------------------------------------------------------
    PROCEDURE delete_from(table_name IN VARCHAR2, delete_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0);

    ------------------------------------------------------------------------------------------
    -- Name        : update_table
    -- Description : updates given content in given table. Depending on table is a staging table
    --               the update statement will be performed in $1/$2 table.
    -- Input       : table_name - name of table
    --               update_clause - the update clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.update_table('DOMAININFORMATION', 'SET domainname=''aname'' WHERE uuid=''asdfsadfsdf''')
    ------------------------------------------------------------------------------------------
    PROCEDURE update_table(table_name IN VARCHAR2, update_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT 0);

END;
/

show errors;

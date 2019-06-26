CREATE OR REPLACE PACKAGE staging_ddl IS

    ------------------------------------------------------------------------------------------
    -- Name        : staging_ddl
    -- Created     : Thomas Kober und Budich
    -- Description : This package contains staging related DDL functions and procedures.
    ------------------------------------------------------------------------------------------

    ------------------------------------------------------------------------------------------
    -- Name        : get_cs_string
    -- Description : This function returns a string representation of give object name list.
    -- Input       : list   - a list of object names
    --               prefix - the prefix used in comma separated list for each column
    -- Output      : string representation of given list
    ------------------------------------------------------------------------------------------
    FUNCTION get_cs_string(list IN ddl.type_object_name_list, prefix IN VARCHAR2 DEFAULT NULL) RETURN VARCHAR2;

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
                          prefix2 IN VARCHAR2, cols2 IN ddl.type_object_name_list) RETURN VARCHAR2;

    ------------------------------------------------------------------------------------------
    -- Name        : get_domainid_columns
    -- Description : This function returns the name of all columns referencing a domain.
    -- Input       : tableName - the name of table
    -- Output      : domainid columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_domainid_columns(tableName IN user_tables.table_name%TYPE)
        RETURN ddl.type_object_name_list;

    ------------------------------------------------------------------------------------------
    -- Name        : is_synonym
    -- Description : This function returns true if given object is an synonym.
    -- Input       : aObjectName - the object name
    -- Output      : true if given object is a synonym
    -- Example     : exec staging_ddl.copy_table('DOMAIN')
    ------------------------------------------------------------------------------------------
    FUNCTION is_synonym(aObjectName IN user_synonyms.synonym_name%TYPE) RETURN BOOLEAN;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_staging_table
    -- Description : This procedure is used to drop a table of a normal or staging table.
    --               In second case the table is dropped as $1 as well as $2 table.
    -- Input       : table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging_ddl.drop_staging_table('DOMAIN')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_staging_table(table_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_staging_trigger
    -- Description : This procedure is used to drop a staging trigger of a staging table.
    --               The staging table trigger is dropped as T$<table_name>$1 as well as
    --               T$<table_name>$2 satging table trigger.
    -- Input       : table_name  - the name of staging table
    -- Example     : exec staging_ddl.drop_staging_trigger('BASICADDRESS')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_staging_trigger(table_name  IN user_objects.object_name%TYPE);

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
                             clause          IN VARCHAR2);

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
                         col_def IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_column
    -- Description : This procedure is used to drop a column of a normal or staging table.
    --               In second case the column is dropped in $1 as well as $2 table.
    -- Input       : table_name  - the name of table or (for staging) the synonym name
    --               column_name - the name of column to be dropped
    -- Example     : exec staging.drop_column('RESOURCEPO', 'lockingthreadid')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_column(table_name  IN user_tables.table_name%TYPE,
                          column_name IN user_tab_columns.column_name%TYPE);

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
                           recreate    IN NUMBER DEFAULT 1);

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
                               parallel    IN NUMBER DEFAULT 2);

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
    );

    ------------------------------------------------------------------------------------------
    -- Name        : drop_index
    -- Description : This procedure is used to drop an index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : index_name  - the index name
    --               table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging.drop_index('ServiceLineItem_FK003', 'ServiceLineItem')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_index(index_name IN user_indexes.index_name%TYPE,
                         table_name IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_ctx_index
    -- Description : This procedure is used to drop a context index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : index_name  - the index name
    --               table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging.drop_index('DOMAIN_AV_STR_VAL', 'DOMAIN_AV')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_ctx_index(index_name IN user_indexes.index_name%TYPE,
                             table_name IN VARCHAR2);

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
                            col_pos  IN user_ind_columns.column_position%TYPE := 1);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_ctx_indexes
    -- Description : This procedure is used to drop all context index of a normal or staging table.
    --               In second case the index is dropped for $1 as well as $2 table.
    -- Input       : table_name  - the name of table or (for staging) the synonym name
    -- Example     : exec staging.drop_indexes('DOMAIN_AV')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_ctx_indexes(table_name IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_table
    -- Description : This procedure is used to copy the structure of a table.
    -- Input       : tableName - the name table
    --               aEnfinityVersion - the enfinity version number
    -- Example     : exec staging_ddl.copy_table('DOMAIN', '6.5.0.0')
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_table
    (
        aTableName          IN user_tables.table_name%TYPE,
        aEnfinityVersion    IN VARCHAR2
    );

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
    PROCEDURE create_primary_key(table_name IN VARCHAR2,
                                 columns_def IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_primary_key
    -- Description : Drops primary key of given table. If given table is a staging table the
    --               primary key of both $ tables is dropped, otherwise the original primary
    --               key is dropped.
    -- Input       : table_name - name of table
    -- Output      : none
    -- Example     : exec staging.drop_primary_key('DOMAIN')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_primary_key(table_name IN VARCHAR2);


    ------------------------------------------------------------------------------------------
    -- Name        : alter_table
    -- Description : alters given table(s). Depending on table is a staging table
    --               the update statement will be performed in $1/$2 table.
    -- Input       : table_name - name of table
    --               modify_clause - the update clause
    --               ignoreErrorCode - the error which should be ignored.
    -- Example     : exec staging.modify_table('STAGINGGROUP', 'MODIFY staginggroupid IS NULL')
    ------------------------------------------------------------------------------------------
    PROCEDURE alter_table(table_name IN VARCHAR2, alter_clause IN VARCHAR2, ignoreErrorCode IN NUMBER DEFAULT -1451);

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
    );

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
    );

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
    );

    ------------------------------------------------------------------------------------------
    -- Name        : prepare_stg_tables_constraints
    -- Description : This procedure is used to prepare all constraints for all staging tables.
    -- Input       : log_behaviour - the log behaviour
    -- Example     : exec staging_ddl.prepare_stg_table_constraints
    ------------------------------------------------------------------------------------------
    PROCEDURE prepare_stg_tables_constraints
    (
        log_behaviour       IN VARCHAR2 DEFAULT sql_util.LOG_ON_ERROR
    );


END;
/

show errors;

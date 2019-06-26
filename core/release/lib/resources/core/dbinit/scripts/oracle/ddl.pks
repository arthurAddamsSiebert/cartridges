CREATE OR REPLACE PACKAGE ddl IS

    ------------------------------------------------------------------------------------------
    -- Name        : ddl
    -- Created     : Thomas Budich
    -- Description : This package contains some ddl help functions.
    ------------------------------------------------------------------------------------------

    TYPE type_object_name_list IS TABLE OF user_objects.object_name%TYPE;
    TYPE type_column_name_list IS TABLE OF user_tab_columns.column_name%TYPE;
    TYPE type_table_columns IS TABLE OF user_tab_columns%ROWTYPE;
    TYPE type_constraint IS RECORD (
        OWNER               VARCHAR2(30),
        CONSTRAINT_NAME     VARCHAR2(30),
        CONSTRAINT_TYPE     VARCHAR2(1),
        TABLE_NAME          VARCHAR2(30),
        R_OWNER             VARCHAR2(30),
        R_CONSTRAINT_NAME   VARCHAR2(30),
        DELETE_RULE         VARCHAR2(9),
        STATUS              VARCHAR2(8),
        DEFERRABLE          VARCHAR2(14),
        DEFERRED            VARCHAR2(9),
        VALIDATED           VARCHAR2(13),
        GENERATED           VARCHAR2(14),
        BAD                 VARCHAR2(3),
        RELY                VARCHAR2(4),
        LAST_CHANGE         DATE,
        INDEX_OWNER         VARCHAR2(30),
        INDEX_NAME          VARCHAR2(30),
        INVALID             VARCHAR2(7),
        VIEW_RELATED        VARCHAR2(14)
    );
    TYPE type_constraints IS TABLE OF type_constraint;

    ------------------------------------------------------------------------------------------
    -- Name        : to_string
    -- Description : Returns string representation of object list
    -- Input       : none
    -- Output      : string representation of given object name list
    ------------------------------------------------------------------------------------------
    FUNCTION to_string(objects IN type_object_name_list) RETURN VARCHAR2;

    -----------------------------------------------------------------------------------------
    -- Name        : is_recyclebin
    -- Description : This function returns TRUE if 10g recyclebin is present, else FALSE.
    -- Input       : none
    -- Output      : TRUE if recyclebin exists, else FALSE
    ------------------------------------------------------------------------------------------
    FUNCTION  is_recyclebin RETURN BOOLEAN;

    ------------------------------------------------------------------------------------------
    -- Name        : is_synonym
    -- Description : This function returns true if given object is an synonym.
    -- Input       : objectName - the object name
    -- Output      : true if given object is a synonym
    ------------------------------------------------------------------------------------------
    FUNCTION is_synonym(objectName IN user_synonyms.synonym_name%TYPE) RETURN BOOLEAN;

    ------------------------------------------------------------------------------------------
    -- Name        : is_object_exists
    -- Description : This function returns TRUE if given object exists.
    -- Input       : objectName - the object name
    -- Input       : objectType - the object type or null
    -- Output      : TRUE if given object of type exists.
    ------------------------------------------------------------------------------------------
    FUNCTION is_object_exists(objectName IN user_objects.object_name%TYPE,
                              objectType IN user_objects.object_type%TYPE DEFAULT NULL)
        RETURN BOOLEAN;

    ------------------------------------------------------------------------
    -- Name        : get_constraints
    -- Description : This method returns all constraints of a given table.
    -- Input       : aTableName - the name of table
    --               aType      - the type of constraints (defautl is null, means all)
    --               prefix     - prefix of all constraints cache tables
    -- Output      : the list of all constraints belonging to given table
    ------------------------------------------------------------------------
    FUNCTION get_constraints(aTableName IN user_tables.table_name%TYPE,
                             aType IN user_constraints.constraint_type%TYPE DEFAULT NULL,
                             prefix IN VARCHAR2 DEFAULT '')
        RETURN type_constraints;

    ------------------------------------------------------------------------------------------
    -- Name        : migrate_constraint
    -- Description : This procedure is used to add a constraint on a table with given name.
    --               If the constraint exists per name or list of columns, it will be dropped before.
    -- Input       : aTableName      - the name of table
    --               aConstraintName - the name of constraint
    --               clause          - the constraint clause
    -- Example     : exec ddl.migrate_constraint('BASICADDRESS', 'BASICADDRESS_CO001', 'FOREIGN KEY (domainid) REFERENCES domain(uuid)')
    ------------------------------------------------------------------------------------------
    PROCEDURE migrate_constraint(aTableName  IN user_objects.object_name%TYPE,
                                 aConstraintName IN user_objects.object_name%TYPE,
                                 clause          IN VARCHAR2);

    ------------------------------------------------------------------------
    -- Name        : get_indexes
    -- Description : This method returns all indexes of a given table.
    -- Input       : aTableName - the name of table
    -- Output      : the list of all indexes belonging to given table
    ------------------------------------------------------------------------
    FUNCTION get_indexes(aTableName IN user_tables.table_name%TYPE, prefix IN VARCHAR2 DEFAULT '')
        RETURN type_object_name_list;

    ------------------------------------------------------------------------
    -- Name        : get_index_columns
    -- Description : This method returns a comma separated string of columns
    --               belonging to given index.
    -- Input       : aIndexName - the name of index
    --               prefix     - prefix of cached dict views
    -- Output      : the columns of index
    ------------------------------------------------------------------------
    FUNCTION get_index_columns (aIndexName IN user_indexes.index_name%TYPE,
                                prefix IN VARCHAR2 DEFAULT '') RETURN VARCHAR2;

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
                               parallel    IN NUMBER DEFAULT 2);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_ctx_indexes
    -- Description : This procedure is used to drop all indexes of a table.
    -- Input       : aTableName  - the name of table
    -- Example     : exec ddl.drop_ctx_indexes('DOMAIN_AV')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_ctx_indexes(aTableName IN VARCHAR2);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_all_ctx_indexes
    -- Description : This procedure is used to drop all indexes in current schema.
    -- Example     : exec ddl.drop_all_ctx_indexes()
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_all_ctx_indexes;

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
                            prefix IN VARCHAR2 DEFAULT '');

    ------------------------------------------------------------------------------------------
    -- Name        : get_constraint
    -- Description : This function returns the constraint with given name.
    -- Input       : aConstraintName  - the name of constraint
    --               prefix           - prefix of all constraints cache tables
    -- Output      : the constraint
    ------------------------------------------------------------------------------------------
    FUNCTION get_constraint(aConstraintName IN user_constraints.constraint_name%TYPE,
                            prefix IN VARCHAR2 DEFAULT '')
        RETURN type_constraint;

    ------------------------------------------------------------------------------------------
    -- Name        : get_fk_const_by_tab_col_names
    -- Description : This function returns the fk constraint for given tablename
    --               and position sorted column list.
    -- Input       : aTableName
    -- Input       : aColumnNameList
    -- Output      : the constraint name
    ------------------------------------------------------------------------------------------
    FUNCTION get_fk_const_by_tab_col_names(aTableName      IN user_constraints.table_name%TYPE,
                                           aColumnNameList IN type_column_name_list,
                                           prefix          IN VARCHAR2 DEFAULT '')
        RETURN user_constraints.constraint_name%TYPE;

    ------------------------------------------------------------------------
    -- Name        : get_cartridge_foreign_keys
    -- Description : This method returns all constraints belonging to given
    --               cartridge.
    -- Input       : cartridge  - the name of cartridge
    --               prefix     - prefix of all constraints cache tables
    -- Output      : the list of all constraints belonging to given cartridge
    ------------------------------------------------------------------------
    FUNCTION get_cartridge_foreign_keys(cartridge IN VARCHAR2, prefix IN VARCHAR2 DEFAULT '')
        RETURN type_constraints;

    ------------------------------------------------------------------------
    -- Name        : get_all_foreign_keys
    -- Description : This method returns all foreign keys.
    -- Input       : prefix     - prefix of all constraints cache tables
    -- Output      : the list of all foreign keys
    ------------------------------------------------------------------------
    FUNCTION get_all_foreign_keys (prefix IN VARCHAR2 DEFAULT '') RETURN type_constraints;

    ------------------------------------------------------------------------------------------
    -- Name        : get_references
    -- Description : This function returns all foreign keys referencing given table.
    -- Input       : aTableName  - the name of table
    --               prefix      - prefix of all constraints cache tables
    -- Output      : list of foreign keys referencing given table
    ------------------------------------------------------------------------------------------
    FUNCTION get_references(aTableName IN user_tables.table_name%TYPE, prefix IN VARCHAR2 DEFAULT '')
        RETURN type_constraints;


    ------------------------------------------------------------------------------------------
    -- Name        : get_cons_columns
    -- Description : This function returns the list of all columns of given constraint.
    -- Input       : aConstraintName - the constraint name
    --               prefix          - the prefix used in comma separated list for each column
    -- Output      : comma separated list of constraint columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_cons_columns(aConstraintName IN user_constraints.constraint_name%TYPE,
                              prefix IN VARCHAR2 DEFAULT '')
        RETURN type_object_name_list;

    ------------------------------------------------------------------------------------------
    -- Name        : get_tab_columns
    -- Description : This function returns the columns of given table.
    -- Input       : aTableName - the table name
    -- Output      : table columns
    ------------------------------------------------------------------------------------------
    FUNCTION get_tab_columns(aTableName IN user_tables.table_name%TYPE) RETURN type_object_name_list;

    ------------------------------------------------------------------------
    -- Name        : disable_constraints
    -- Description : This method is used to disable all constraints
    --               of given list.
    -- Input       : constraints - list of constraints
    ------------------------------------------------------------------------
    PROCEDURE disable_constraints(constraints IN type_constraints);

    ------------------------------------------------------------------------
    -- Name        : enable_constraints
    -- Description : This method is used to enable all constraints
    --               of given list.
    -- Input       : constraints - list of constraints
    ------------------------------------------------------------------------
    PROCEDURE enable_constraints(constraints IN type_constraints);

    ------------------------------------------------------------------------
    -- Name        : set_fk_constraint_properties
    -- Description : This method is used to set the 'EnableFKConstraints' and
    --               'ValidateFKConstraints' property  for foreign key constraints
    --               within preferences for Domain 'system'.
    -- Input       : enable_value - 'true' or 'false', default is 'true'
    -- Input       : validate_value - 'true' or 'false', default is 'true'
    ------------------------------------------------------------------------
    PROCEDURE set_fk_constraint_properties(enable_value VARCHAR2 DEFAULT 'true',
                                           validate_value VARCHAR2 DEFAULT 'true');

    ------------------------------------------------------------------------------------------
    -- Name        : drop_constraints
    -- Description : This procedure is used to drop all constraints defined by given list.
    -- Input       : constraints - list of constraints
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_constraints(constraints IN type_constraints);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_table
    -- Description : This procedure is used to drop a table.
    -- Input       : table_name  - the name of table
    -- Example     : exec ddl.drop_table('RESOURCEPO')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_table(table_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_view
    -- Description : This procedure is used to drop a view.
    -- Input       : view_name  - the name of view
    -- Example     : exec ddl.drop_view('RESOURCEPO')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_view(table_name IN user_objects.object_name%TYPE);
    
    ------------------------------------------------------------------------------------------
    -- Name        : drop_index
    -- Description : This procedure is used to drop an index.
    -- Input       : index_name  - the name of index
    -- Example     : exec ddl.drop_index('ISRESOURCE_IE001')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_index(index_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : rename_index
    -- Description : This procedure is used to rename an index.
    -- Input       : index_name  - the name of index
    -- Example     : exec ddl.drop_index('ISRESOURCE_IE001')
    ------------------------------------------------------------------------------------------
    PROCEDURE rename_index(oldIndexName IN user_objects.object_name%TYPE,
                           newIndexName IN user_objects.object_name%TYPE,
                           force IN BOOLEAN DEFAULT TRUE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_trigger
    -- Description : This procedure is used to drop a trigger.
    -- Input       : trigger_name  - the name of trigger
    -- Example     : exec ddl.drop_trigger('T$BASICADDRESS')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_trigger(trigger_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_synonym
    -- Description : This procedure is used to drop given synonym.
    -- Input       : synonym_name  - the name of synonym
    -- Example     : exec ddl.drop_synonym('PRODUCT')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_synonym(synonym_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_materialized_view
    -- Description : This procedure is used to drop given materialized view.
    -- Input       : name  - the name of materialized view
    -- Example     : exec ddl.drop_maeterialized_view('ECLASSCOUNT')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_materialized_view(name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_sequence
    -- Description : This procedure is used to drop given sequence.
    -- Input       : name  - the name of sequence
    -- Example     : exec ddl.drop_sequence('ASEQUENCE')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_sequence(name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : drop_procedure
    -- Description : This procedure is used to drop given procedure.
    -- Input       : name  - the name of procedure
    -- Example     : exec ddl.drop_sequence('APROCEDURE')
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_procedure(name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : create_synonym
    -- Description : This procedure is used to create given synonym.
    -- Input       : synonym_name  - the name of synonym
    --               object_name   - the name of object
    -- Example     : exec ddl.create_synonym('PRODUCT', 'PRODUCT$1')
    ------------------------------------------------------------------------------------------
    PROCEDURE create_synonym(synonym_name IN user_objects.object_name%TYPE,
                             object_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------------------------
    -- Name        : replace_synonym
    -- Description : This procedure is used to replace given synonym.
    -- Input       : synonym_name  - the name of synonym
    --               object_name   - the name of object
    -- Example     : exec ddl.create_synonym('PRODUCT', 'PRODUCT$1')
    ------------------------------------------------------------------------------------------
    PROCEDURE replace_synonym(synonym_name IN user_objects.object_name%TYPE,
                              object_name IN user_objects.object_name%TYPE);

    ------------------------------------------------------------------------
    -- Name        : rename_table
    -- Description : renames a table and updates according dict cache views.
    -- Input       : srcName - The source table name.
    --               dstName - The destination table name.
    --               prefix  - the prefix of cache tables
    -- Example     : exec ddl.cache_cons_dict_views
    ------------------------------------------------------------------------
    PROCEDURE rename_table(srcName IN VARCHAR2, dstName IN VARCHAR2,
        dict_view_prefix IN VARCHAR2 DEFAULT '');

    ------------------------------------------------------------------------
    -- Name        : cache_cons_dict_views
    -- Description : caches the dictionary views containing constraints
    --               information.
    -- Input       : prefix - the prefix of cache tables
    -- Example     : exec ddl.cache_cons_dict_views
    ------------------------------------------------------------------------
    PROCEDURE cache_cons_dict_views(prefix IN VARCHAR2);

    ------------------------------------------------------------------------
    -- Name        : cache_index_dict_views
    -- Description : caches the dictionary views containing index
    --               information.
    -- Input       : prefix - the prefix of cache tables
    -- Example     : exec ddl.cache_index_dict_views
    ------------------------------------------------------------------------
    PROCEDURE cache_index_dict_views(prefix IN VARCHAR2);

    ------------------------------------------------------------------------
    -- Name        : compile_object
    -- Description : Compiles given and dependent objects in database.
    -- Input       : aType    - the type of object
    --               anObject - the name of object
    ------------------------------------------------------------------------
    PROCEDURE compile_object(aType IN VARCHAR2, anObject IN VARCHAR2);

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given array of constraints
    -- Input       : cons - the array of constraints
    ------------------------------------------------------------------------
    PROCEDURE log(cons ddl.type_constraints);

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given array of columns
    -- Input       : cols - the array of columns
    ------------------------------------------------------------------------
    PROCEDURE log(cols ddl.type_table_columns);

    ------------------------------------------------------------------------
    -- Name        : log
    -- Description : logs given array of object names
    -- Input       : objects - array of objects
    -- Example     : exec ddl.log(ddl.get_cons_columns('adf'))
    ------------------------------------------------------------------------
    PROCEDURE log(objects ddl.type_object_name_list);

	------------------------------------------------------------------------
    -- Name        : clear_table
    -- Description : This method truncates the given table with the 'REUSE STORAGE' option.
    -- Input       : aTableName - the name of table
    -- Example     : exec ddl.clear_table('IPRODUCTCATEGORYASSIG$2')
    ------------------------------------------------------------------------
    PROCEDURE clear_table(aTableName  IN user_objects.object_name%TYPE);
	
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
    PROCEDURE migrate_table_column(table_name IN VARCHAR2, column_name IN VARCHAR2, data_type IN VARCHAR2);
    
END;
/

show errors;

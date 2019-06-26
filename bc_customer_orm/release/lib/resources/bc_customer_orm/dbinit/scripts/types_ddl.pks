CREATE OR REPLACE PACKAGE types_ddl IS

    ------------------------------------------------------------------------------------------
    -- Name        : types_ddl
    -- Description : This package contains some stored ddl for collection types
    --               and the creation/deletion helper.
    ------------------------------------------------------------------------------------------

    ------------------------------------------------------------------------------------------
    -- Name        : create_types
    -- Description : Create the stored types.
    -- Input       : none
    ------------------------------------------------------------------------------------------
    PROCEDURE create_types;

    ------------------------------------------------------------------------------------------
    -- Name        : drop_types
    -- Description : Drop the stored types.
    -- Input       : none
    ------------------------------------------------------------------------------------------
    PROCEDURE drop_types;

END;
/

SHOW ERROR

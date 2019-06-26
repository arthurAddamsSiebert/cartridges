/*

*******************************************************************************
File:    dbindex.ddl

Generated by JGen Code Generator from INTERSHOP Communications AG.
Generator version: Code Generator for Intershop 7.2 and later
*******************************************************************************
The JGen Code Generator software is the property of INTERSHOP Communications AG. 
Any rights to use are granted under the license agreement. 
Copyright (c) 1999-2012, all rights reserved.
*******************************************************************************

Please edit within the custom section only.

Oracle additional DDL statements to create/drop indices on
foreign, alternate, inversion entries, interMediaText(context)
and bitmap keys.
*******************************************************************************

*/

SET ECHO ON

SET SERVEROUTPUT ON SIZE 1000000

VARIABLE table_space      VARCHAR2(50)
VARIABLE recreate_indexes NUMBER;

EXEC :table_space := '&index_tablespace';
EXEC :recreate_indexes := '&recreate_indexes';

/*------------------------------------------------------------------------
                           custom index section
------------------------------------------------------------------------*/

-- //{{ index

PROMPT -- Pagelet unique compound index on ID and domainID
EXEC staging_ddl.create_index('PAGELET_CI001', 'PAGELET', '(ID,DOMAINID)', :table_space, 'UNIQUE', :recreate_indexes)

PROMPT -- PlaceholderDefinition unique compound index on ID and domainID
EXEC staging_ddl.create_index('PLACEHOLDERDEF_CI001', 'PLACEHOLDERDEF', '(ID,DOMAINID)', :table_space, 'UNIQUE', :recreate_indexes)

PROMPT -- PlaceholderAssignment unique compound index on ID and domainID
EXEC staging_ddl.create_index('PLACEHOLDER_PA_CI001', 'PLACEHOLDER_PA', '(ID,DOMAINID)', :table_space, 'UNIQUE', :recreate_indexes)

PROMPT -- SlotPageletAssignment unique compound index on ID and domainID
EXEC staging_ddl.create_index('SLOTPAGELETASSIGNMENT_CI001', 'SLOTPAGELETASSIGNMENT', '(ID,DOMAINID)', :table_space, 'UNIQUE', :recreate_indexes)

PROMPT -- Slot unique compound index on ParentPageletID and DefinitionQualifiedName
EXEC staging_ddl.create_index('SLOT_CI001', 'SLOT', '(PARENTPAGELETID,DEFINITIONQUALIFIEDNAME)', :table_space, 'UNIQUE', :recreate_indexes)

-- //}} index


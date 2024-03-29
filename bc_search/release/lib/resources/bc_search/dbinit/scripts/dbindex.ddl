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
-- //}} index

PROMPT /* Class com.intershop.component.search.internal.querydefinition.SearchQueryDefinitionPO */
PROMPT -- Alternate key indices
EXEC staging_ddl.create_index('SEARCHQUERYDEFINITION_AK001', 'SEARCHQUERYDEFINITION', '(name,domainID)', :table_space, 'UNIQUE', :recreate_indexes)

PROMPT -- Inversion Entry key indices
EXEC staging_ddl.create_index('SEARCHQUERYDEFINITION_IE999', 'SEARCHQUERYDEFINITION', '(GLOBALVISIBLEFlag)', :table_space, 'NONUNIQUE', :recreate_indexes)
EXEC staging_ddl.create_index('SEARCHQUERYDEFINITION_IE998', 'SEARCHQUERYDEFINITION', '(TYPE)', :table_space, 'NONUNIQUE', :recreate_indexes)


PROMPT /* Class com.intershop.component.search.internal.querydefinition.SearchQueryDefinitionPOAttributeValue */
PROMPT -- Foreign key indices
EXEC staging_ddl.create_index('SEARCHQUERYDEFINITIO_AV_FK002', 'SEARCHQUERYDEFINITIO_AV', '(ownerID)', :table_space, 'NONUNIQUE', :recreate_indexes)

PROMPT -- Inversion Entry key indices
EXEC staging_ddl.create_index('SEARCHQUERYDEFINITIO_AV_IE002', 'SEARCHQUERYDEFINITIO_AV', '(intValue)', :table_space, 'NONUNIQUE', :recreate_indexes)
EXEC staging_ddl.create_index('SEARCHQUERYDEFINITIO_AV_IE003', 'SEARCHQUERYDEFINITIO_AV', '(doubleValue)', :table_space, 'NONUNIQUE', :recreate_indexes)


PROMPT /* Class com.intershop.component.search.internal.searchaction.RedirectActionPO */
PROMPT -- Inversion Entry key indices


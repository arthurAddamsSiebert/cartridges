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
PROMPT /* Class com.intershop.component.region.internal.geoobject.CountryPO */
PROMPT -- Unique index on ID for AK access
EXEC staging_ddl.create_index('COUNTRY_AK001', 'COUNTRY', '(ID)', :table_space, 'UNIQUE', :recreate_indexes)
-- //}} index
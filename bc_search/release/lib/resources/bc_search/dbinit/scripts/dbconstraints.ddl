/*

****************************************************************
File:    dbconstraints.ddl

Generated by JGen Code Generator from INTERSHOP Communications AG.
Generator version: Code Generator for Intershop 7.2 and later
*******************************************************************************
The JGen Code Generator software is the property of INTERSHOP Communications AG. 
Any rights to use are granted under the license agreement. 
Copyright (c) 1999-2012, all rights reserved.
*******************************************************************************
This file is generated by JGen. Please edit within the
custom section only.

Oracle additional DDL statements to create/drop constraints.
****************************************************************

*/

SET ECHO ON

SET SERVEROUTPUT ON SIZE 1000000

/*------------------------------------------------------------------------
                           custom constraints section
------------------------------------------------------------------------*/

-- //{{ constraints
-- //}} constraints

PROMPT /* Class com.intershop.component.search.internal.querydefinition.SearchQueryDefinitionPO */
EXEC staging_ddl.add_constraint('SEARCHQUERYDEFINITION','SEARCHQUERYDEFINITION_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.search.internal.querydefinition.SearchQueryDefinitionPOAttributeValuePO */
EXEC staging_ddl.add_constraint('SEARCHQUERYDEFINITIO_AV','SEARCHQUERYDEFINITIO_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES SEARCHQUERYDEFINITION (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.search.internal.searchaction.RedirectActionPO */


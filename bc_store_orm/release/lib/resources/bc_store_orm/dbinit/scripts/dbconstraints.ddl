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

PROMPT /* Class com.intershop.component.store.orm.internal.orm.StorePO */
EXEC staging_ddl.add_constraint('STORE','STORE_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.store.orm.internal.orm.StorePOAttributeValuePO */
EXEC staging_ddl.add_constraint('STORE_AV','STORE_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES STORE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


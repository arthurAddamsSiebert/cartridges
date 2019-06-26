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

PROMPT /* Class com.intershop.component.pmc.validation.internal.result.pagelet.PageletValidationResultPO */
EXEC staging_ddl.add_constraint('PAGELET_VR','PAGELET_VR_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.pmc.validation.internal.result.pep.PageletEntryPointValidationResultPO */
EXEC staging_ddl.add_constraint('PAGELETENTRYPOINT_VR','PAGELETENTRYPOINT_VR_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.pmc.validation.internal.result.placeholder.PlaceholderValidationResultPO */
EXEC staging_ddl.add_constraint('PLACEHOLDER_VR','PLACEHOLDER_VR_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.pmc.validation.internal.result.slot.SlotValidationResultPO */
EXEC staging_ddl.add_constraint('SLOT_VR','SLOT_VR_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.pmc.validation.internal.result.viewcontext.ViewContextValidationResultPO */
EXEC staging_ddl.add_constraint('VIEWCONTEXT_VR','VIEWCONTEXT_VR_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


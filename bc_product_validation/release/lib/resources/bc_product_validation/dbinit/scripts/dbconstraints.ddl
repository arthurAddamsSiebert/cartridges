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

PROMPT /* Class com.intershop.component.product.validation.internal.assortment.orm.ProductValidationAssortmentPO */
EXEC staging_ddl.add_constraint('PRODUCTVALIDATIONASSORTMENT','PRODUCTVALIDATIONASSORTM_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.product.validation.internal.assortment.orm.ProductValidationAssortmentPOAttributeValuePO */
EXEC staging_ddl.add_constraint('PRODUCTVALIDATIONASS_AV','PRODUCTVALIDATIONASS_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES PRODUCTVALIDATIONASSORTMENT (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.product.validation.internal.config.orm.ValidationRuleConfigurationPO */
EXEC staging_ddl.add_constraint('VALIDATIONRULECONFIGURATION','VALIDATIONRULECONFIGURAT_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.product.validation.internal.config.orm.ValidationRuleConfigurationPOAttributeValuePO */
EXEC staging_ddl.add_constraint('VALIDATIONRULECONFIG_AV','VALIDATIONRULECONFIG_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES VALIDATIONRULECONFIGURATION (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.product.validation.internal.result.orm.ProductValidationResultPO */
EXEC staging_ddl.add_constraint('PRODUCT_VR','PRODUCT_VR_CO001','FOREIGN KEY (VALIDATIONRULECONFIGURATIONID) REFERENCES VALIDATIONRULECONFIGURATION (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('PRODUCT_VR','PRODUCT_VR_CO002','FOREIGN KEY (VALIDATIONASSORTMENTID) REFERENCES PRODUCTVALIDATIONASSORTMENT (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('PRODUCT_VR','PRODUCT_VR_CO003','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

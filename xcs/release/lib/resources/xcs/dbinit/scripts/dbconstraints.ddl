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

EXEC staging_ddl.add_constraint('CATALOGCATEGORYLINK','CATALOGCATEGORYLINK_CO999','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('PRODUCTCATEGORYASSIGNMENT','PRODUCTCATEGORYASSIG_CO999','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('PRODUCTLINK','PRODUCTLINK_CO999','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('USERGROUPPRICE','USERGROUPPRICE_CO999','FOREIGN KEY (PRODUCTREFDOMAINNAME) REFERENCES DOMAININFORMATION (DOMAINNAME) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('BUNDLEASSIGNMENT','BUNDLEASSIGNMENT_CO999','FOREIGN KEY (BUNDLEID) REFERENCES PRODUCT (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('BUNDLEASSIGNMENT','BUNDLEASSIGNMENT_CO998','FOREIGN KEY (PRODUCTID) REFERENCES PRODUCT (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.beehive.xcs.internal.product.ProductLinkPO */
EXEC staging_ddl.add_constraint('PRODUCTLINK','PRODUCTLINK_CO004','FOREIGN KEY (SOURCEID) REFERENCES PRODUCT (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.beehive.xcs.internal.image.ImageCategoryAssignmentPO */
EXEC staging_ddl.add_constraint('IMAGECATEGORYASSIGNMENT','IMAGECATEGORYASSIGNMENT_CO001','FOREIGN KEY (IMAGEREFERENCEUUID) REFERENCES IMAGEREFERENCE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.beehive.xcs.internal.image.ImageProductAssignmentPO */
EXEC staging_ddl.add_constraint('IMAGEPRODUCTASSIGNMENT','IMAGEPRODUCTASSIGNMENT_CO001','FOREIGN KEY (IMAGEREFERENCEUUID) REFERENCES IMAGEREFERENCE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

-- //}} constraints


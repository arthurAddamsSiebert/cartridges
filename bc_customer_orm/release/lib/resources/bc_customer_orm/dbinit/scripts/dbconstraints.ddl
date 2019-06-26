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

PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CustomerAddressPO */
EXEC staging_ddl.add_constraint('CUSTOMERADDRESS','CUSTOMERADDRESS_CO001','FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CUSTOMERADDRESS','CUSTOMERADDRESS_CO002','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CustomerAddressPOAttributeValuePO */
EXEC staging_ddl.add_constraint('CUSTOMERADDRESS_AV','CUSTOMERADDRESS_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES CUSTOMERADDRESS (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.customer.orm.internal.orm.settings.CustomerTypeSettingPO */
EXEC staging_ddl.add_constraint('CUSTOMERTYPESETTING','CUSTOMERTYPESETTING_CO001','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.customer.orm.internal.orm.settings.CustomerTypeSettingPOAttributeValuePO */
EXEC staging_ddl.add_constraint('CUSTOMERTYPESETTING_AV','CUSTOMERTYPESETTING_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES CUSTOMERTYPESETTING (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CompanyProfilePO */
EXEC staging_ddl.add_constraint('COMPANYPROFILE','COMPANYPROFILE_CO001','FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('COMPANYPROFILE','COMPANYPROFILE_CO002','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CompanyProfilePOAttributeValuePO */
EXEC staging_ddl.add_constraint('COMPANYPROFILE_AV','COMPANYPROFILE_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES COMPANYPROFILE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CustomerBasicProfileAssignmentPO */
EXEC staging_ddl.add_constraint('CUSTOMERPROFILEASSIGNMENT','CUSTOMERPROFILEASSIGNMEN_CO001','FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CUSTOMERPROFILEASSIGNMENT','CUSTOMERPROFILEASSIGNMEN_CO002','FOREIGN KEY (PROFILEID) REFERENCES BASICPROFILE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CustomerPO */
EXEC staging_ddl.add_constraint('CUSTOMER','CUSTOMER_CO001','FOREIGN KEY (PROFILEID) REFERENCES BASICPROFILE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CUSTOMER','CUSTOMER_CO002','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.customer.orm.internal.orm.CustomerPOAttributeValuePO */
EXEC staging_ddl.add_constraint('CUSTOMER_AV','CUSTOMER_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES CUSTOMER (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

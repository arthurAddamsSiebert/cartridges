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

PROMPT /* Class com.intershop.component.contract.orm.internal.contract.orm.ContractBasePO */
EXEC staging_ddl.add_constraint('CONTRACTBASE','CONTRACTBASE_CO001','FOREIGN KEY (CUSTOMERUUID) REFERENCES CUSTOMER (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CONTRACTBASE','CONTRACTBASE_CO002','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.contract.orm.internal.contract.orm.ContractBasePOAttributeValuePO */
EXEC staging_ddl.add_constraint('CONTRACTBASE_AV','CONTRACTBASE_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES CONTRACTBASE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.contract.orm.internal.contract.orm.ContractRevenueAssignmentPO */
EXEC staging_ddl.add_constraint('CONTRACTREVENUEASSIGNMENT','CONTRACTREVENUEASSIGNMEN_CO001','FOREIGN KEY (CONTRACTBASEUUID) REFERENCES CONTRACTBASE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CONTRACTREVENUEASSIGNMENT','CONTRACTREVENUEASSIGNMEN_CO002','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.contract.orm.internal.contract.orm.ContractRevenueAssignmentPOAttributeValuePO */
EXEC staging_ddl.add_constraint('CONTRACTREVENUEASSIG_AV','CONTRACTREVENUEASSIG_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES CONTRACTREVENUEASSIGNMENT (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


PROMPT /* Class com.intershop.component.contract.orm.internal.contract.orm.ContractSalesTargetPO */
EXEC staging_ddl.add_constraint('CONTRACTSALESTARGET','CONTRACTSALESTARGET_CO001','FOREIGN KEY (CONTRACTBASEUUID) REFERENCES CONTRACTBASE (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CONTRACTSALESTARGET','CONTRACTSALESTARGET_CO002','FOREIGN KEY (PRICELISTUUID) REFERENCES PRICELIST (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');
EXEC staging_ddl.add_constraint('CONTRACTSALESTARGET','CONTRACTSALESTARGET_CO003','FOREIGN KEY (DOMAINID) REFERENCES DOMAIN (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');

PROMPT /* Class com.intershop.component.contract.orm.internal.contract.orm.ContractSalesTargetPOAttributeValuePO */
EXEC staging_ddl.add_constraint('CONTRACTSALESTARGET_AV','CONTRACTSALESTARGET_AV_CO001','FOREIGN KEY (OWNERID) REFERENCES CONTRACTSALESTARGET (UUID) INITIALLY DEFERRED DEFERRABLE DISABLE NOVALIDATE');


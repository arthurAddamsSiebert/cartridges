/*
    File: spmainfile.ddl

    Copyright (c) 1998, 1999 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.

    Oracle additional stored procedures for Beehive
*/

-- add all stored procedures files
-- example: @sp_foo.sql

@sp_deleteAlertByDomain.sql
@sp_deleteCatalogByDomain.sql
@sp_deleteCatalogFilterByDomain.sql
@sp_deleteCatalogLabelByDomain.sql
@sp_deleteCommodityByDomain.sql
@sp_deleteContractByDomain.sql
@sp_deleteDataMappingByDomain.sql
@sp_deleteMappingRuleByDomain.sql
@sp_deleteProductListByDomain.sql
@sp_deleteRepositoryByDomain.sql
@sp_updateProductOnlineStatus.sql
@sp_deletePEPAByDomain.sql
@sp_remove_unapproved_products.sql

exit

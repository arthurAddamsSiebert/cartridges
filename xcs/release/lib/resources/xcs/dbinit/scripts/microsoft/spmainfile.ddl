/*
    File: spmainfile.ddl

    Copyright (c) 1998, 1999 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.

    Oracle additional stored procedures for Beehive
*/

@sp_deleteProductObjects.sql
@sp_deleteProductVariObjects.sql
@sp_deleteProductTypeObjects.sql
@sp_deleteCatalogObjects.sql
@sp_deleteDeletedProduct.sql
@sp_deletePriceByDomain.sql
@sp_deletePriceEventByDomain.sql
@sp_deleteRulesByDomain.sql
@sp_deleteProductSetsByDomain.sql
@createProductImportTables.sql
@sp_ImportRemoveProduct.sql
@sp_ImportRemoveProductRelation.sql
@sp_ImportUpdateProduct.sql
@sp_ImportRemoveProductCleanup.sql
@sp_ImportRemoveProductRelationCleanup.sql
@sp_deleteManAliasesByDomain.sql
@sp_deleteSharedCatalogObjects.sql
@CatalogCategoryHierarchyView.ddl

exit

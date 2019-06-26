/*
    File: spmainfile.ddl

    Copyright (c) 1998, 1999 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.

    Oracle additional stored procedures for Beehive
*/

-- add all stored procedures files
-- example: @sp_foo.sql

@sp_deleteAccountByDomain.sql
@sp_deleteBudgetByDomain.sql
@sp_deleteChannelByDomain.sql
@sp_deleteCostCenterByDomain.sql
@sp_deleteDepartmentByDomain.sql
@sp_deleteOrganizationByDomain.sql
@sp_deleteUserDelegateByDomain.sql

exit

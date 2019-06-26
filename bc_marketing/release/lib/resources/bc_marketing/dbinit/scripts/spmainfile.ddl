/*
    File: spmainfile.ddl

    Copyright (c) 1998, 1999 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.

    Oracle additional stored procedures for Beehive
*/

-- add all stored procedures files
-- example: @sp_foo.sql

@sp_deleteAffiliateByDomain.sql
@sp_deleteMarketingPAByDomain.sql
@sp_deletePromotionByDomain.sql
@sp_deleteABTestByDomain.sql
@sp_deleteBonusPointsByDomain.sql

exit

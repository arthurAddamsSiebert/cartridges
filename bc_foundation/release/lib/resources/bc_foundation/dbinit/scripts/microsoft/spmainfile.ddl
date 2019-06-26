/*
    File: spmainfile.ddl

    Copyright (c) 1998, 1999 Intershop Communications AG.
    All rights reserved.
    Use of this code without permission is prohibited.

    Oracle additional stored procedures for Beehive
*/

-- add all stored procedures files
-- example: @sp_foo.sql

@sp_deleteAttrGroupByDomain.sql
@sp_deleteBrandingByDomain.sql
@sp_deleteCommentByDomain.sql
@sp_deleteConsumerGroupByDomain.sql
@sp_deleteJournalByDomain.sql
@sp_deleteLabelByDomain.sql
@sp_deleteMessageByDomain.sql
@sp_deleteShortLinkByDomain.sql
@sp_deleteObjStatsGroupByDomain.sql

exit

WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1
DEFINE _cartridge       = 'bc_auditing_orm'

/*
Data Classification, Logically, the Enfinity data objects fall into following groups.

Name                        Description
--------------------------- ----------------------------------------------------
B2B                         B2B

Batch Process               The batch process data are information about the
                            runtime of batch processes.

Change Tracking             Change Tracking for Staging (D$ tables) and
                            user/product deletion

Configuration               The Enfinity system stores some configuration in the
                            database.

Organization                The organization data composes the frame a site live.

Report                      Data The report data are persistent results of queries.

Storefront Content          The read only data is only read by the user sessions
                            in the storefront and is changed only in the backoffice.

Temporary                   The tempoaray data is used in batch processes or storing
                            the result of batch processes.

Transactional - Session     The session data belongs to a single session and is
                            only changed by this session.
Transactional - Storefront  The storefront transactional data can be changed by
                            multiple users at the same time in the storefront.
Transactional - User        The user transactional data belongs to a single user
                            and can only be changed by the user.
*/

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Organization'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Organization'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Storefront Content'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Storefront Content'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Batch Process'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Batch Process'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Change Tracking'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Change Tracking'

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'AUDITITEM'
       )
/

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Temporary'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Temporary'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Configuration'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Configuration'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Transactional - Session'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Transactional - Session'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Transactional - User'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Transactional - User'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Transactional - Storefront'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Transactional - Storefront'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Report'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Report'

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'B2B'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'B2B'

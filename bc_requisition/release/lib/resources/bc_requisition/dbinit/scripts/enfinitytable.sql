WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1
DEFINE _cartridge       = 'bc_requisition'

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

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
/

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
               tablename LIKE 'D$%$%%'
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

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'REQUISITIONAWF%'
       )
/

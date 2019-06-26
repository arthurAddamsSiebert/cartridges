WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1
DEFINE _cartridge       = 'bc_mvc'

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

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'ALERT%'
            OR tablename LIKE 'PRODUCTLIST'
            OR tablename LIKE 'PRODUCTLIST\_AV'       ESCAPE '\'
            OR tablename LIKE 'PRODUCTLISTEVENT%'
            OR tablename LIKE 'PRODUCTLISTITEM%'
            OR tablename LIKE 'PRODUCTLISTUSERASSIGNMENT'
       )
/

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

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'PRODUCTBINDINGATTRIBUTE'
            OR tablename LIKE 'CLASSIFICATIONCOUNT%'
            OR tablename LIKE 'IEPRODUCTCATEGORYASSI%'
       )
/

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'B2B'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'B2B'


WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1
DEFINE _cartridge       = 'bc_marketing'

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

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'AFFILIATESESSION%'
       )
/

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
               tablename LIKE 'BONUSPOINT%'
            OR tablename LIKE 'PROMOTIONCODEORDERASSIGNMENT%'
            OR tablename LIKE 'PROMOTIONORDERASSIGNMENT%'
       )
/


--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Transactional - Storefront'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Transactional - Storefront'

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'ACTIVEPROMOPRODUCTS%'
               OR tablename LIKE 'PROMOTIONCODE'
               OR tablename LIKE 'PROMOTIONCODE_AV'
               OR tablename LIKE 'PROMOTIONCODE$%'
               OR tablename LIKE 'PROMOTIONCODE_AV$%' 
	   )
/

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
               tablename LIKE 'ABTESTEVENT%'
            OR tablename LIKE 'ABTESTSTATISTICS%'
       )
/

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'B2B'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'B2B'


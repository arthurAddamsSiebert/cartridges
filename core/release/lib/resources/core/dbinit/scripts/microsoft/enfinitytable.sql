WHENEVER SQLERROR EXIT SQL.SQLCODE

DEFINE _enfinityVersion = &1
DEFINE _cartridge       = 'core'

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

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename  LIKE 'DOMAIN'
            OR tablename  LIKE 'DOMAIN$%'
            OR tablename  LIKE 'DOMAIN\_AV'             ESCAPE '\'
            OR tablename  LIKE 'DOMAIN\_AV$%'           ESCAPE '\'
            OR tablename  LIKE 'DOMAIN\_RA'             ESCAPE '\'
            OR tablename  LIKE 'DOMAIN\_RA$%'           ESCAPE '\'
            OR tablename  LIKE 'DOMAIN\_AA$%'           ESCAPE '\'
            OR tablename  LIKE 'DOMAININFORMATION'
            OR tablename  LIKE 'DOMAININFORMATION$%'
            OR tablename  LIKE 'APPLICATION%'
            OR tablename  LIKE 'APPLICATIONDOMAINRELATION'
            OR tablename  LIKE 'APPLICATIONPREFERENCE'
            OR tablename  LIKE 'LOCALIZATIONENTRY'
            OR tablename  LIKE 'LOCALIZATIONREPOSITORY'
            OR tablename  LIKE 'LOCALIZATION\_AA'       ESCAPE '\'
       )
/

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
   AND (
               tablename LIKE 'ACTIVITYUSERASSIGNMENT'
            OR tablename LIKE 'ACTIVITYUSERGROUPASSIGNMENT'
            OR tablename LIKE 'ADDRESSTYPE%'
            OR tablename LIKE 'BASICEXCHANGERATE%'
            OR tablename LIKE 'BUSINESSEVENT%'
            OR tablename LIKE 'CURRENCY%'
            OR tablename LIKE 'LOCALEINFORMATION%'
            OR tablename LIKE 'PERMISSION%'
            OR tablename LIKE 'PREFERENCE%'
            OR tablename LIKE 'REGIONALSETTINGS%'
            OR tablename LIKE 'RELATION'
            OR tablename LIKE 'RELATION$%'
            OR tablename LIKE 'RELATIONDEFINITION%'
            OR tablename LIKE 'ROLE%'
            OR tablename LIKE 'USERGROUP'
            OR tablename LIKE 'USERGROUP$%'
            OR tablename LIKE 'USERGROUPASSIGNMENT%'
            OR tablename LIKE 'USERGROUPINFORMATI%'
            OR tablename LIKE 'USERGROUP\_RA%'          ESCAPE '\'
            OR tablename LIKE 'WORKFLOW%'
       )
/

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Batch Process'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Batch Process'

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE '%ACQLOGENTRY%'
            OR tablename LIKE 'ISRESOURCE%'
            OR tablename LIKE 'JOBCONFIGURATION%'
            OR tablename LIKE 'JOBINTER%'
            OR tablename LIKE 'JOBRELATIV%'
            OR tablename LIKE 'JOBRESOURCE%'
            OR tablename LIKE 'JOBRESOURCE%'
            OR tablename LIKE 'PROCESS%'
            OR tablename LIKE 'RESOURCELOCK'
            OR tablename LIKE 'STAGING%RESOURCE%'
       )
/

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
               tablename LIKE 'DELETEDUSER%'
       )
/

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

--
-- workaround for all MY_/ST_ (dict caches), plsqllog and not_usable_indexes tabs
-- create and add tables to enfinitytable
--
/*
BEGIN
    logger.set_log_target(logger.LOG_TARGET_TABLE);
    logger.log('PLSQLLOG');
    sp_check4NotUsableIndexes();
END;
*/
/

MERGE INTO enfinitytable d
USING (
        SELECT 'MY_USER_CONSTRAINTS'    AS tableName, '&_cartridge' AS cartridgeName, '&_enfinityVersion' AS version  UNION
        SELECT 'MY_USER_INDEXES'        AS tableName, '&_cartridge' AS cartridgeName, '&_enfinityVersion' AS version  UNION
        SELECT 'MY_USER_IND_COLUMNS'    AS tableName, '&_cartridge' AS cartridgeName, '&_enfinityVersion' AS version  UNION
        SELECT 'NOT_USABLE_INDEXES'     AS tableName, '&_cartridge' AS cartridgeName, '&_enfinityVersion' AS version  UNION
        SELECT 'PLSQLLOG'               AS tableName, '&_cartridge' AS cartridgeName, '&_enfinityVersion' AS version 
      ) s
   ON (UPPER(d.tablename) = UPPER(s.tablename) AND d.version = s.version)
 WHEN NOT MATCHED THEN INSERT (tableName, cartridgeName, version, lastModified, comments, oca)
                       VALUES (s.tableName, s.cartridgeName, s.version, SYSUTCDATETIME(), NULL, 0);

/

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'IMPORT%'
            OR tablename LIKE '%CONSTRAINTS%'
            OR tablename LIKE '%INDEXES%'
            OR tablename LIKE '%IND\_COLUMNS%'          ESCAPE '\'
            OR tablename LIKE '%CONS\_COLUMNS%'         ESCAPE '\'
            OR tablename LIKE 'NOT\_USABLE\_INDEXES'    ESCAPE '\'
            OR tablename LIKE '%PLSQLLOG%'
            OR tablename LIKE 'PAGEKEYWORDBINDING'
            OR tablename LIKE 'INVALIDATEDPAGECACHESEARCHWORD'
            OR tablename LIKE 'INVALIDATEDPAGECACHEKEYWORD'
            OR tablename LIKE 'SYNCMESSAGERESPONSE'
            OR tablename LIKE 'DYNAMICPGID%'
            OR tablename LIKE 'CACHECLEARREQUEST'
            OR tablename LIKE 'CACHECLEARKEYBATCHCONTAINER'
       )
/


--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'Configuration'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'Configuration'

UPDATE enfinitytable
   SET category      = '&_category'
 WHERE version       = '&_enfinityVersion'
   AND cartridgename = '&_cartridge'
   AND (
               tablename LIKE 'BASICSERIESENTRY'
            OR tablename LIKE 'CARTRIDGEINFORMATION'
            OR tablename LIKE 'ENFINITYTABLE'
            OR tablename LIKE 'PARTITIONTABLE%'
            OR tablename LIKE 'REPLICATION%'
            OR tablename LIKE 'STAGINGDIRECTORY'
            OR tablename LIKE 'STAGINGGROUP'
            OR tablename LIKE 'STAGINGGROUP\_AV'          ESCAPE '\'
            OR tablename LIKE 'STAGINGIDENTIFICATION'
            OR tablename LIKE 'STAGINGMVIEW'
            OR tablename LIKE 'STAGINGPROCESSCOMPONENT'
            OR tablename LIKE 'STAGINGTABLE'
            OR tablename LIKE 'STREAMINGTABLE'
            OR tablename LIKE 'PREPARATIONSTEP'
            OR tablename LIKE 'SYNCMESSAGE'
)
/

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
               tablename LIKE 'SESSION%'
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
               tablename LIKE 'BASICADDRESS%'
            OR tablename LIKE 'BASICCREDENTIALS%'
            OR tablename LIKE 'BASICPROFILE%'
            OR tablename LIKE 'USERGROUPUSERASSIGNME%'
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
               tablename LIKE 'DYNAMICPGID'
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
               tablename LIKE 'PERFORMANCESENSORREPORT'
            OR tablename LIKE 'LICENSECOUNTER'
            OR tablename LIKE 'LICENSETRANSACTION'
       )
/

--------------------------------------------------------------------------------
--
-- Column: enfinitytable.Category = 'B2B'
--
--------------------------------------------------------------------------------
DEFINE _category    = 'B2B'

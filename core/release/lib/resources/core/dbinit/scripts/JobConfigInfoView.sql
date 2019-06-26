WHENEVER SQLERROR EXIT SQL.SQLCODE

-- Create a view that contains additional jobconfiguration_av informations about
--   creation/modification owner (user|dbinit|dbmigrate),
--   actions (create|update) and
--   the date for this action

CREATE OR REPLACE VIEW JobConfigInfoView AS
SELECT
    j.enabledflag
    ,domainname
    ,j.name            AS JobName
    ,av_ow.stringvalue AS Owner
    ,av_oa.stringvalue AS OwnerAction
    ,av_od.datevalue   AS OwnerActionDate
FROM jobconfiguration j
    LEFT OUTER JOIN jobconfiguration_av av_ow ON (j.uuid = av_ow.ownerid AND av_ow.name = 'Owner')
    LEFT OUTER JOIN jobconfiguration_av av_oa ON (j.uuid = av_oa.ownerid AND av_oa.name = 'OwnerAction')
    LEFT OUTER JOIN jobconfiguration_av av_od ON (j.uuid = av_od.ownerid AND av_od.name = 'OwnerActionDate')
    JOIN            domaininformation di      ON (j.domainid = di.domainid)
/

/*

SQL*Plus selects

SET LINES 1000
COL enabledflag     FORMAT 999 HEAD "Enabled|Flag"
COL Owner           FORMAT A10 HEAD "Owner"
COL OwnerAction     FORMAT A11 HEAD "Owner|Action"
COL OwnerActionDate FORMAT A20 HEAD "Owner|ActionDate"
COL domainname      FORMAT A50 HEAD "Domain|Name"
COL JobName         FORMAT A65 HEAD "Job|Name"

  SELECT  enabledflag
         ,domainname
         ,JobName
         ,Owner
         ,OwnerAction
         ,OwnerActionDate
    FROM JobConfigInfoView
ORDER BY owner, owneraction, enabledflag DESC, domainname, JobName
/

*/

EXIT



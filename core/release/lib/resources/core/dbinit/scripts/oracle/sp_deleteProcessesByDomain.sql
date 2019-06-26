CREATE OR REPLACE PROCEDURE sp_deleteProcessesByDomain (in_domainid IN VARCHAR2) AS

------------------------------------------------------------------------------------------
-- Name        : sp_deleteProcessesByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Budich    03/31/2006 - perform more commits, remove workflow tables
--             : Nils Breitmann   03/02/2006 - #8402 Exception occurs during execution of
--                                            'DeleteDomainReferences' when db constraints are enabled
--                                             constraints
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
--                                             and correct deletion with foreign key
--                                             constraints
-- Created     : Thomas Budich
-- Description : This procedure deletes replication tasks and processes beloing to
--               domain with given domainid
-- Input       : in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteProcessesByDomain('domainid')
------------------------------------------------------------------------------------------

    PROCEDURE deleteResource(in_uuid IN acqlogentry.uuid%TYPE) AS
    BEGIN
        DELETE FROM acqlogentryresourceassignment
              WHERE resourceid = in_uuid
                 OR acquisitionlogentryid IN (SELECT uuid FROM acqlogentry WHERE contentionresourceid = in_uuid);
        DELETE FROM acqlogentry_av WHERE ownerid IN (SELECT uuid FROM acqlogentry WHERE contentionresourceid = in_uuid);
        DELETE FROM acqlogentry    WHERE contentionresourceid = in_uuid;
        DELETE FROM isresource_av  WHERE ownerid = in_uuid;
        DELETE FROM isresource     WHERE uuid = in_uuid;
    END;

    PROCEDURE updateJobConfiguration(in_uuid IN process.uuid%TYPE, suffix IN VARCHAR2) AS
    BEGIN
        EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('JobConfiguration', suffix)||' SET currentprocessid = NULL WHERE currentprocessid = :uuid' USING IN in_uuid;
    END;

BEGIN

    FOR i IN (SELECT uuid FROM isresource WHERE domainid = in_domainid) LOOP
        deleteResource(i.uuid);
    END LOOP;

    DELETE FROM acqlogentryresourceassignment
          WHERE acquisitionlogentryid IN (SELECT uuid FROM acqlogentry WHERE domainid = in_domainid);
    DELETE FROM acqlogentry_av WHERE ownerid IN (SELECT uuid FROM acqlogentry WHERE domainid = in_domainid);
    DELETE FROM acqlogentry    WHERE domainid = in_domainid;
    DELETE FROM stagingprocesscomponent WHERE stagingdomainid = in_domainid;

    COMMIT;

    FOR i IN (SELECT uuid FROM process WHERE domainid = in_domainid)
    LOOP

        FOR j IN (SELECT uuid FROM isresource WHERE resourceownerid = i.uuid) LOOP
           deleteResource(j.uuid);
        END LOOP;

        DELETE FROM acqlogentryresourceassignment
              WHERE acquisitionlogentryid IN (SELECT uuid FROM acqlogentry WHERE processid = i.uuid);
        DELETE FROM acqlogentry_av      WHERE ownerid IN (SELECT uuid FROM acqlogentry WHERE processid = i.uuid);
        DELETE FROM acqlogentry         WHERE processid = i.uuid;

        DELETE FROM replicationtask_av  WHERE ownerid IN (SELECT uuid FROM replicationtask WHERE processid = i.uuid);
        DELETE FROM replicationtask     WHERE processid = i.uuid;

        DELETE FROM stagingprocesscomponent WHERE stagingprocessid = i.uuid;

        IF sf_is_staging_table('JobConfiguration') THEN
            updateJobConfiguration(i.uuid, '$1');
            updateJobConfiguration(i.uuid, '$2');
        ELSE
            updateJobConfiguration(i.uuid, null);
        END IF;

    END LOOP;
	
	sp_genericPoAvDeleteByDomain('process', 'process_av', null, in_domainid, 'domainid');

    COMMIT;

END sp_deleteProcessesByDomain;
/

show errors

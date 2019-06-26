CREATE OR REPLACE PROCEDURE sp_deleteUserDataByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteUserDataByDomain
-- History     : user             date       - desc
--             : ...
--             : Ronny Wilms      06/03/2013 - #ENFINITY-31873 DeleteDomainReferences fails due to constraint CUSTOMERPROFILEASSIGNMEN_CO002
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner, Thomas Budich
-- Description : This procedure deletes user data belonging to domain with given domainid.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteUserDataByDomain('domain')
------------------------------------------------------------------------------------------

AS
    --
    -- This function removes all rows belonging to domain with given
    -- uuid FROM staging tables. In case of staging is not prepared
    -- (no $1 resp. $2 tables exist) it returns FALSE.
    --

    -- all staging $1/$2 D$-tables
    --
    -- SELECT DISTINCT(SUBSTR(table_name,1,LENGTH(table_name)-2)) FROM cat
    --   WHERE table_name LIKE 'D$%' AND table_type='TABLE';
    --
    -- D$BASICADDRESS
    -- D$BASICADDRESS_AV
    -- D$BASICCREDENTIALS
    -- D$BASICPROFILE
    -- D$BASICPROFILE_AV
    -- D$DELETEDUSER
    -- D$ERGROUPUSERASSIGNME
    --

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        id    usergroup.id%TYPE;
        uuid  basicprofile.uuid%TYPE;
        uuid2 basicaddress.uuid%TYPE;
        uuid_len NUMBER := 28;
        id_len   NUMBER := 256;
        cur  BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        cur2 BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret BINARY_INTEGER;
    BEGIN

        --
        --  address, profile, credentials, user group assignment
        --

        -- clean up basicprofile
        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM basicprofile'||suffix||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);

            DBMS_SQL.PARSE (cur2, 'SELECT uuid FROM basicaddress'||suffix||' WHERE profileid = :uuid', DBMS_SQL.NATIVE);
            DBMS_SQL.BIND_VARIABLE (cur2, 'uuid', uuid);
            DBMS_SQL.DEFINE_COLUMN (cur2, 1, uuid2, uuid_len);
            ret := DBMS_SQL.EXECUTE (cur2);

            LOOP
                EXIT WHEN DBMS_SQL.FETCH_ROWS (cur2) = 0;
                DBMS_SQL.COLUMN_VALUE (cur2, 1, uuid2);
                EXECUTE IMMEDIATE 'UPDATE basicprofile'        ||suffix||' SET defaultaddressid = NULL WHERE defaultaddressid = :uuid' USING IN uuid2;
                EXECUTE IMMEDIATE 'DELETE FROM basicaddress_av'||suffix||' WHERE ownerid = :uuid' USING IN uuid2;
                EXECUTE IMMEDIATE 'DELETE FROM basicaddress'   ||suffix||' WHERE uuid = :uuid' USING IN uuid2;
            END LOOP;

            EXECUTE IMMEDIATE 'DELETE FROM basiccredentials'     ||suffix||' WHERE basicprofileid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM basicprofile_av'      ||suffix||' WHERE ownerid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM basicprofile'         ||suffix||' WHERE uuid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroupuserassignme'||suffix||' WHERE userid = :uuid' USING IN uuid;
            --  register user as deleted
            EXECUTE IMMEDIATE 'INSERT INTO deleteduser'||suffix||' (userid, domainid, lastmodified, oca) VALUES (:uuid, :domainid, UTCTIMESTAMP(), 0)' USING IN uuid, in_domainid;
        END LOOP;
        COMMIT;

        -- clean up d$basicprofile
        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM d$basicprofile'||suffix||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM d$ergroupuserassignme'||suffix||' WHERE userid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM d$basicprofile_av'||suffix||' WHERE ownerid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM d$basicprofile'||suffix||' WHERE uuid = :uuid' USING uuid;
        END LOOP;
        COMMIT;

        --
        -- delete basic address table
        --

        -- clean up basicaddress
        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM basicaddress'||suffix||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'UPDATE basicprofile'||suffix||' SET defaultaddressid = NULL WHERE defaultaddressid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM basicaddress_av'||suffix||' WHERE ownerid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM basicaddress'||suffix||' WHERE uuid = :uuid' USING uuid;
        END LOOP;
        COMMIT;

        -- clean up d$basicaddress
        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM d$basicaddress'||suffix||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM d$basicaddress_av'||suffix||' WHERE ownerid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM d$basicaddress'||suffix||' WHERE uuid = :uuid' USING uuid;
        END LOOP;
        COMMIT;

        --
        -- delete user group information
        --

        -- clean up usergroup information
        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM usergroupinformation'||suffix||' WHERE domainid = :in_domainid1' ||
                             ' OR usergroupdomainid = :in_domainid2', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid1', in_domainid);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid2', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM usergroupinformati_av'||suffix||' WHERE ownerid = :uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroupinformation'||suffix||' WHERE uuid = :uuid' USING uuid;
        END LOOP;
        COMMIT;

        --
        --  user groups / information AND assignments / role assignments
        --

        -- clean up usergroup
        DBMS_SQL.PARSE (cur, 'SELECT id FROM usergroup'||suffix||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, id, id_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, id);
            EXECUTE IMMEDIATE 'DELETE FROM usergroupassignment'  ||suffix||' WHERE parentusergroupid = :id AND parentusergroupdomainid = :domainid' USING id,in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroupassignment'  ||suffix||' WHERE childusergroupid  = :id AND childusergroupdomainid  = :domainid' USING id,in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroupuserassignme'||suffix||' WHERE usergroupid       = :id AND usergroupdomainid       = :domainid' USING id,in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroup_ra'         ||suffix||' WHERE ao_id             = :id AND ao_domainid             = :domainid' USING id,in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroup_ra'         ||suffix||' WHERE usergroupid       = :id AND usergroupdomainid       = :domainid' USING id,in_domainid;
            EXECUTE IMMEDIATE 'DELETE FROM usergroup'            ||suffix||' WHERE id                = :id AND domainid                = :domainid' USING id,in_domainid;
        END LOOP;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM usergroup_ra'||suffix||' WHERE ao_domainid = :domainid OR ' ||
                                                              ' usergroupdomainid = :domainid' USING IN in_domainid,in_domainid;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM usergroupuserassignme'||suffix||' WHERE usergroupdomainid = :domainid' USING IN in_domainid;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM usergroupassignment'||suffix||' WHERE parentusergroupdomainid = :domainid OR ' ||
                                                                            ' childusergroupdomainid = :domainid' USING IN in_domainid,in_domainid;
        -- clean up d$basiccredentials
        EXECUTE IMMEDIATE 'DELETE FROM d$basiccredentials'||suffix||' WHERE domainid = :domainid' USING IN in_domainid;
        COMMIT;

        -- clean up d$ergroupuserassignme
        EXECUTE IMMEDIATE 'DELETE FROM d$ergroupuserassignme'||suffix||' WHERE usergroupdomainid = :domainid' USING IN in_domainid;
        COMMIT;

        DBMS_SQL.CLOSE_CURSOR (cur);
        DBMS_SQL.CLOSE_CURSOR (cur2);

    EXCEPTION
        WHEN OTHERS THEN
            IF DBMS_SQL.IS_OPEN (cur) THEN
                DBMS_SQL.CLOSE_CURSOR (cur);
            END IF;
            IF DBMS_SQL.IS_OPEN (cur2) THEN
                DBMS_SQL.CLOSE_CURSOR (cur2);
            END IF;
            RAISE;
    END;

    --
    -- This procuedure is used to delete all rows
    -- belonging to domain with given domainid. Due to
    -- used objects may synonyms or tables no dynamic
    -- SQL is needed.
    --

    PROCEDURE deleteFromOriginalTables(in_domainid IN VARCHAR2)
    AS
    BEGIN

        --
        --  address, profile, credentials, user group assignment
        --
        FOR i IN (SELECT uuid FROM basicprofile WHERE domainid = in_domainid)
        LOOP

            FOR k IN (SELECT uuid FROM basicaddress WHERE profileid = i.uuid)
            LOOP
                UPDATE basicprofile SET defaultaddressid = NULL WHERE defaultaddressid = k.uuid;
                DELETE FROM basicaddress_av WHERE ownerid = k.uuid;
                DELETE FROM basicaddress    WHERE uuid = k.uuid;
            END LOOP;

            DELETE FROM basiccredentials          WHERE basicprofileid = i.uuid;
            DELETE FROM basicprofile_av           WHERE ownerid = i.uuid;
            DELETE FROM usergroupuserassignment   WHERE userid = i.uuid;
            DELETE FROM basicprofile              WHERE uuid = i.uuid;

            --
            --  register user as deleted
            --
            INSERT INTO deleteduser (userid, domainid, lastmodified, oca) VALUES (i.uuid, in_domainid, UTCTIMESTAMP(), 0);

        END LOOP;
        COMMIT;

        --
        -- delete basic address table
        --
        FOR k IN (SELECT uuid FROM basicaddress WHERE domainid = in_domainid)
        LOOP
            UPDATE basicprofile SET defaultaddressid = NULL WHERE defaultaddressid = k.uuid;
            DELETE FROM basicaddress_av WHERE ownerid = k.uuid;
            DELETE FROM basicaddress    WHERE uuid = k.uuid;
        END LOOP;
        COMMIT;

        --
        -- delete user group information
        --
        FOR i IN (SELECT uuid FROM usergroupinformation WHERE domainid = in_domainid OR
                                                     usergroupdomainid = in_domainid)
        LOOP
            DELETE FROM usergroupinformation_av WHERE ownerid = i.uuid;
            DELETE FROM usergroupinformation    WHERE uuid = i.uuid;
        END LOOP;
        COMMIT;

        --
        --  user groups / information AND assignments / role assignments
        --
        FOR i IN (SELECT id FROM usergroup WHERE domainid = in_domainid)
        LOOP

            DELETE FROM usergroupassignment WHERE parentusergroupid = i.id AND parentusergroupdomainid = in_domainid;
            DELETE FROM usergroupassignment WHERE childusergroupid  = i.id AND childusergroupdomainid  = in_domainid;

            DELETE FROM usergroupuserassignment WHERE usergroupid = i.id AND usergroupdomainid = in_domainid;

            DELETE FROM usergroup_ra WHERE ao_id       = i.id AND ao_domainid       = in_domainid;
            DELETE FROM usergroup_ra WHERE usergroupid = i.id AND usergroupdomainid = in_domainid;

            DELETE FROM usergroup WHERE id = i.id AND domainid = in_domainid;

        END LOOP;
        COMMIT;

        DELETE FROM usergroup_ra            WHERE ao_domainid       = in_domainid OR
                                                  usergroupdomainid = in_domainid;
        COMMIT;

        DELETE FROM usergroupuserassignment WHERE usergroupdomainid = in_domainid;
        COMMIT;

        DELETE FROM usergroupassignment     WHERE parentusergroupdomainid = in_domainid OR
                                                  childusergroupdomainid  = in_domainid;
        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('UserGroup') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromOriginalTables(domainID);
    END IF;

    COMMIT;

END sp_deleteUserDataByDomain;
/

show errors

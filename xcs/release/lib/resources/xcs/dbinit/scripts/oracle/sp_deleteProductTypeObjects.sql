CREATE OR REPLACE PROCEDURE sp_deleteProductTypeObjects (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteproducttypeobjects
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Thomas Budich
-- Description : This procedure deletes
--               (a). ProductAttribute_AV's owned by a given domain
--               (b). ProductType_AV's owned by a given domain
--               (c). ProductAttributes's owned by a given domain
--               (d). ProductType's owned by a given domain
--
-- Owner       : The special XCS Beehive/PowerTier user.
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteProductTypeobjects('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        uuid producttype.uuid%TYPE;
        attrid productattribute.uuid%TYPE;
        uuid_len NUMBER := 28;
        cur  BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        cur2 BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret  BINARY_INTEGER;
    BEGIN

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('ProductType', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);

            DBMS_SQL.PARSE (cur2, 'SELECT uuid FROM '||staging.get_table_name('ProductAttribute', suffix)||' WHERE producttypeid = :uuid', DBMS_SQL.NATIVE);
            DBMS_SQL.BIND_VARIABLE (cur2, 'uuid', uuid);
            DBMS_SQL.DEFINE_COLUMN (cur2, 1, attrid, uuid_len);
            ret := DBMS_SQL.EXECUTE (cur2);

            LOOP
                EXIT WHEN DBMS_SQL.FETCH_ROWS (cur2) = 0;
                DBMS_SQL.COLUMN_VALUE (cur2, 1, attrid);
                EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductAttribute_AV', suffix)||' WHERE ownerid=:uuid' USING IN attrid;
                EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductAttribute', suffix)||' WHERE uuid=:uuid' USING IN attrid;
            END LOOP;

            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductType_AV', suffix)||' WHERE OWNERID=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductType', suffix)||' WHERE uuid=:uuid' USING IN uuid;

            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('ProductType', suffix)||
                              ' SET parentproducttypeid = NULL, lastmodified=utctimestamp()'||
                              ' WHERE parentproducttypeid=:uuid' USING IN uuid;
        END LOOP;
        COMMIT;

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('ProductAttribute', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductAttribute_AV', suffix)||' WHERE ownerid=:uuid' USING uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductAttribute', suffix)|| ' WHERE uuid=:uuid' USING uuid;
        END LOOP;
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


BEGIN

    IF sf_is_staging_table('PRODUCTTYPE') THEN
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
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deleteProductTypeObjects;
/
show errors;

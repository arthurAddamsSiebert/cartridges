CREATE OR REPLACE PROCEDURE sp_deleteProductVariObjects (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteproductvariobjects
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Thomas Budich
-- Description : This procedure deletes
--               (a). ProductVariation_AV's  owned by a given domain
--               (b). ProductVariationAssignment's owned by a given domain
--               (c). ProductVariation's owned by a given domain
--               (d). ProductVariationValue's owned by a given domain
--               (e). ProductVariationAssignment's owned by a given domain
--               (f). productvariationvalue's owned by a given domain
--               (g). ProductVariationAssignment's owned by a given domain
--               (h). variablevariationattribute's owned by a given domain
--               (i). variationtype 's owned by a given domain
-- Input       : domainID   - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteproductvariobjects('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    --
    -- This procedure removes all rows belonging to domain with given
    -- uuid from staging tables.
    --

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        uuid productvariation.uuid%TYPE;
        uuid_len NUMBER := 28;
        cur  BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret  BINARY_INTEGER;
    BEGIN

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('ProductVariation', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductVariation_AV', suffix)||' WHERE ownerid=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductVariationAssignment', suffix)||' WHERE productvariationid=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('Product', suffix)||' SET defaultproductvariationid = NULL WHERE defaultproductvariationid = :uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductVariation', suffix)||' WHERE uuid=:uuid' USING IN uuid;
        END LOOP;
        COMMIT;

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('ProductVariationValue', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductVariationValu_AV', suffix)||' WHERE ownerid=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductVariationAssignment', suffix)||' WHERE productvariationvalueid=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ProductVariationValue', suffix)||' WHERE uuid=:uuid' USING IN uuid;
        END LOOP;
        COMMIT;

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('VariableVariationAttribute', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('VariableVariationAtt_AV', suffix)||' WHERE ownerid=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('VariableVariationAttribute', suffix)||' WHERE uuid=:uuid' USING IN uuid;
        END LOOP;
        COMMIT;

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('VariationType', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid);
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('VariationType_av', suffix)||' WHERE ownerid=:uuid' USING IN uuid;
            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('VariationType', suffix)||' WHERE uuid=:uuid' USING IN uuid;
        END LOOP;
        COMMIT;

        DBMS_SQL.CLOSE_CURSOR (cur);

    EXCEPTION
        WHEN OTHERS THEN
            IF DBMS_SQL.IS_OPEN (cur) THEN
                DBMS_SQL.CLOSE_CURSOR (cur);
            END IF;
            RAISE;
    END;

BEGIN

    IF sf_is_staging_table('ProductVariation') THEN
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

END sp_deleteProductVariObjects;
/
show errors;

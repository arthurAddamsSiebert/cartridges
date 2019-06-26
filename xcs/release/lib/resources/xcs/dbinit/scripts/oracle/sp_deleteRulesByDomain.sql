CREATE OR REPLACE PROCEDURE sp_deleteRulesByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteRulesByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
--             : Thomas Kober     07/20/2005 - staging and 6.1.x (rulaction removed)
--                                             compatible
-- Created     : Dirk Kassner, Thomas Budich
-- Description : This procedure deletes rule related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteRulesByDomain('domainid')
------------------------------------------------------------------------------------------

AS

    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS
        uuid_rs ruleset.uuid%TYPE;
        uuid_bs businessrule.uuid%TYPE;
        uuid_len NUMBER := 28;
        cur  BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        cur2 BINARY_INTEGER := DBMS_SQL.OPEN_CURSOR;
        ret BINARY_INTEGER;
    BEGIN

        DBMS_SQL.PARSE (cur, 'SELECT uuid FROM '||staging.get_table_name('RuleSet', suffix)||' WHERE domainid = :in_domainid', DBMS_SQL.NATIVE);
        DBMS_SQL.BIND_VARIABLE (cur, 'in_domainid', in_domainid);
        DBMS_SQL.DEFINE_COLUMN (cur, 1, uuid_rs, uuid_len);
        ret := DBMS_SQL.EXECUTE (cur);

        LOOP
            EXIT WHEN DBMS_SQL.FETCH_ROWS (cur) = 0;
            DBMS_SQL.COLUMN_VALUE (cur, 1, uuid_rs);

            DBMS_SQL.PARSE (cur2, 'SELECT uuid FROM '||staging.get_table_name('BusinessRule', suffix)||' WHERE rulesetid = :uuid', DBMS_SQL.NATIVE);
            DBMS_SQL.BIND_VARIABLE (cur2, 'uuid', uuid_rs);
            DBMS_SQL.DEFINE_COLUMN (cur2, 1, uuid_bs, uuid_len);
            ret := DBMS_SQL.EXECUTE (cur2);

            LOOP
                EXIT WHEN DBMS_SQL.FETCH_ROWS (cur2) = 0;
                DBMS_SQL.COLUMN_VALUE (cur2, 1, uuid_bs);

                EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TimeCondition',         suffix)||' WHERE conditionruleid = :uuid or exceptionruleid = :uuid' USING IN uuid_bs, uuid_bs;
                EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('WeekDayCondition',      suffix)||' WHERE conditionruleid = :uuid or exceptionruleid = :uuid' USING IN uuid_bs, uuid_bs;
                EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TimeIntervalCondition', suffix)||' WHERE conditionruleid = :uuid or exceptionruleid = :uuid' USING IN uuid_bs, uuid_bs;

                EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('RuleSet', suffix)||' SET conditionruleid = NULL WHERE :uuid = conditionruleid' USING IN uuid_bs;
                EXECUTE IMMEDIATE 'UPDATE '||staging.get_table_name('RuleSet', suffix)||' SET exceptionruleid = NULL WHERE :uuid = exceptionruleid' USING IN uuid_bs;

                EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('BusinessRule', suffix)||' WHERE uuid = :uuid' USING IN uuid_bs;

            END LOOP;

            EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RuleSetAssignment', suffix)||' WHERE rulesetid = :rulesetid' USING uuid_rs;

        END LOOP;
        COMMIT;

        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('RuleSet',               suffix)||' WHERE domainid = :domain' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('BusinessRule',          suffix)||' WHERE domainid = :domain' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TimeCondition',         suffix)||' WHERE domainid = :domain' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('WeekDayCondition',      suffix)||' WHERE domainid = :domain' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TimeIntervalCondition', suffix)||' WHERE domainid = :domain' USING in_domainid;
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('BusinessRule',          suffix)||' WHERE domainid = :domain' USING in_domainid;

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

    IF sf_is_staging_table('RuleSet') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deleteRulesByDomain;
/

show errors

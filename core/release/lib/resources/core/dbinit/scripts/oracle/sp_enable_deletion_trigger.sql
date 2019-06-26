CREATE OR REPLACE PROCEDURE sp_enable_deletion_trigger (new_state IN BOOLEAN)

------------------------------------------------------------------------------------------
-- Name        : sp_enable_deletion_trigger
-- Created     : Thomas Budich
-- Description : This procedure is used to change the state of all deletion trigger
--               belonging to staging environment.
-- Input       : new_state TRUE for ENABLE, FALSE for DISABLE
-- Output      : none
-- Examples    : exec sp_enable_deletion_trigger(TRUE)
--               exec sp_enable_deletion_trigger(FALSE)
------------------------------------------------------------------------------------------

AS
    new_status VARCHAR2(10);
    trigger_stmt VARCHAR2(255);
    CURSOR set_trigger_status_cur (ns IN VARCHAR2) IS
         SELECT 'ALTER TRIGGER '||trigger_name||' '
         FROM user_triggers WHERE status<>ns AND trigger_name like 'T$%';
BEGIN
    IF new_state THEN
        new_status := 'ENABLE';
    ELSE
        new_status := 'DISABLE';
    END IF;

    OPEN set_trigger_status_cur (new_status);
    LOOP
        FETCH set_trigger_status_cur INTO trigger_stmt;
        EXIT WHEN set_trigger_status_cur%NOTFOUND
                  OR set_trigger_status_cur%ROWCOUNT=0;
        EXECUTE IMMEDIATE trigger_stmt||new_status;
    END LOOP;
    CLOSE set_trigger_status_cur;
EXCEPTION
    WHEN OTHERS THEN
    BEGIN
        CLOSE set_trigger_status_cur;

        RAISE;
    END;
END;
/

show errors;

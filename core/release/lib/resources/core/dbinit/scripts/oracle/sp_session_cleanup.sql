CREATE OR REPLACE PROCEDURE sp_session_cleanup
(
    now         IN NUMBER,
    batchSize   IN NUMBER DEFAULT 1000
)
------------------------------------------------------------------------------------------
-- Name        : sp_session_cleanup
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     07/08/2011 - #ENFINITY-10507: ORA-00060 and -06512: SP_SESSION_CLEANUP"
--                                             errors during the 60-hours load test in integration QA-Cluster
-- Created     : Thomas Kober     05/17/2000
-- Description : Clean up session state in the device. Only session state that has
--               expired is removed.
-- Input       : now - The current java GMT time
-- Output      : none
-- Example     : exec sp_session_cleanup(9.594E+11)
------------------------------------------------------------------------------------------
AS

  isContainsRows BOOLEAN;
  loopCnt        INTEGER := 0;
  delCnt         INTEGER := 0;

  CURSOR cur (l_now sessioninformation.expires%TYPE, l_batchsize NUMBER) IS
      SELECT sessionid
        FROM sessioninformation
       WHERE expires < l_now
         AND rownum  < l_batchsize + 1
         FOR UPDATE NOWAIT;
BEGIN

  LOOP

    isContainsRows := FALSE;
    delCnt         := 0;
    loopCnt        := loopCnt + 1;

    FOR rec IN cur(now, batchSize) LOOP

      isContainsRows := TRUE;
      DELETE FROM sessioninformation WHERE CURRENT OF cur;
      delCnt := delCnt + 1;

    END LOOP;

    COMMIT;

    IF NOT isContainsRows THEN
      EXIT;
    END IF;

    logger.log('batch-loop #' || loopCnt || ' - deleted sessioninformation rows: ' || delCnt);

  END LOOP;

END sp_session_cleanup;
/

show errors


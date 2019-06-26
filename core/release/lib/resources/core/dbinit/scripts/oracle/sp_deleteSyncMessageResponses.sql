CREATE OR REPLACE PROCEDURE sp_deleteSyncMessageResponses
(
    olderThan IN NUMBER         -- the number of days afterwards the syncmessageresponses expire
)
AS

------------------------------------------------------------------------------------------
-- Name        : sp_deleteSyncMessageResponses
-- History     : user             date       - desc
--             : ...
-- Created     : Philipp Otto
-- Description : This procedure deletes all syncmessageresponses which are older than 
--               given number of days
-- Input       : olderThan - the number of days afterwards the syncmessageresponses expire
-- Output      : none
-- Example     : exec sp_deleteSyncMessageResponses(14)
------------------------------------------------------------------------------------------

stmt_comment VARCHAR2(500) := ' /* sp_deleteSyncMessageResponses('
  || olderThan || ') */ ';

BEGIN

    --
    -- delete syncmessageresponses
    --
    EXECUTE IMMEDIATE
        'DELETE' || stmt_comment || 'FROM syncmessageresponse smr ' ||
        'WHERE smr.lastmodified IS NULL ' ||
        'OR smr.lastmodified < (UTCTIMESTAMP() - :olderThan)' USING olderThan;
        logger.log(RPAD('syncmessageresponse: ',32,' ') || LPAD(SQL%ROWCOUNT,10,' ') || ' rows deleted.');
    COMMIT;

END sp_deleteSyncMessageResponses;
/

show errors
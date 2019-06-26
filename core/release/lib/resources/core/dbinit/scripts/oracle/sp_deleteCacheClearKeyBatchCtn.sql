CREATE OR REPLACE PROCEDURE sp_deleteCacheClearKeyBatchCtn
(
    olderThan IN NUMBER         -- the number of days afterwards the cacheclearkeybatchcontainers expire
)
AS

------------------------------------------------------------------------------------------
-- Name        : sp_deleteCacheClearKeyBatchCtn
-- History     : user             date       - desc
--             : ...
-- Created     : Philipp Otto
-- Description : This procedure deletes all cacheclearkeybatchcontainers which don't have a
--               desiredcachecleardate and are older than given number
--               of days
-- Input       : olderThan - the number of days afterwards the cacheclearkeybatchcontainers expire
-- Output      : none
-- Example     : exec sp_deleteCacheClearKeyBatchCtn(14)
------------------------------------------------------------------------------------------

stmt_comment VARCHAR2(500) := ' /* sp_deleteCacheClearKeyBatchCtn('
  || olderThan || ') */ ';

BEGIN

    --
    -- delete cacheclearkeybatchcontainers
    --
    EXECUTE IMMEDIATE
        'DELETE' || stmt_comment || 'FROM cacheclearkeybatchcontainer cckbc ' ||
        'WHERE cckbc.desiredcachecleardate IS NULL AND ' ||
        'cckbc.creationdate < (UTCTIMESTAMP() - :olderThan)' USING olderThan;
    logger.log(RPAD('cacheclearkeybatchcontainer: ',32,' ') || LPAD(SQL%ROWCOUNT,10,' ') || ' rows deleted.');

    COMMIT;

END sp_deleteCacheClearKeyBatchCtn;
/

show errors
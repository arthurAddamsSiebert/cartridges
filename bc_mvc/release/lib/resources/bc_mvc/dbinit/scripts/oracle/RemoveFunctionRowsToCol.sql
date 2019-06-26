--
-- Removes the function F_ROWSTOCOL
--

-- ignoring ORA-04043: object F_ROWSTOCOL does not exist
EXEC sql_util.execute('DROP FUNCTION F_ROWSTOCOL', -4043);
exit

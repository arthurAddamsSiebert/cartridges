CREATE OR ALTER PROCEDURE sp_session_cleanup
(
	@now		NUMERIC,
	@batchSize	NUMERIC = 1000
)
------------------------------------------------------------------------------------------
-- Name        : sp_session_cleanup
-- History     : user				date       - desc
--             : ...
-- Created     : Surender Singh		12/11/2017
-- Description : Clean up session state in the device. Only session state that has
--               expired is removed.
-- Input       : now - The current java GMT time
-- Output      : none
-- Example     : exec sp_session_cleanup 9.594E+11
------------------------------------------------------------------------------------------
AS
BEGIN
	DELETE FROM sessioninformation WHERE expires < @now;
END
GO

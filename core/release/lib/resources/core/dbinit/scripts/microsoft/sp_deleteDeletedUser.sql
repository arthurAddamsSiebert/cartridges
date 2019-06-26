------------------------------------------------------------------------------------------
-- Name        : sp_deleteDeletedUser
-- Created     : Anand Singh
-- Description : This procedure deletes an user from the user deletion tracking table.
-- Input       : in_userID   The user id.
-- Output      : none
-- Example     : exec sp_deleteDeletedUser 'userID'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteDeletedUser 
(
	@in_userID NVARCHAR(30)
)
AS
BEGIN
	--
	-- If Input NULL or staging already initialized
	-- -> do nothing
	--
	IF ((@in_userID IS NULL ) OR dbo.STAGING$is_staging_initialized()=1)
		RETURN;
	--
	-- delete given user
	--
	BEGIN TRAN
		DELETE FROM deleteduser WHERE userid = @in_userID;
	COMMIT;
END
GO
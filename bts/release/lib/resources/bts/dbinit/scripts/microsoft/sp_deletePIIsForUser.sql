------------------------------------------------------------------------------------------
-- Name        : sp_deletePIIsForUser
-- Created     : Surender Singh
-- Description : This procedure deletes payment instrument infos for a specific user
-- Input       : userID   The user id.
-- Output      : none
-- Example     : exec sp_deletePIIsForUser 'userID'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deletePIIsForUser
(
	@userID	NVARCHAR(30)
)
AS
BEGIN
	DECLARE @in_userid	NVARCHAR(30) = @userid;
	--
	-- If Input NULL raise an EXCEPTION
	--
	IF (@in_userid IS NULL)
		THROW -20101, 'User Id is null', 1;
	--
	-- delete payment instrument infos
	--
	BEGIN TRAN
		DELETE piiav FROM paymentinstrumentinf_av piiav WHERE ownerid IN (SELECT pii.uuid FROM paymentinstrumentinfo pii WHERE pii.userid = @in_userid);
		DELETE pii FROM paymentinstrumentinfo pii WHERE pii.userid = @in_userid;
	COMMIT;
END
GO
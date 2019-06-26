CREATE OR ALTER PROCEDURE sp_deleteCommentByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteCommentByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ISComment
-- * CommentAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteCommentByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'ISComment', 'ISComment_AV', @domainID, 'domainid';
	COMMIT;
END
GO

CREATE OR ALTER PROCEDURE sp_deleteApprovalByDomain (@domainID NVARCHAR(56))
------------------------------------------------------------------------------------------
-- Name        : deleteApprovalAnswerByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ApprovalAnswer
-- * ApprovalAnswerAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : EXEC sp_deleteApprovalByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'ApprovalAnswer', 'ApprovalAnswer_AV', @domainID, 'domainid';
	COMMIT;
END
GO

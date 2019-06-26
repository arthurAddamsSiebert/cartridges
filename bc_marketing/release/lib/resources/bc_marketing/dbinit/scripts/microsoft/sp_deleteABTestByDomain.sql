CREATE OR ALTER PROCEDURE sp_deleteABTestByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteABTestByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ABTestPO
-- * ABTestPOAttributeValuePO
-- * ABTestGroupPO
-- * ABTestGroupPOAttributeValuePO
-- * ABTestStatisticsPO
-- * ABTestStatisticsPOAttributeValuePO
-- * ABTestEventPO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteABTestByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DELETE FROM ABTestEvent WHERE domainid = @domainID;

		EXEC sp_genStagPoAvDeleteByDomain 'ABTestStatistics', 'ABTestStatistics_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'ABTestGroup', 'ABTestGroup_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'ABTest', 'ABTest_AV', @domainID, 'domainid';
	COMMIT;
END
GO
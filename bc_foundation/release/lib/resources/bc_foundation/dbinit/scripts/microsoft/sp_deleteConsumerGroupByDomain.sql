CREATE OR ALTER PROCEDURE sp_deleteConsumerGroupByDomain (@domainID VARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : deleteConsumerGroupByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * ConsumerGroup
-- * ConsumerGroupAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteConsumerGroupByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'ConsumerGroup', 'ConsumerGroup_AV', @domainID, 'domainid';
	COMMIT;
END
GO

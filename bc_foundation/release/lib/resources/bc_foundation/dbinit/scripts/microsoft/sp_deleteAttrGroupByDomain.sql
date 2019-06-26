CREATE OR ALTER PROCEDURE sp_deleteAttrGroupByDomain (@domainID NVARCHAR(56))
------------------------------------------------------------------------------------------
-- Name        : deleteAttributeGroupByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * AttributeGroup
-- * AttributeGroupAttributeValue
-- * AttributeDescriptor
-- * AttributeDescriptorAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : EXEC sp_deleteAttrGroupByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'AttributeDescriptor', 'AttributeDescriptor_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'AttributeGroup', 'AttributeGroup_AV', @domainID, 'domainid';
	COMMIT;
END
GO

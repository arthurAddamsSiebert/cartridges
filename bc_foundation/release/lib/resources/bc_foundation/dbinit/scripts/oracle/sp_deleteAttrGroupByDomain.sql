CREATE OR REPLACE PROCEDURE sp_deleteAttrGroupByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteAttributeGroupByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
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
-- Example     : exec sp_deleteAttrGroupByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('AttributeDescriptor', 'AttributeDescriptor_AV', domainID, 'domainid');
    sp_genStagPoAvDeleteByDomain('AttributeGroup', 'AttributeGroup_AV', domainID, 'domainid');

    commit;

END sp_deleteAttrGroupByDomain;
/

show errors;
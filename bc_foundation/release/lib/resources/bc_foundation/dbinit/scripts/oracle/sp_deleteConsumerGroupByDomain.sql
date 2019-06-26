CREATE OR REPLACE PROCEDURE sp_deleteConsumerGroupByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteConsumerGroupByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * ConsumerGroup
-- * ConsumerGroupAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteConsumerGroupByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('ConsumerGroup', 'ConsumerGroup_AV', domainID, 'domainid');

    commit;

END sp_deleteConsumerGroupByDomain;
/

show errors;

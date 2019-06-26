CREATE OR REPLACE PROCEDURE sp_deleteRatingByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteRatingByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * RatingComment
-- * RatingCommentAttributeValue
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteRatingByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS

BEGIN

    sp_genStagPoAvDeleteByDomain('RatingComment', 'RatingComment_AV', domainID, 'domainid');

    commit;

END sp_deleteRatingByDomain;
/

show errors;

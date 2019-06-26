CREATE OR ALTER PROCEDURE sp_deleteAffiliateByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : deleteAffiliateByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * AffiliatePartnerPO
-- * AffiliatePartnerPOAttributeValuePO
-- * AffiliateProgramPO
-- * AffiliateProgramPOAttributeValuePO
-- * AffiliateSessionPO
-- * AffiliateSessionPOAttributeValuePO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteAffiliateByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		EXEC sp_genStagPoAvDeleteByDomain 'AffiliateSession', 'AffiliateSession_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'AffiliateProgram', 'AffiliateProgram_AV', @domainID, 'domainid';
		EXEC sp_genStagPoAvDeleteByDomain 'AffiliatePartner', 'AffiliatePartner_AV', @domainID, 'domainid';
	COMMIT;

END
GO
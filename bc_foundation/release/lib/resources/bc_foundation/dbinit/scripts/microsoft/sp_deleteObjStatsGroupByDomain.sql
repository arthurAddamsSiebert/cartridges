CREATE OR ALTER PROCEDURE sp_deleteObjStatsGroupByDomain (@domainID NVARCHAR(30))
------------------------------------------------------------------------------------------
-- Name        : sp_deleteObjStatsGroupByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure DELETEs ObjectStatisticsGroup tables.
-- Input       : domainID   The domain id of the DELETEd domain.
-- Output      : none
-- Example     : exec sp_deleteObjStatsGroupByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRAN
		--
		-- ObjectStatisticsGroup/AV
		--
		EXEC sp_genStagPoAvDeleteByDomain 'ObjectStatisticsGroup', 'ObjectStatisticsGrou_AV', @domainID, 'domainid';
	COMMIT;
END 
GO

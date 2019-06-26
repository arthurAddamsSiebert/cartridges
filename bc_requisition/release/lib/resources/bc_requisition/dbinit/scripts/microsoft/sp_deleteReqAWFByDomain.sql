-- clean up tables in staging scenario
CREATE OR ALTER PROCEDURE sp_deleteReqAWFByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
AS
BEGIN
	BEGIN TRAN
		DECLARE @sqlQuery NVARCHAR(3000);
		--
		-- RequisitionAWFStep
		--
		EXEC sp_genericPoAvDeleteByDomain 'RequisitionAWFStep','RequisitionAWFStep_AV', @suffix, @in_domainid, 'domainid';

		--
		-- RequisitionAWFSequence
		--			
		EXEC sp_genericPoAvDeleteByDomain 'RequisitionAWFSequence','RequisitionAWFSequen_AV', @suffix, @in_domainid, 'domainid';

		--
		-- RequisitionAWFDefinition
		--
		SET @sqlQuery = CONCAT('DELETE a FROM ', dbo.STAGING$get_table_name('ActiveReqAWFDefAssignment', @suffix),' a
		WHERE EXISTS (SELECT 1 FROM ', dbo.STAGING$get_table_name('RequisitionAWFDefinition', @suffix),' po
		WHERE a.awfdefinitionuuid = po.uuid AND po.domainid = ''', @in_domainid,''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
					
		EXEC sp_genericPoAvDeleteByDomain 'RequisitionAWFDefinition','RequisitionAWFDefini_AV', @suffix, @in_domainid, 'domainid';

	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteReqAWFByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteReqAWFByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * RequisitionAWFDefinitionPO
-- * RequisitionAWFDefinitionPOAttributeValue
--
-- * RequisitionAWFSequencePO
-- * RequisitionAWFSequencePOAttributeValue
--
-- * RequisitionAWFStepPO
-- * RequisitionAWFStepPOAttributeValue
--
-- * ActiveReqAWFDefAssignmentPO
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteReqAWFByDomain 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
AS
BEGIN

    IF dbo.sf_is_staging_table('RequisitionAWFDefinition') = 1
	BEGIN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        EXEC sp_deleteReqAWFByDomain$deleteFromStagingTables  @domainID, '$1';
        EXEC sp_deleteReqAWFByDomain$deleteFromStagingTables @domainID, '$2';
	END
    ELSE
	BEGIN
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        EXEC sp_deleteReqAWFByDomain$deleteFromStagingTables @domainID, null;
    END;

END
GO
CREATE OR ALTER PROCEDURE sp_deleteAdvancedShipByDomain$execute
(
	@stmt NVARCHAR(3000),
	@table_name VARCHAR(256),
	@clause NVARCHAR(3000),
	@aDomainID NVARCHAR(30) --Parameter not used and kept only to keep similarity.
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
    IF dbo.STAGING$is_prepared(@table_name) = 1
	BEGIN
        SET @sqlQuery = CONCAT(@stmt, ' ', dbo.STAGING$get_table_name(@table_name, '$1'), ' ', @clause);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
        SET @sqlQuery = CONCAT(@stmt, ' ', dbo.STAGING$get_table_name(@table_name, '$2'), ' ', @clause);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	END
    ELSE
	BEGIN
        SET @sqlQuery = CONCAT(@stmt, ' ', @table_name, ' ', @clause);
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	END
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteAdvancedShipByDomain$deleteShippingCondition
(
	@aDomainID NVARCHAR(30)
) AS
BEGIN
	DECLARE @scount		INT,
			@scounter	INT = 1,
			@sccount	INT,
			@sccounter	INT = 1,
			@suuid		NVARCHAR(30),
			@scuuid		NVARCHAR(30);

	DECLARE @SUuidTable TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	DECLARE @SCUuidTable TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	INSERT INTO @SUuidTable
		SELECT uuid FROM SHIPPINGCONDITION WHERE shippingruleid IN (SELECT uuid FROM SHIPPINGRULE WHERE domainid = @aDomainID)
	
	SELECT @scounter = COUNT(1) FROM @SUuidTable
	WHILE @scounter <= @sccount
	BEGIN
		DECLARE @stmt		NVARCHAR(3000),
				@tablename	NVARCHAR(256),
				@clause		NVARCHAR(3000);
		SELECT @stmt = 'DELETE FROM', @tablename = 'SHIPPINGCONDITION_AV';
		SELECT @suuid = uuid FROM @SUuidTable WHERE ID = @scounter
		INSERT INTO @SCUuidTable
			SELECT uuid FROM SHIPPINGCONDITION WHERE parentconditionid = @suuid
		SELECT COUNT(1) FROM @SCUuidTable
		WHILE @sccounter <= @sccount
		BEGIN
			SELECT @scuuid = uuid FROM @SCUuidTable WHERE ID = @sccounter;
			SET @clause = CONCAT('WHERE ownerid = ''', @scuuid, '''')
			EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @aDomainID
			
			SET @clause = CONCAT('WHERE ownerid in (select uuid from SHIPPINGCONDITION where parentconditionid = ''', @scuuid, '''')
			EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @aDomainID

			SET @clause = CONCAT('WHERE parentconditionid = ''', @scuuid, '''')
			EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @aDomainID
			SET @sccounter = @sccounter + 1;	
		END
		SET @clause = CONCAT('WHERE ownerid = ''', @suuid, '''')
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @aDomainID
		SELECT @tablename = 'SHIPPINGCONDITION';
		SET @clause = CONCAT('WHERE uuid = ''', @suuid, '''')
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @aDomainID
		SET @clause = CONCAT('WHERE parentconditionid = ''', @suuid, '''')
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @aDomainID
		SET @scounter = @scounter + 1;
	END
END;
GO
CREATE OR ALTER PROCEDURE sp_deleteAdvancedShipByDomain
(
	@domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
--
-- Name        : sp_deleteAdvancedShipByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes
--
-- * SHIPPINGBRACKETS
-- * SHIPPINGCHARGEPLANS
-- * SHIPPINGACTION
-- * SHIPPINGCONDITION
-- * SHIPPINGRULE
-- * SHIPPINGSURCHARGE
-- * SHIPPINGOVERRIDE
-- * SHIPPINGELIGASS
-- * SHIPPINGELIG
-- * FREIGHTCLASS
-- * ADVANCEDSHIPPINGMETHOD
-- and sets the relation in ProductLineItem to NULL
-- owned by a given domain
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : EXEC sp_deleteAdvancedShipByDomain domainid
--
------------------------------------------------------------------------------------------
AS
BEGIN
    DECLARE @in_domainID	NVARCHAR(30) = @domainID,
			@l_cnt			NUMERIC;
    --
    -- If Input NULL raise an EXCEPTION
    --
    IF (@domainID IS NULL) 
        THROW -20101, 'domainID is NULL.', 1;
	DECLARE @stmt		NVARCHAR(3000),
			@tablename	NVARCHAR(256),
			@clause		NVARCHAR(3000);
	BEGIN TRAN
		UPDATE productlineitem SET shippingmethodid = NULL WHERE domainid = @in_domainID;

	------------------------------------------------------------------------------------------
	--  SHIPPINGBRACKETS
		SELECT @stmt = 'DELETE FROM';
		SELECT @tablename = 'SHIPPINGCONDITION_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRWEIGHT WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGBRWEIGHT', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGBRVALUE_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRVALUE WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGBRVALUE', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGBRITEM_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRITEM WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID
		
		SELECT @tablename = 'SHIPPINGBRITEM', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID
		
		SELECT @tablename = 'SHIPPINGBRFLAT_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGBRFLAT WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGBRFLAT', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		------------------------------------------------------------------------------------------
		--  SHIPPINGCHARGEPLANS
		SELECT @tablename = 'SHIPPINGCHPLFLAT_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLFLAT WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLFLAT', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLFLEX_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLFLEX WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLFLEX', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLITEM_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLITEM WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLITEM', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLVALUE_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLVALUE WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLVALUE', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLWEIGHT_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGCHPLWEIGHT WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGCHPLWEIGHT', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		------------------------------------------------------------------------------------------
		--  SHIPPINGACTION
		SELECT @tablename = 'SHIPPINGACTION_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGACTION WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGACTION', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		EXEC sp_deleteAdvancedShipByDomain$deleteShippingCondition @domainID;

		SELECT @tablename = 'SHIPPINGRULE_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGRULE WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGRULE', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID


		------------------------------------------------------------------------------------------
		--  SHIPPINGSURCHARGE  AND ELIGIBILITY
		SELECT @tablename = 'SHIPPINGSURCHARGE_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGSURCHARGE WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGSURCHARGE', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGOVERRIDE_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGOVERRIDE WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGOVERRIDE', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGELIGASS_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGELIGASS WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGELIGASS', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGELIG_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM SHIPPINGELIG WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'SHIPPINGELIG', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		------------------------------------------------------------------------------------------
		--  FREIGHTCLASS
		SELECT @tablename = 'FREIGHTCLASS_AV', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM FREIGHTCLASS WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'FREIGHTCLASS', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		------------------------------------------------------------------------------------------
		--  FINALLY ADVANCED_SHIPPINGMETHOD
		SELECT @tablename = 'advancedshippingmeth_av', @clause = CONCAT('WHERE ownerid IN (SELECT uuid FROM advancedshippingmethod WHERE domainid = ''', @domainID, ''')');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

		SELECT @tablename = 'advancedshippingmethod', @clause = CONCAT('WHERE domainid = ''', @domainID, '''');
		EXEC sp_deleteAdvancedShipByDomain$execute @stmt, @tablename, @clause, @domainID

	COMMIT;
END
GO

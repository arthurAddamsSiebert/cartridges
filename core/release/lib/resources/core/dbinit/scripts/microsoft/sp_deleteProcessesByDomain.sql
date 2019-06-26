CREATE OR ALTER PROCEDURE sp_deleteProcessesByDomain$deleteResource(@in_uuid NVARCHAR(30)) AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProcessesByDomain$deleteResource
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes dependent tables data belonging to
--               uuid and used by sp_deleteProcessesByDomain
-- Input       : @in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteProcessesByDomain 'domainid' -- Main SP which is using this SP.
------------------------------------------------------------------------------------------
BEGIN
	DELETE FROM acqlogentryresourceassignment
	WHERE resourceid = @in_uuid
	OR acquisitionlogentryid IN (SELECT uuid FROM acqlogentry WHERE contentionresourceid = @in_uuid);
	DELETE FROM acqlogentry_av WHERE ownerid IN (SELECT uuid FROM acqlogentry WHERE contentionresourceid = @in_uuid);
	DELETE FROM acqlogentry    WHERE contentionresourceid = @in_uuid;
	DELETE FROM isresource_av  WHERE ownerid = @in_uuid;
	DELETE FROM isresource     WHERE uuid = @in_uuid;
END
GO

CREATE OR ALTER PROCEDURE sp_deleteProcessesByDomain$updateJobConfiguration(@in_uuid NVARCHAR(30), @suffix VARCHAR(256)) 
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProcessesByDomain$updateJobConfiguration
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes dependent tables data belonging to
--               uuid having specific suffix and used by sp_deleteProcessesByDomain
-- Input       : @in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteProcessesByDomain 'domainid' -- Main SP which is using this SP.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(3000);
	SET @sqlQuery = CONCAT('UPDATE ', dbo.STAGING$get_table_name('JobConfiguration', @suffix), ' SET currentprocessid = NULL WHERE currentprocessid = ''', @in_uuid, '''');
	EXEC SQL_UTIL$execute @sqlQuery, 0
END
GO

CREATE OR ALTER PROCEDURE sp_deleteProcessesByDomain (@in_domainid NVARCHAR(30)) AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteProcessesByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure deletes replication tasks and processes belonging to
--               domain with given domainid
-- Input       : @in_domainid   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteProcessesByDomain 'domainid'
------------------------------------------------------------------------------------------
BEGIN
	SET NOCOUNT ON;
	DECLARE @count		INT,
			@counter	INT = 1,
			@uuid		NVARCHAR(30),
			@puuid		NVARCHAR(30),
			@pcount		INT,
			@pcounter	INT = 1;

	DECLARE @ResourceUUID TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	DECLARE @ProcessUUID TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	INSERT INTO @ResourceUUID
		SELECT uuid FROM isresource WHERE domainid = @in_domainid
	SELECT @count = COUNT(1) FROM @ResourceUUID

	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @ResourceUUID WHERE uuid = @uuid;
			EXEC sp_deleteProcessesByDomain$deleteResource @uuid;
			SET @counter = @counter + 1
		END

		DELETE FROM acqlogentryresourceassignment
			  WHERE acquisitionlogentryid IN (SELECT uuid FROM acqlogentry WHERE domainid = @in_domainid);
		DELETE FROM acqlogentry_av WHERE ownerid IN (SELECT uuid FROM acqlogentry WHERE domainid = @in_domainid);
		DELETE FROM acqlogentry    WHERE domainid = @in_domainid;
		DELETE FROM stagingprocesscomponent WHERE stagingdomainid = @in_domainid;
	COMMIT;
	INSERT INTO @ProcessUUID
		SELECT uuid FROM process WHERE domainid = @in_domainid
	SELECT @pcount = COUNT(1) FROM @ProcessUUID
	BEGIN TRAN
		WHILE @pcounter <= @pcount
		BEGIN
			DELETE FROM @ResourceUUID
			SELECT @puuid = uuid FROM @ProcessUUID WHERE ID = @counter
			INSERT INTO @ResourceUUID
				SELECT uuid FROM isresource WHERE resourceownerid = @puuid
		
			SELECT @count = COUNT(1) FROM @ResourceUUID

			WHILE @counter <= @count
			BEGIN
				SELECT @uuid = uuid FROM @ResourceUUID WHERE uuid = @uuid;
				EXEC sp_deleteProcessesByDomain$deleteResource @uuid;
				SET @counter = @counter + 1
			END
			DELETE FROM acqlogentryresourceassignment
				  WHERE acquisitionlogentryid IN (SELECT uuid FROM acqlogentry WHERE processid = @puuid);
			DELETE FROM acqlogentry_av      WHERE ownerid IN (SELECT uuid FROM acqlogentry WHERE processid = @puuid);
			DELETE FROM acqlogentry         WHERE processid = @puuid;

			DELETE FROM replicationtask_av  WHERE ownerid IN (SELECT uuid FROM replicationtask WHERE processid = @puuid);
			DELETE FROM replicationtask     WHERE processid = @puuid;

			DELETE FROM stagingprocesscomponent WHERE stagingprocessid = @puuid;
			IF dbo.sf_is_staging_table('JobConfiguration') = 1
			BEGIN
				EXEC sp_deleteProcessesByDomain$updateJobConfiguration @puuid, '$1';
				EXEC sp_deleteProcessesByDomain$updateJobConfiguration @puuid, '$2';
			END
			ELSE
				EXEC sp_deleteProcessesByDomain$updateJobConfiguration @puuid, NULL;
			SET @pcounter = @pcounter + 1
		END
		EXEC sp_genericPoAvDeleteByDomain 'process', 'process_av', NULL, @in_domainid, 'domainid';
    COMMIT;
END
GO

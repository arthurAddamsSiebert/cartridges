CREATE OR ALTER PROCEDURE sp_deleteUserDataByDomain$deleteFromStagingTables(@in_domainid NVARCHAR(30), @suffix VARCHAR(256))
AS
BEGIN
	--
	--  address, profile, credentials, user group assignment
	--
	DECLARE @basicprofile TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	DECLARE @basicaddress TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	DECLARE @uuid		NVARCHAR(30),
			@uuid2		NVARCHAR(30),
			@count		INT = 1,
			@counter	INT = 0,
			@count2		INT = 1,
			@counter2	INT = 0,
			@stmt		NVARCHAR(max);

	SET @stmt = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('basicprofile', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
			
	INSERT INTO @basicprofile
		EXEC SQL_UTIL$execute @stmt, 0

	SELECT @counter = COUNT(1) FROM @basicprofile
	
	BEGIN TRAN
		WHILE @count <= @counter
		BEGIN
			SELECT @uuid = uuid FROM @basicprofile	WHERE ID = @count

			DELETE @basicaddress;
			SET @count2 = 1;

			SET @stmt = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('basicaddress', @suffix), ' WHERE profileid = ''', @uuid, '''');

			INSERT INTO @basicaddress
				EXEC SQL_UTIL$execute @stmt, 0
		
			SELECT @counter2 = COUNT(1) FROM @basicaddress

			WHILE @count2 <= @counter2
			BEGIN
				SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
				SET @STMT = CONCAT('UPDATE ', dbo.STAGING$get_table_name('basicprofile', @suffix), ' SET defaultaddressid = NULL WHERE defaultaddressid = ''', @uuid2, '''');
				EXEC SQL_UTIL$execute @stmt, 0

				SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basicaddress_av', @suffix), ' WHERE ownerid = ''', @uuid2, '''');
				EXEC SQL_UTIL$execute @stmt, 0

				SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basicaddress', @suffix), ' WHERE uuid = ''', @uuid2, '''');
				EXEC SQL_UTIL$execute @stmt, 0
				SET @count2 = @count2 + 1;
			END

			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basiccredentials', @suffix), ' WHERE basicprofileid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @stmt, 0

			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basicprofile_av', @suffix), ' WHERE ownerid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @stmt, 0

			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupuserassignment', @suffix), ' WHERE userid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @stmt, 0

			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basicprofile', @suffix), ' WHERE uuid = ''', @uuid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			--
			--  register user as deleted
			--
			SET @stmt = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('deleteduser', @suffix), ' (userid, domainid, lastmodified, oca) VALUES (''', @uuid, ''', ''', @in_domainid, ''', GETUTCDATE(), 0)');
			EXEC SQL_UTIL$execute @stmt, 0

			SET @count = @count + 1
		END
	COMMIT;
	
	DELETE @basicaddress;
	SET @count2 = 1;
	
	SET @stmt = CONCAT('SELECT uuid from ', dbo.STAGING$get_table_name('d$basicprofile', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @basicaddress
		EXEC SQL_UTIL$execute @stmt, 0
	SELECT @counter2 = COUNT(1) FROM @basicaddress	
	
	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$ergroupuserassignme', @suffix), ' WHERE userid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$basicprofile_av', @suffix), ' WHERE ownerid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$basicprofile', @suffix), ' WHERE uuid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
		END
	COMMIT;
	--
	-- delete basic address table
	--
	DELETE @basicaddress;
	SET @count2 = 1;

	SET @stmt = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('basicaddress', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @basicaddress
		EXEC SQL_UTIL$execute @stmt, 0
	
	SELECT @counter2 = COUNT(1) FROM @basicaddress
		
	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
			SET @stmt = CONCAT('UPDATE ', dbo.STAGING$get_table_name('basicprofile', @suffix), ' SET defaultaddressid = NULL WHERE defaultaddressid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basicaddress_av', @suffix), ' WHERE ownerid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('basicaddress', @suffix), ' WHERE uuid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			SET @count2 = @count2 + 1;
		END
	COMMIT
	
	DELETE @basicaddress;
	SET @count2 = 1;
	
	SET @stmt = CONCAT('SELECT UUID FROM ', dbo.STAGING$get_table_name('d$basicaddress', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @basicaddress
		EXEC SQL_UTIL$execute @stmt, 0
	SELECT @counter2 = COUNT(1) FROM @basicaddress
	
	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$basicaddress_av', @suffix), ' WHERE ownerid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$basicaddress', @suffix), ' WHERE uuid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
		END
	COMMIT
	--
	-- delete user group information
	--
	DELETE @basicaddress;
	SET @count2 = 1;

	SET @stmt = CONCAT('SELECT uuid FROM ', dbo.STAGING$get_table_name('usergroupinformation', @suffix), ' WHERE domainid = ''', @in_domainid, ''' OR usergroupdomainid = ''', @in_domainid, '''');
	INSERT INTO @basicaddress
		EXEC SQL_UTIL$execute @stmt, 0
	
	SELECT @counter2 = COUNT(1) FROM @basicaddress

	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupinformation_av', @suffix), ' WHERE ownerid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupinformation', @suffix), ' WHERE uuid = ''', @uuid2, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			SET @count2 = @count2 + 1;
		END
	COMMIT
	--
	--  user groups / information AND assignments / role assignments
	--
	DECLARE @usergroup TABLE
	(
		ID INT IDENTITY,
		ugip NVARCHAR(256)
	)
	DECLARE @ugip NVARCHAR(256);
	SET @count2 = 1;

	SET @stmt = CONCAT('SELECT id FROM ', dbo.STAGING$get_table_name('usergroup', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
	INSERT INTO @usergroup
		EXEC SQL_UTIL$execute @stmt, 0
	
	SELECT @counter2 = COUNT(1) FROM @usergroup
	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @ugip = ugip FROM @usergroup WHERE ID = @count2
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupassignment', @suffix), ' WHERE parentusergroupid = ''', @ugip, ''' AND parentusergroupdomainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupassignment', @suffix), ' WHERE childusergroupid  = ''', @ugip, ''' AND childusergroupdomainid  = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupuserassignment', @suffix), ' WHERE usergroupid = ''', @ugip, ''' AND usergroupdomainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroup_ra', @suffix), ' WHERE ao_id = ''', @ugip, ''' AND ao_domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroup_ra', @suffix), ' WHERE usergroupid = ''', @ugip, ''' AND usergroupdomainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			
			SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroup', @suffix), ' WHERE id = ''', @ugip, ''' AND domainid = ''', @in_domainid, '''');
			EXEC SQL_UTIL$execute @stmt, 0
			SET @count2 = @count2 + 1;
		END
	COMMIT;
	BEGIN TRAN
		SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroup_ra', @suffix), ' WHERE ao_domainid = ''', @in_domainid, ''' OR usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @stmt, 0
	COMMIT;
	BEGIN TRAN
		SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupuserassignment', @suffix), ' WHERE usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @stmt, 0
	COMMIT;
	BEGIN TRAN
		SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupassignment', @suffix), ' WHERE parentusergroupdomainid = ''', @in_domainid, ''' OR childusergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @stmt, 0
	COMMIT;
	BEGIN TRAN
		SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$basiccredentials', @suffix), ' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @stmt, 0
	COMMIT;
	BEGIN TRAN
		SET @stmt = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('d$ergroupuserassignme', @suffix), ' WHERE usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @stmt, 0
	COMMIT;

END;
GO

CREATE OR ALTER PROCEDURE sp_deleteUserDataByDomain$deleteFromOriginalTables(@in_domainid NVARCHAR(30))
AS
BEGIN
	--
	--  address, profile, credentials, user group assignment
	--
	DECLARE @basicprofile TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	DECLARE @basicaddress TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	DECLARE @uuid		NVARCHAR(30),
			@uuid2		NVARCHAR(30),
			@count		INT = 1,
			@counter	INT = 0,
			@count2		INT = 1,
			@counter2	INT = 0;
	INSERT INTO @basicprofile
		SELECT uuid FROM basicprofile WHERE domainid = @in_domainid
	SELECT @counter = COUNT(1) FROM @basicprofile
	BEGIN TRAN
		WHILE @count <= @counter
		BEGIN
			SELECT @uuid = uuid FROM @basicprofile	WHERE ID = @count

			DELETE @basicaddress;
			SET @count2 = 1;

			INSERT INTO @basicaddress
				SELECT uuid FROM basicaddress WHERE profileid = @uuid
		
			SELECT @counter2 = COUNT(1) FROM @basicaddress

			WHILE @count2 <= @counter2
			BEGIN
				SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
				UPDATE basicprofile SET defaultaddressid = NULL WHERE defaultaddressid = @uuid2;
				DELETE FROM basicaddress_av WHERE ownerid = @uuid2;
				DELETE FROM basicaddress    WHERE uuid = @uuid2;
				SET @count2 = @count2 + 1;
			END
			DELETE FROM basiccredentials          WHERE basicprofileid = @uuid;
			DELETE FROM basicprofile_av           WHERE ownerid = @uuid;
			DELETE FROM usergroupuserassignment   WHERE userid = @uuid;
			DELETE FROM basicprofile              WHERE uuid = @uuid;
			--
			--  register user as deleted
			--
			INSERT INTO deleteduser (userid, domainid, lastmodified, oca) VALUES (@uuid, @in_domainid, GETUTCDATE(), 0);
			SET @count = @count + 1
		END
	COMMIT;
	--
	-- delete basic address table
	--
	DELETE @basicaddress;
	SET @count2 = 1;

	INSERT INTO @basicaddress
		SELECT uuid FROM basicaddress WHERE domainid = @in_domainid;
	
	SELECT @counter2 = COUNT(1) FROM @basicaddress

	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
			UPDATE basicprofile SET defaultaddressid = NULL WHERE defaultaddressid = @uuid2;
			DELETE FROM basicaddress_av WHERE ownerid = @uuid2;
			DELETE FROM basicaddress    WHERE uuid = @uuid2;
			SET @count2 = @count2 + 1;
		END
	COMMIT
	--
	-- delete user group information
	--
	DELETE @basicaddress;
	SET @count2 = 1;

	INSERT INTO @basicaddress
		SELECT uuid FROM usergroupinformation WHERE domainid = @in_domainid OR
	usergroupdomainid = @in_domainid
	
	SELECT @counter2 = COUNT(1) FROM @basicaddress

	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @uuid2 = uuid FROM @basicaddress WHERE ID = @count2
			DELETE FROM usergroupinformation_av WHERE ownerid = @uuid2;
			DELETE FROM usergroupinformation    WHERE uuid = @uuid2;
			SET @count2 = @count2 + 1;
		END
	COMMIT
	--
	--  user groups / information AND assignments / role assignments
	--
	DECLARE @usergroup TABLE
	(
		ID INT IDENTITY,
		ugip NVARCHAR(256)
	)
	DECLARE @ugip NVARCHAR(256);
	SET @count2 = 1;

	INSERT INTO @usergroup
		SELECT id FROM usergroup WHERE domainid = @in_domainid
	
	SELECT @counter2 = COUNT(1) FROM @usergroup
	BEGIN TRAN
		WHILE @count2 <= @counter2
		BEGIN
			SELECT @ugip = ugip FROM @usergroup WHERE ID = @count2
			DELETE FROM usergroupassignment WHERE parentusergroupid = @ugip AND parentusergroupdomainid = @in_domainid;
			DELETE FROM usergroupassignment WHERE childusergroupid  = @ugip AND childusergroupdomainid  = @in_domainid;

			DELETE FROM usergroupuserassignment WHERE usergroupid = @ugip AND usergroupdomainid = @in_domainid;

			DELETE FROM usergroup_ra WHERE ao_id       = @ugip AND ao_domainid       = @in_domainid;
			DELETE FROM usergroup_ra WHERE usergroupid = @ugip AND usergroupdomainid = @in_domainid;

			DELETE FROM usergroup WHERE id = @ugip AND domainid = @in_domainid;
			SET @count2 = @count2 + 1;
		END
	COMMIT;
	BEGIN TRAN
		DELETE FROM usergroup_ra            WHERE ao_domainid       = @in_domainid OR
		usergroupdomainid = @in_domainid;
	COMMIT;
	BEGIN TRAN
		DELETE FROM usergroupuserassignment WHERE usergroupdomainid = @in_domainid;
	COMMIT;
	BEGIN TRAN
		DELETE FROM usergroupassignment     WHERE parentusergroupdomainid = @in_domainid OR
		childusergroupdomainid  = @in_domainid;
	COMMIT;

END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteUserDataByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes user data belonging to domain with given domainid.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteUserDataByDomain 'ASDASDASDASD2342342342'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_deleteUserDataByDomain (@domainID NVARCHAR(30))
AS
BEGIN
	IF dbo.sf_is_staging_table('UserGroup') =1
	BEGIN
		EXEC sp_deleteUserDataByDomain$deleteFromStagingTables @domainid, '$1';
		EXEC sp_deleteUserDataByDomain$deleteFromStagingTables @domainid, '$2';
	END
	ELSE
		EXEC sp_deleteUserDataByDomain$deleteFromOriginalTables @domainid;
END
GO
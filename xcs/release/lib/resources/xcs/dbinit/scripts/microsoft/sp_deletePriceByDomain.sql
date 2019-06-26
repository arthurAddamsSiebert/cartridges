CREATE OR ALTER PROCEDURE sp_deletePriceByDomain$deleteFromStagingTables
(
	@in_domainid NVARCHAR(30),
	@suffix VARCHAR(256)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceByDomain$deleteFromStagingTables
-- History     : user              date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes seller user group prices.
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @productrefsku			NVARCHAR(256),
			@productrefdomainname	NVARCHAR(255),
			@usergroupid			NVARCHAR(128),
			@usergroupdomainid		NVARCHAR(30),
			@currency				NVARCHAR(3),
			@sqlQuery				NVARCHAR(3000),
			@count					INT,
			@counter				INT = 1;
	DECLARE @Sprice TABLE
	(
		ID						INT IDENTITY,
		productrefsku			NVARCHAR(256),
		productrefdomainname	NVARCHAR(255),
		usergroupid				NVARCHAR(128),
		usergroupdomainid		NVARCHAR(30),
		currency				NVARCHAR(3)
	);
	BEGIN TRAN
		INSERT INTO @Sprice
			SELECT productrefsku, productrefdomainname, usergroupid, usergroupdomainid, currency
				FROM scaledprice
				WHERE domainid = @in_domainid
		SELECT @count = COUNT(1) FROM @Sprice;
		WHILE @counter <= @count
		BEGIN
			SELECT @productrefsku, @productrefdomainname, @usergroupid, @usergroupdomainid, @currency FROM @Sprice WHERE ID = @counter

			DELETE FROM scaledpriceentry
			WHERE productrefsku           = @productrefsku AND
				productrefdomainname    = @productrefdomainname AND
				usergroupid             = @usergroupid AND
				usergroupdomainid       = @usergroupdomainid AND
				currency                = @currency;
			SET @counter = @counter + 1;
		END
	COMMIT;
	BEGIN TRAN
		DELETE FROM scaledprice WHERE domainid = @in_domainid;
	COMMIT;

	SELECT @count = 0, @counter =1;
	DELETE FROM @Sprice
	BEGIN TRAN
		INSERT INTO @Sprice
			SELECT productrefsku, productrefdomainname, usergroupid, usergroupdomainid, currency
				FROM scaledprice
				WHERE usergroupdomainid = @in_domainid
		SELECT @count = COUNT(1) FROM @Sprice;
		WHILE @counter <= @count
		BEGIN
			SELECT @productrefsku, @productrefdomainname, @usergroupid, @usergroupdomainid, @currency FROM @Sprice WHERE ID = @counter

			DELETE FROM scaledpriceentry
			WHERE	productrefsku           = @productrefsku AND
					productrefdomainname    = @productrefdomainname AND
					usergroupid         	= @usergroupid AND
					usergroupdomainid       = @usergroupdomainid AND
					currency                = @currency;
			SET @counter = @counter + 1;
		END
	COMMIT
	BEGIN TRAN
		DELETE FROM scaledprice WHERE usergroupdomainid = @in_domainid;
	COMMIT;

	SELECT @count = 0, @counter =1;
	DELETE FROM @Sprice
	BEGIN TRAN
		INSERT INTO @Sprice
			SELECT productrefsku, productrefdomainname, usergroupid, usergroupdomainid, currency
				FROM scaledprice sp, domaininformation di
				WHERE sp.productrefdomainname = di.domainname AND
					di.domainid = @in_domainid;
		SELECT @count = COUNT(1) FROM @Sprice;
		WHILE @counter <= @count
		BEGIN
			SELECT @productrefsku, @productrefdomainname, @usergroupid, @usergroupdomainid, @currency FROM @Sprice WHERE ID = @counter

			DELETE FROM scaledpriceentry
			WHERE	productrefsku           = @productrefsku AND
					productrefdomainname    = @productrefdomainname AND
					usergroupid             = @usergroupid AND
					usergroupdomainid       = @usergroupdomainid AND
					currency                = @currency;
			SET @counter = @counter + 1;
		END
	COMMIT
	BEGIN TRAN
		DELETE sp FROM scaledprice sp WHERE EXISTS (SELECT 1 FROM domaininformation di
		WHERE sp.productrefdomainname = di.domainname AND di.domainid = @in_domainid);
	COMMIT;

	BEGIN TRAN	
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupprice', @suffix) , 
				' WHERE domainid = ''', @in_domainid, ''''  , 
				' OR usergroupdomainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;

	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupprice', @suffix) , 
				' WHERE productrefdomainname IN (SELECT domainname FROM ', dbo.STAGING$get_table_name('domaininformation', @suffix) , 
						' WHERE domainid = ''', @in_domainid, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN		
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productlistprice', @suffix) , 
				' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('derivedproductlistprice', @suffix) , 
				' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productcostprice', @suffix) , 
				' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;
	BEGIN TRAN
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('derivedproductcostprice', @suffix) , 
				' WHERE domainid = ''', @in_domainid, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	COMMIT;			

END;
GO
CREATE OR ALTER PROCEDURE sp_deletePriceByDomain
(
	@in_domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceByDomain
-- History     : user              date       - desc
--             : ...
--             : Thomas Kober      07/20/2005 - #5882 sql with unbound var values
-- Created     : Anand Singh
-- Description : This procedure deletes seller user group prices.
-- Input       : in_domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deletePriceByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	IF dbo.sf_is_staging_table('productlistprice') = 1
	BEGIN
		--
		-- try to clean up staging tables ($1 resp. $2 tables)
		--
		EXEC sp_deletePriceByDomain$deleteFromStagingTables @in_domainID, '$1';
		EXEC sp_deletePriceByDomain$deleteFromStagingTables @in_domainID, '$2';
	END
	ELSE
	BEGIN
		--
		-- staging tables do not exist -> try to delete from
		-- original table
		--
		EXEC sp_deletePriceByDomain$deleteFromStagingTables @in_domainID, NULL;
	END;

END
GO
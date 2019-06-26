CREATE OR ALTER PROCEDURE sp_updateProductOnlineStatus (
    @currentDate DATE,
    @in_domainID NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_updateProductOnlineStatus
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh
-- Description : This procedure updates the online status of all products in the given domain
--               according the configured online period.
--               The procedure updates also the online flag of all product-category-assignments of a product.
--               The procedure corrects the online status if the product is i.e. online,
--               but the online period states that it shouldn't be online.
--               The procedure DOES NOT care about changing the online status of the variation master in case
--               the status of the default variation is changed.
--
-- Input:        currentDate - the current date to compare the online periods to,
--               mandatory, must be a date
-- Input:        in_domainID - the domainID of the products to process, mandatory and string
--
-- Output      : none
-- Example     : exec sp_updateProductOnlineStatus CAST('24-09-2004 15:23:34' AS DATETIME),'SSgKABwPAHAAAAD_aYHdNCh6';
------------------------------------------------------------------------------------------
AS
BEGIN
	DECLARE @flag	NUMERIC, 
			@isShared INTEGER;
	BEGIN TRAN
		-- set products 'online' if the product should be 'online' within the online period and
		-- the current date is within the configured period
		UPDATE product SET onlineFlag = availabilityStatus WHERE domainID = @in_domainID AND availabilityStatus IN (0,1) AND ((validfrom <= @currentDate AND @currentDate <= validTo) OR (validfrom IS NOT NULL AND validto IS NULL AND validfrom<=@currentDate) OR (validto IS NOT NULL AND validfrom IS NULL AND @currentDate <= validTo));
	COMMIT;
	BEGIN TRAN
		-- set products 'offline' if the product was 'online' during the online period and the online period is now over
		UPDATE product SET onlineFlag = (CASE WHEN onlineflag = 1 THEN 0 
												WHEN onlineflag = 0 THEN 1 END) 
				WHERE domainID = @in_domainID AND onlineflag=availabilityStatus AND (@currentDate < validfrom OR @currentDate > validTo);
	COMMIT;
	BEGIN TRAN
		UPDATE pca SET repOnlineFlag=(SELECT onlineflag FROM product WHERE uuid = pca.productid) FROM ProductCategoryAssignment pca   WHERE domainid = @in_domainID;
	COMMIT;

    SELECT @isShared = COUNT(*) FROM productsetdomainassignment WHERE domainid = @in_domainID;
    IF @isShared > 0
	BEGIN
		-- set products 'online' if the product should be 'online' within the online period and
		-- the current date is within the configured period
		BEGIN TRAN
			UPDATE derivedproduct SET onlineFlag = availabilityStatus WHERE domainID = @in_domainID AND availabilityStatus IN (0,1) AND ((validfrom <= @currentDate AND @currentDate <= validTo) OR (validfrom IS NOT NULL AND validto IS NULL AND validfrom <= @currentDate) OR (validto IS NOT NULL AND validfrom IS NULL AND @currentDate <= validTo));
		COMMIT;
		BEGIN TRAN
			UPDATE derivedproduct SET onlineFlag = (CASE	WHEN onlineflag = 1 THEN 0
															WHEN onlineflag =0 THEN 1 END)
			WHERE domainID = @in_domainID AND onlineflag = availabilityStatus AND (@currentDate < validfrom OR @currentDate>validTo);
		COMMIT;
		BEGIN TRAN
			UPDATE pca SET repOnlineFlag=(SELECT onlineflag FROM derivedproduct WHERE baseproductid = pca.productid AND domainid = @in_domainID) FROM ProductCategoryAssignment pca WHERE domainid = @in_domainID;
		COMMIT;
    END;

END
GO
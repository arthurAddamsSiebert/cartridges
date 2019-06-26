CREATE OR ALTER PROCEDURE sp_deleteDeletedProduct
(
  @productSKU			NVARCHAR(256),
  @productDomainName	NVARCHAR(256)
)
AS
------------------------------------------------------------------------------------------
-- Name        : sp_deleteDeletedProduct
-- Created     : Surender Singh
-- Description : This procedure deletes a product from the product deletion tracking table.
-- Input       : productSKU          The product sku.
-- Input       : productDomainName   The product domain name.
-- Output      : none
-- Example     : exec sp_deleteDeletedProduct productSKU, domainName
------------------------------------------------------------------------------------------
BEGIN

	--
	-- If Input NULL or staging is initialized -> do nothing
	--
	IF (@productSKU IS NULL OR @productDomainName IS NULL OR dbo.STAGING$is_staging_initialized() = 1)
		RETURN;

	--
	-- delete given product
	--
	BEGIN TRAN
		DELETE FROM deletedproduct WHERE sku = @productSKU AND domainname = @productDomainName;
	COMMIT;

END
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteLineItemForProduct
-- Created     : Surender Singh
-- Description : This procedure deletes product line items for a deleted product.
-- Input       : productSKU          The product sku.
-- Input       : productDomainName   The product domain name.
-- Output      : none
-- Example     : exec sp_deleteLineItemForProduct 'productSKU', 'domainName'
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_deleteLineItemForProduct
(
	@productSKU VARCHAR(30),
	@productDomainName VARCHAR(30)
)
AS
BEGIN
	BEGIN TRAN
		DECLARE @in_sku		NVARCHAR(30) = @productSKU,
			@in_domainName	VARCHAR(30) = @productDomainName,
			@count			INT,
			@counter		INT = 1,
			@uuid			NVARCHAR(30),
			@bcount			INT,
			@bcounter		INT = 1,
			@bpluuid		NVARCHAR(30);

		DECLARE @Buuid TABLE
		(
			ID		INT IDENTITY,
			uuid	NVARCHAR(30)
		);
		DECLARE @BPuuid TABLE
		(
			ID		INT IDENTITY,
			uuid	NVARCHAR(30)
		);
		--
		--  Bundled items.
		--  Select only items for a basket (therefore we join over productlineitem and basket).
		--
		INSERT INTO @Buuid
			SELECT bpli.uuid
				  FROM bundledproductlineitem bpli, productlineitem pli, basket b
				  WHERE bpli.offerproductrefproductsku = @in_sku
				  and bpli.offerproductrefdomainname = @in_domainName
				  and bpli.productlineitemid = pli.uuid
				  and pli.lineitemctnrid = b.uuid;
		SELECT @count = COUNT(1) FROM @Buuid;
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid FROM @Buuid WHERE ID = @counter;
			DELETE FROM bundledproductlineit_av WHERE ownerid = @uuid;
			DELETE FROM bundledproductlineitem WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END
		--
		--  Product line items.
		--  Select only items for a basket (therefore we join over basket).
		--
		DELETE FROM @Buuid;
		SELECT @counter = 1, @count = 0;
		INSERT INTO @Buuid
			SELECT pli.uuid
				  FROM productlineitem pli, basket b
				  WHERE offerproductrefproductsku = @in_sku
				  and offerproductrefdomainname = @in_domainName
				  and pli.lineitemctnrid = b.uuid;

		SELECT @count = COUNT(1) FROM @Buuid;
		WHILE @counter <= @count
		BEGIN
			SELECT @bcount = 0, @bcounter = 1;
			SELECT @uuid FROM @Buuid WHERE ID = @counter;
			INSERT INTO @BPuuid
				SELECT uuid FROM bundledproductlineitem WHERE productlineitemid = @uuid;
			SELECT @bcount = COUNT(1) FROM @BPuuid;
			WHILE @bcounter <= @bcount
			BEGIN
				SELECT @bpluuid FROM @BPuuid WHERE ID = @bcounter;
				DELETE FROM bundledproductlineit_av WHERE ownerid = @bpluuid;
				DELETE FROM bundledproductlineitem WHERE uuid = @bpluuid;
				SET @bcounter = @bcounter + 1;
			END
			DELETE FROM productlineitem_av WHERE ownerid = @uuid;
			DELETE FROM productlineitem WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END
	COMMIT;
END
GO
CREATE OR ALTER PROCEDURE sp_deleteLineItemCtnrByDomain
(
	@domainID	NVARCHAR(30)
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteLineItemCtnrByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure deletes basket/order related stuff.
-- Input       : domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deleteLineItemCtnrByDomain 'domainid'
------------------------------------------------------------------------------------------
AS
BEGIN
	BEGIN TRAN
		DECLARE @in_domainid	NVARCHAR(30) = @domainID,
				@count			INT,
				@counter		INT = 1,
				@count1			INT,
				@counter1		INT = 1,
				@count2			INT,
				@counter2		INT = 1,
				@uuid			NVARCHAR(30),
				@uuid1			NVARCHAR(30),
				@uuid2			NVARCHAR(30);
		DECLARE @iuuid TABLE
		(
			ID		INT IDENTITY,
			uuid	NVARCHAR(30)
		);
		DECLARE @buuid TABLE
		(
			ID		INT IDENTITY,
			uuid	NVARCHAR(30)
		);
		DECLARE @mbuuid TABLE
		(
			ID		INT IDENTITY,
			uuid	NVARCHAR(30)
		);
		INSERT INTO @iuuid
			SELECT uuid FROM isorder WHERE domainid = @in_domainid;
		SELECT @count = COUNT(1) FROM @iuuid;
		--
		--  delete orders
		--
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @iuuid WHERE ID = @counter
			--
			--  static addresses
			--
			DELETE FROM staticaddress_av WHERE ownerid IN (SELECT uuid FROM staticaddress WHERE lineitemctnrid = @uuid);
			DELETE FROM staticaddress WHERE lineitemctnrid = @uuid;
			--
			--  service line items
			--
			DELETE FROM servicelineitem_av WHERE ownerid IN (SELECT uuid from servicelineitem WHERE lineitemctnrid = @uuid);
			DELETE FROM servicelineitem WHERE lineitemctnrid = @uuid;
			--
			--  product line items
			--
			DELETE FROM @buuid;
			SELECT @counter1 = 1, @count1 =0;
			INSERT INTO @buuid
				SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid and p.lineitemctnrid = @uuid
			SELECT @count1 = COUNT(1) FROM @buuid
			WHILE @counter1 <= @count1
			BEGIN
				SELECT @uuid1 FROM @buuid WHERE ID = @counter1
				DELETE FROM @mbuuid;
				SELECT @counter2 = 1, @count2 =0;
				INSERT INTO @mbuuid
					SELECT b.uuid FROM bundledproductlineitem b WHERE b.parentid = @uuid1;
				SELECT @count2 = COUNT(1) FROM @mbuuid;
				WHILE @counter2 <= @count2
				BEGIN
					SELECT @uuid2 = uuid FROM @mbuuid WHERE ID = @counter2
					DELETE bpa FROM bundledproductlineit_av bpa WHERE ownerid = @uuid2;
					DELETE bpl FROM bundledproductlineitem bpl WHERE uuid = @uuid2;
					SET @counter2 = @counter2 + 1;
				END			
				DELETE FROM bundledproductlineit_av WHERE ownerid = @uuid1;
				DELETE FROM bundledproductlineitem WHERE uuid = @uuid1;
				SET @counter1 = @counter1 + 1;
			END

			DELETE FROM productlineitem_av WHERE ownerid IN (SELECT uuid FROM productlineitem WHERE lineitemctnrid = @uuid);
			DELETE FROM productlineitem WHERE lineitemctnrid = @uuid;
			--
			--  line item groups
			--
			DELETE FROM lineitemgroup_av WHERE ownerid IN (SELECT uuid FROM lineitemgroup WHERE lineitemctnrid = @uuid);
			DELETE FROM lineitemgroup WHERE lineitemctnrid = @uuid;
			--
			--  payment transaction / instrument info / history
			DELETE FROM @buuid;
			SELECT @counter1 = 1, @counter2 = 1;
			INSERT INTO @buuid
				SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid;

			SELECT @count1 = COUNT(1) FROM @buuid
			WHILE @counter1 <= @count1
			BEGIN
				SELECT @uuid1 FROM @buuid WHERE ID = @counter1
				DELETE FROM @mbuuid;
				SELECT @counter2 = 1, @count2 = 0;
				INSERT INTO @mbuuid
					SELECT uuid FROM paymenttransaction WHERE paymentinstrumentinfoid = @uuid1;
				SELECT @count2 = COUNT(1) FROM @mbuuid;
				WHILE @counter2 <= @count2
				BEGIN
					SELECT @uuid2 = uuid FROM @mbuuid WHERE ID = @counter2
					DELETE FROM paymenthistory_av WHERE ownerid IN (SELECT uuid FROM paymenthistory WHERE paymenttransactionid = @uuid2);
					DELETE FROM paymenthistory WHERE paymenttransactionid = @uuid2;
					DELETE FROM paymenttransaction_av WHERE ownerid =@uuid2;
					DELETE FROM paymenttransaction WHERE uuid = @uuid2;
					SET @counter2 = @counter2 + 1;
				END			
				DELETE FROM paymentinstrumentinf_av WHERE ownerid = @uuid1;
				DELETE FROM paymentinstrumentinfo WHERE uuid = @uuid1;
				SET @counter1 = @counter1 + 1;
			END
			--  payment instrument info

			DELETE FROM paymentinstrumentinf_av WHERE ownerid IN (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid);
			DELETE FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid;
			--
			--  adjust objects referring to this order
			--
			UPDATE isorder SET parentOrderID = null WHERE parentOrderID = @uuid;
			SET @counter = @counter + 1;
		END
		--
		-- order
		--
		EXEC sp_genericPoAvDeleteByDomain 'isorder', 'isorder_av', null, @in_domainid, 'domainid';
		--
		--  basket
		--
		EXEC sp_genericPoAvDeleteByDomain 'basket', 'basket_av', null, @in_domainid, 'domainid';

		--
		-- Delete all line items belonging to the domain to be deleted from a basket. This affects baskets,
		-- where the basket itself must not be deleted.
		-- Line item groups are not handled (may be, some empty groups remain).
		--

		--
		--  service line items
		--
		DELETE FROM @buuid;
		SELECT @counter = 1;
		INSERT INTO @buuid
			SELECT s.uuid FROM servicelineitem s, basket b WHERE s.domainid = @in_domainid AND s.lineitemctnrid = b.uuid;
		SELECT @count = COUNT(1) FROM @buuid;
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @buuid WHERE ID = @counter;
			DELETE FROM servicelineitem_av WHERE ownerid = @uuid;
			DELETE FROM servicelineitem WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END
		--
		--  product line items
		--
		DELETE FROM @buuid;
		SELECT @counter = 1;
		INSERT INTO @buuid
			SELECT p.uuid FROM productlineitem p, basket b WHERE p.domainid = @in_domainid and p.lineitemctnrid = b.uuid;
		SELECT @count = COUNT(1) FROM @buuid;
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid = uuid FROM @buuid WHERE ID = @counter;
			DELETE FROM bundledproductlineit_av WHERE ownerid IN (SELECT uuid FROM bundledproductlineitem WHERE parentid IN (SELECT uuid FROM bundledproductlineitem WHERE productlineitemid = @uuid));
			DELETE FROM bundledproductlineitem WHERE parentid IN (SELECT uuid FROM bundledproductlineitem WHERE productlineitemid = @uuid);

			DELETE FROM bundledproductlineit_av WHERE ownerid IN (SELECT uuid FROM bundledproductlineitem WHERE productlineitemid = @uuid);
			DELETE FROM bundledproductlineitem WHERE productlineitemid = @uuid;

			DELETE FROM productlineitem_av where ownerid = @uuid;
			DELETE FROM productlineitem where uuid = @uuid;
			SET @counter = @counter + 1;
		END
	COMMIT;
END
GO
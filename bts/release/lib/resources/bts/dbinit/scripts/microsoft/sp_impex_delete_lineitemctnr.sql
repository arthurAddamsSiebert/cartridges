CREATE OR ALTER PROCEDURE sp_impex_delete_lineitemctnr
(
	@lineItemCtnrID NVARCHAR(30)
) AS
--
-- sp_impex_delete_lineitemctnr.sql
--
-- EnfinityMultiSite
-- Intershop Communications Inc. All rights reserved.
--
-- @author  : Surender Singh
-- Used by  : com.intershop.beehive.bts.capi.impex.ElementBulkerSQLLDRLineItemCtnr
-- Used for : delete a lineitem container with all its depending parts:
--            staticaddresses, service/product/bundledproduct-lineitens and all
--            their attributes
-- Parameter: lineItemCtnrID the UUID of the lineitemcontainer
--
BEGIN
	DECLARE @uuid		NVARCHAR(30),
			@subuuid	NVARCHAR(30),
			@count		INT,
			@counter	INT = 1,
			@subcount		INT,
			@subcounter	INT = 1;
	DECLARE @uuidTable	TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	DECLARE @subuuidTable	TABLE
	(
		ID INT IDENTITY,
		uuid NVARCHAR(30)
	);
	INSERT INTO @uuidTable
		SELECT uuid FROM staticaddress WHERE lineitemctnrid = @lineItemCtnrID
	SELECT @count = COUNT(1) FROM @uuidTable;
	BEGIN TRAN
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			-- staticaddress
			DELETE FROM staticaddress_av WHERE ownerid = @uuid;
			DELETE FROM staticaddress WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END

		DELETE FROM @uuidTable
		SELECT @count = 0, @counter = 1;
		INSERT INTO @uuidTable
			SELECT uuid FROM productlineitem WHERE lineitemctnrid = @lineItemCtnrID;
		SELECT @count = COUNT(1) FROM @uuidTable;
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			-- productlineitem
			DELETE FROM productlineitem_av WHERE ownerid = @uuid;
			DELETE FROM productlineitem WHERE uuid = @uuid;
			DELETE FROM @subuuidTable
			SELECT @subcount = 0, @subcounter = 1;
			-- bundledproductlineitem
			INSERT INTO @subuuidTable
				SELECT uuid FROM bundledproductlineitem WHERE productlineitemid = @uuid;
			SELECT @subcount = COUNT(1) FROM @subuuidTable;
			WHILE @subcounter <= @subcount
			BEGIN
				SELECT @subuuid FROM @uuidTable WHERE ID = @subcounter;
				-- remove all child bundled line items (and attribute values) of the currently selected bundled line item
				WITH abc(uuid)
				AS
				(
					SELECT uuid FROM bundledproductlineitem WHERE uuid = @subuuid
					UNION ALL
					SELECT bpl.uuid FROM bundledproductlineitem bpl
					INNER JOIN abc a ON a.uuid = bpl.uuid
				)
				DELETE FROM bundledproductlineit_av WHERE ownerid in
				(
					SELECT uuid FROM abc
				);
				WITH abc(uuid)
				AS
				(
					SELECT uuid FROM bundledproductlineitem WHERE uuid = @subuuid
					UNION ALL
					SELECT bpl.uuid FROM bundledproductlineitem bpl
					INNER JOIN abc a ON a.uuid = bpl.uuid
				)
				DELETE FROM bundledproductlineitem WHERE uuid in
				(
					SELECT uuid FROM abc
				);
				SET @subcounter = @subcounter + 1;
			END
			SET @counter = @counter + 1;
		END

		DELETE FROM @uuidTable
		SELECT @count = 0, @counter = 1;
		INSERT INTO @uuidTable
			SELECT uuid FROM servicelineitem WHERE lineitemctnrid = @lineItemCtnrID;
		SELECT @count = COUNT(1) FROM @uuidTable;
		-- servicelineitem
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			DELETE FROM servicelineitem_av WHERE ownerid = @uuid;
			DELETE FROM servicelineitem WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END

		-- lineitemgroup
		DELETE FROM @uuidTable
		SELECT @count = 0, @counter = 1;
		INSERT INTO @uuidTable
			SELECT uuid FROM lineitemgroup WHERE lineitemctnrid = @lineItemCtnrID;
		SELECT @count = COUNT(1) FROM @uuidTable;
		-- servicelineitem
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			DELETE FROM lineitemgroup_av WHERE ownerid = @uuid;
			DELETE FROM lineitemgroup WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END

		-- paymenttransaction
		DELETE FROM @uuidTable
		SELECT @count = 0, @counter = 1;
		INSERT INTO @uuidTable
			SELECT uuid FROM paymenttransaction WHERE orderid = @lineItemCtnrID;
		SELECT @count = COUNT(1) FROM @uuidTable;
		-- servicelineitem
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @uuidTable WHERE ID = @counter;
			DELETE FROM paymenttransaction_av WHERE ownerid = @uuid;
			DELETE FROM paymenttransaction WHERE uuid = @uuid;
			DELETE FROM paymentinstrumentinf_av WHERE ownerid = @uuid;
			DELETE FROM paymentinstrumentinfo WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END
	COMMIT;
END
GO
------------------------------------------------------------------------------------------
-- Name        : sp_deleteBasketForUser
-- Created     : Surender Singh
-- Description : This procedure deletes basket in status OPEN and when no order exists.
-- Input       : userID   The user id.
-- Output      : none
-- Example     : exec sp_deleteBasketForUser userID
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_deleteBasketForUser
(
  @userID NVARCHAR(30)
)
AS
BEGIN
	DECLARE @in_userid		NVARCHAR(30) = @userID,
			@count			INT,
			@counter		INT = 1,
			@count1			INT,
			@counter2		INT = 1,
			@uuid			NVARCHAR(30),
			@uuid1			NVARCHAR(30);
	DECLARE @Buuid TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	DECLARE @Puuid TABLE
	(
		ID		INT IDENTITY,
		uuid	NVARCHAR(30)
	);
	BEGIN TRAN
		--
		-- delete baskets
		--
		INSERT INTO @Buuid
			SELECT b.uuid FROM basket b WHERE b.userid = @in_userid and b.status = 0 AND NOT EXISTS (SELECT * FROM isorder o WHERE o.basketid = b.uuid)
		SELECT @count = COUNT(1) FROM @Buuid
		WHILE @counter <= @count
		BEGIN
			SELECT @uuid=uuid FROM @Buuid WHERE ID = @counter;
			--
			--  static addresses
			--
			DELETE FROM staticaddress_av WHERE ownerid IN (SELECT uuid FROM staticaddress WHERE lineitemctnrid = @uuid);
			DELETE FROM staticaddress WHERE lineitemctnrid = @uuid;
			--
			--  service line items
			--
			DELETE FROM servicelineitem_av WHERE ownerid IN (SELECT uuid FROM servicelineitem WHERE lineitemctnrid = @uuid);
			DELETE FROM servicelineitem WHERE lineitemctnrid = @uuid;

			INSERT INTO @Puuid
				SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid AND p.lineitemctnrid = @uuid;
			SELECT @count1 = COUNT(1) FROM @Puuid
			WHILE @counter2 <= @count1
			BEGIN
				SELECT @uuid1 FROM @Puuid WHERE ID = @counter2;
				DELETE FROM bundledproductlineit_av WHERE ownerid = @uuid1;
				DELETE FROM bundledproductlineitem WHERE uuid = @uuid1;
				SET @counter2 = @counter2 + 1
			END
			DELETE FROM productlineitem_av WHERE ownerid IN (SELECT uuid FROM productlineitem WHERE lineitemctnrid = @uuid);
			DELETE FROM productlineitem WHERE lineitemctnrid = @uuid;
			--
			--  line item groups
			--	
			DELETE FROM lineitemgroup_av WHERE ownerid IN (SELECT uuid FROM lineitemgroup WHERE lineitemctnrid = @uuid);
			DELETE FROM lineitemgroup WHERE lineitemctnrid = @uuid;
			--  payment instrument info
			DELETE FROM paymentinstrumentinf_av WHERE ownerid IN (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid);
			DELETE FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid;
			--
			--  Basket
			--
			DELETE FROM basket_av WHERE ownerid = @uuid;
			DELETE FROM basket WHERE uuid = @uuid;
			SET @counter = @counter + 1;
		END
    COMMIT;
END
GO
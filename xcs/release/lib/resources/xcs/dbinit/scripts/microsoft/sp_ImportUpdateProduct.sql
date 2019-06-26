CREATE OR ALTER PROCEDURE sp_ImportUpdateProduct
(
	@domainID	NVARCHAR(30)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @in_domainid NVARCHAR(30) = @domainID;
	BEGIN TRAN
		UPDATE p
		SET p.defaultproductvariationid =
		(SELECT i.defaultvariationid FROM importupdatedmaster i WHERE p.uuid = i.uuid)
		FROM product p
		WHERE p.uuid in (SELECT i.uuid FROM importupdatedmaster i);

		DELETE FROM importupdatedmaster WHERE domainid = @in_domainid;

		UPDATE p
		SET p.typecode =
		(SELECT i.typecode FROM importupdatedtypecode i WHERE i.uuid = p.uuid)
		FROM product p
		WHERE p.uuid in (SELECT i.uuid FROM importupdatedtypecode i);

		UPDATE p
		SET p.reptypecode =
		(SELECT i.typecode FROM importupdatedtypecode i WHERE i.uuid = p.productid)
		FROM productcategoryassignment p
		WHERE p.productid in (SELECT i.uuid FROM importupdatedtypecode i);

		DELETE FROM importupdatedtypecode WHERE domainid = @in_domainid;
	COMMIT;
END
GO

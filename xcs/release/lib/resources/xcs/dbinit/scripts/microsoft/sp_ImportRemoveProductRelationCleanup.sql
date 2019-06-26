CREATE OR ALTER PROCEDURE sp_ImportRemoveProdRelCleanup      
(
	@domainID	NVARCHAR(30)
)
AS
BEGIN
	DECLARE @in_domainid NVARCHAR(30) = @domainID;
	BEGIN TRAN
		DELETE FROM importremovedproductlink WHERE domainid = @in_domainid;
		DELETE FROM importremovedbundle WHERE domainid = @in_domainid;
		DELETE FROM importremovedmaster WHERE domainid = @in_domainid;
		DELETE FROM importupdatedmaster WHERE domainid = @in_domainid;
		DELETE FROM importupdatedtypecode WHERE domainid = @in_domainid;
	COMMIT;
END
GO
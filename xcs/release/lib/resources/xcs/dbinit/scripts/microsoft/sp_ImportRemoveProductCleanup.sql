CREATE OR ALTER PROCEDURE sp_ImportRemoveProductCleanup
(
	@domainID NVARCHAR(30)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @in_domainid	NVARCHAR(30) = @domainID;
	BEGIN TRAN
		DELETE FROM importremovedusergroupprice WHERE domainid = @in_domainid;
		DELETE FROM importremovedproductlistprice WHERE domainid = @in_domainid;
		DELETE FROM importremovedproductcostprice WHERE domainid = @in_domainid;
		DELETE FROM importremovedcatassignment WHERE domainid = @in_domainid;
		--DELETE FROM importremovedtypedcatassign WHERE domainid = in_domainid;
		DELETE FROM importremovedproductra WHERE domainid = @in_domainid;
		DELETE FROM importupdatedproduct WHERE domainid = @in_domainid;
		DELETE FROM importremovedproduct WHERE domainid = @in_domainid;
	COMMIT;
END
GO
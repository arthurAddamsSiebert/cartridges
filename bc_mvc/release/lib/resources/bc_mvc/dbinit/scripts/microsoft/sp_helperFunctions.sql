CREATE OR ALTER FUNCTION ufn_RepositoryDomain
(
	@domainId VARCHAR(60)
)
RETURNS TABLE
AS
	RETURN (SELECT * FROM repository WHERE DOMAINID = @domainId)
GO

CREATE OR ALTER FUNCTION ufn_organizationDomain
(
	@domainId VARCHAR(60)
)
RETURNS TABLE
AS
	RETURN (SELECT * FROM organization WHERE DOMAINID = @domainId)
GO

CREATE OR ALTER FUNCTION ufn_ReturnCatalogDetails (@domainID NVARCHAR(56))
  RETURNS TABLE
  AS
  RETURN
  (
    WITH abc(catalogUUID, domainID, parentDomainID, level)
	AS
	(
		SELECT c.UUID catalogUUID, c.domainID,
			CASE COALESCE(r.domainid, o.domainid)
				WHEN c.domainid THEN null
				ELSE COALESCE(r.domainid, o.domainid)
			END parentDomainID, 1 as level
		FROM catalog c
		OUTER APPLY	dbo.ufn_RepositoryDomain(c.domainID) r
		OUTER APPLY	dbo.ufn_organizationDomain(c.domainID) o
		WHERE c.catalogDomainID = @domainID
		UNION ALL		
		SELECT c.UUID catalogUUID, c.domainID,
			CASE COALESCE(r.domainid, o.domainid)
				WHEN c.domainid THEN null
				ELSE COALESCE(r.domainid, o.domainid)
			END parentDomainID, level +1 
		FROM catalog c
		OUTER APPLY	dbo.ufn_RepositoryDomain(c.domainID) r
		OUTER APPLY	dbo.ufn_organizationDomain(c.domainID) o
		INNER JOIN ABC parent on parent.parentDomainID = parentDomainID
	)
	SELECT domainID, level sharingLevel FROM abc
)
GO

CREATE OR ALTER FUNCTION ufn_Returncatalogcategory(@catalogFilterUUID NVARCHAR(56), @filterRuleMode NUMERIC)
RETURNS TABLE
AS
RETURN
(
	WITH abc(uuid)
	AS
	(
		SELECT distinct uuid 
		FROM catalogcategory
		WHERE uuid in (
			SELECT distinct associatedobjectid
			FROM filterobjectassignment
			WHERE catalogfilterid = @catalogFilterUUID
			AND typecode = 1 
			AND referencemode = @filterRuleMode
		)
		UNION ALL 
		SELECT c.uuid 
		FROM catalogcategory C INNER JOIN abc a on a.uuid = C.parentcategoryid
	)
	SELECT uuid FROM abc
)
GO

CREATE OR ALTER FUNCTION ufn_ReturnCatalogCategoryCount(@uuid NVARCHAR(56))
RETURNS INT
AS
BEGIN
	DECLARE @count INT = 0;
	WITH abc(uuid) AS
	(
		SELECT uuid FROM catalogcategory
		WHERE uuid = @uuid
		UNION ALL 
		SELECT c.uuid FROM catalogcategory c
		INNER JOIN abc a ON a.uuid = c.PARENTCATEGORYID
	)
	SELECT @count = ISNULL(COUNT(uuid),0) FROM abc
	RETURN @count
END
GO

CREATE OR ALTER FUNCTION ufn_GetCatalogCategoryUUID(@uuid NVARCHAR(56))
RETURNS TABLE
AS
RETURN
(
	WITH abc(uuid) AS
	(
		SELECT uuid FROM catalogcategory
		WHERE uuid = @uuid
		UNION ALL 
		SELECT c.uuid FROM catalogcategory c
		INNER JOIN abc a ON a.uuid = c.PARENTCATEGORYID
	)
	SELECT uuid FROM abc
)
GO

-- CREATE SEQUENCE dbmonitor_sequence
--    START WITH 1  
--    INCREMENT BY 1 ;  
-- GO


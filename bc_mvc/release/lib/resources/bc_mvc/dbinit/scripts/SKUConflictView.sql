WHENEVER SQLERROR EXIT SQL.SQLCODE

--- Create a view that contains IDs of products that have the same
--- SKU as another product (somewhere regardless of the domain)

CREATE OR REPLACE VIEW ProductSKUConflictView AS
SELECT
	DISTINCT
	p1.uuid AS ProductID,
	p1.domainid AS ProductDomainID,
	p2.domainid AS ConflictProductDomainID
FROM
	product p1
JOIN
	product p2 ON (p1.sku = p2.sku AND p1.domainid=p2.domainid)
WHERE
	 p1.uuid != p2.uuid;

EXIT

WHENEVER SQLERROR EXIT SQL.SQLCODE

--
-- Create new view for Canged Product Search
--

CREATE OR REPLACE VIEW ChangedProducts (uuid,sku,domainid,parentlastmodified,parentdomainid) AS
SELECT o.uuid, o.sku, o.domainid, p.lastmodified, p.domainid
FROM product p, product o
WHERE (o.synchronized IS NULL OR p.lastmodified > o.synchronized) AND p.uuid=o.offeredproductid AND p.uuid != o.uuid
;

-- ...

exit
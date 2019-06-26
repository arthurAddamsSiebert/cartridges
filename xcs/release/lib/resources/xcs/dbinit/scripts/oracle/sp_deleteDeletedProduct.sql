CREATE OR REPLACE PROCEDURE sp_deleteDeletedProduct
(
  productSKU        IN VARCHAR2,
  productDomainName IN VARCHAR2
)
AS

------------------------------------------------------------------------------------------
-- Name        : sp_deleteDeletedProduct
-- Created     : Dirk Kassner
-- Description : This procedure deletes a product from the product deletion tracking table.
-- Input       : productSKU          The product sku.
-- Input       : productDomainName   The product domain name.
-- Output      : none
-- Example     : exec sp_deleteDeletedProduct(productSKU, domainName)
------------------------------------------------------------------------------------------

BEGIN

    --
    -- If Input NULL or staging is initialized -> do nothing
    --
    IF (productSKU IS NULL OR
        productDomainName IS NULL OR
        staging.is_staging_initialized)
    THEN
        RETURN;
    END IF;

    --
    -- delete given product
    --
    DELETE FROM deletedproduct WHERE sku = productSKU AND domainname = productDomainName;
    COMMIT;

END sp_deleteDeletedProduct; 
/

show errors

CREATE OR REPLACE PROCEDURE sp_updateProductOnlineStatus (
    currentDate IN DATE,
    in_domainID IN VARCHAR2
)

------------------------------------------------------------------------------------------
-- Name        : sp_updateProductOnlineStatus
-- History     : user             date       - desc
--             : ...
--             : tkober           04/28/2010 - #14635 - ORA-01427: single-row subquery returns more than one row
--             : Thomas Kober     09/09/2005 - new date handling
--             : J. Grabs         05/02/2005 - product sharing support
-- Created     : Frank Mueller
-- Description : This procedure updates the online status of all products in the given domain
--               according the configured online period.
--               The procedure updates also the online flag of all product-category-assignments of a product.
--               The procedure corrects the online status if the product is i.e. online,
--               but the online period states that it shouldn't be online.
--               The procedure DOES NOT care about changing the online status of the variation master in case
--               the status of the default variation is changed.
--
-- Input:        currentDate - the current date to compare the online periods to,
--               mandatory, must be a date
-- Input:        in_domainID - the domainID of the products to process, mandatory and string
--
-- Output      : none
-- Example     : exec sp_updateProductOnlineStatus(to_date('24-09-2004 15:23:34'),'SSgKABwPAHAAAAD_aYHdNCh6');
------------------------------------------------------------------------------------------

AS
    flag    product.onlineflag%TYPE;
    isShared INTEGER;
BEGIN

    -- set products 'online' if the product should be 'online' within the online period and
    -- the current date is within the configured period
    UPDATE product SET onlineFlag=availabilityStatus WHERE domainID=in_domainID AND availabilityStatus IN (0,1) AND ((validfrom<=currentDate AND currentDate<=validTo) OR (validfrom IS NOT NULL AND validto IS NULL AND validfrom<=currentDate) OR (validto IS NOT NULL AND validfrom IS NULL AND currentDate<=validTo));
    COMMIT;

    -- set products 'offline' if the product was 'online' during the online period and the online period is now over
    UPDATE product SET onlineFlag=decode(onlineflag, 0, 1, 0) WHERE domainID=in_domainID AND onlineflag=availabilityStatus AND (currentDate<validfrom OR currentDate>validTo);
    COMMIT;

    UPDATE ProductCategoryAssignment pca SET repOnlineFlag=(SELECT onlineflag FROM product WHERE uuid=pca.productid) WHERE domainid=in_domainID;
    COMMIT;

    SELECT count(*) INTO isShared FROM productsetdomainassignment WHERE domainid=in_domainID;
    IF isShared>0 THEN
        -- set products 'online' if the product should be 'online' within the online period and
        -- the current date is within the configured period
        UPDATE derivedproduct SET onlineFlag = availabilityStatus WHERE domainID=in_domainID AND availabilityStatus IN (0,1) AND ((validfrom<=currentDate AND currentDate<=validTo) OR (validfrom IS NOT NULL AND validto IS NULL AND validfrom<=currentDate) OR (validto IS NOT NULL AND validfrom IS NULL AND currentDate<=validTo));
        COMMIT;

        UPDATE derivedproduct SET onlineFlag=decode(onlineflag, 0, 1, 0) WHERE domainID=in_domainID AND onlineflag=availabilityStatus AND (currentDate<validfrom OR currentDate>validTo);
        COMMIT;

        UPDATE ProductCategoryAssignment pca SET repOnlineFlag=(SELECT onlineflag FROM derivedproduct WHERE baseproductid=pca.productid AND domainid = in_domainID) WHERE domainid=in_domainID;
        COMMIT;
    END IF;

END sp_updateProductOnlineStatus;
/

show errors;

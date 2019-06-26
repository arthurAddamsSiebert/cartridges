CREATE OR REPLACE PROCEDURE sp_deletePriceByDomain (in_domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deletePriceByDomain
-- History     : user              date       - desc
--             : ...
--             : Thomas Kober      07/20/2005 - #5882 sql with unbound var values
-- Created     : Dirk Kassner, Thomas Budich
-- Description : This procedure deletes seller user group prices.
-- Input       : in_domainID   The domain id of the domain to be deleted.
-- Output      : none
-- Example     : exec sp_deletePriceByDomain(domainid)
------------------------------------------------------------------------------------------

AS
    
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR) AS
    BEGIN

		FOR i IN (SELECT productrefsku, productrefdomainname, usergroupid, usergroupdomainid, currency
					FROM scaledprice
					WHERE domainid = in_domainID) LOOP
			DELETE FROM scaledpriceentry
			   WHERE productrefsku           = i.productrefsku AND
                     productrefdomainname    = i.productrefdomainname AND
                     usergroupid             = i.usergroupid AND
                     usergroupdomainid       = i.usergroupdomainid AND
                     currency                = i.currency;
			END LOOP;
		COMMIT;

		DELETE FROM scaledprice WHERE domainid = in_domainID;
		COMMIT;

		FOR i IN (SELECT productrefsku, productrefdomainname, usergroupid, usergroupdomainid, currency
					FROM scaledprice
					WHERE usergroupdomainid = in_domainID) LOOP
			DELETE FROM scaledpriceentry
			   WHERE productrefsku           = i.productrefsku AND
                     productrefdomainname    = i.productrefdomainname AND
                     usergroupid         	 = i.usergroupid AND
                     usergroupdomainid       = i.usergroupdomainid AND
                     currency                = i.currency;
			END LOOP;
		COMMIT;

		DELETE FROM scaledprice WHERE usergroupdomainid = in_domainID;
		COMMIT;

		FOR i IN (SELECT productrefsku, productrefdomainname, usergroupid, usergroupdomainid, currency
					FROM scaledprice sp, domaininformation di
					WHERE sp.productrefdomainname = di.domainname AND
                     di.domainid = in_domainID) LOOP
			DELETE FROM scaledpriceentry
			   WHERE productrefsku           = i.productrefsku AND
                     productrefdomainname    = i.productrefdomainname AND
                     usergroupid             = i.usergroupid AND
                     usergroupdomainid       = i.usergroupdomainid AND
                     currency                = i.currency;
			END LOOP;
		COMMIT;

		DELETE FROM scaledprice sp WHERE EXISTS (SELECT 1 FROM domaininformation di
			WHERE sp.productrefdomainname = di.domainname AND di.domainid = in_domainID);
		COMMIT;
	
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('usergroupprice', suffix) ||
				' WHERE domainid = :in_domainid'  ||
				' OR usergroupdomainid = :in_domanid'
				USING in_domainid, in_domainid;
		COMMIT;

		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('usergroupprice', suffix) ||
				' WHERE productrefdomainname IN (SELECT domainname FROM ' || staging.get_table_name('domaininformation', suffix) ||
						' WHERE domainid = :in_domainid)'
				USING in_domainid;
		COMMIT;
		
		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productlistprice', suffix) ||
				' WHERE domainid = :in_domainid' 
				USING in_domainid;	
		COMMIT;

		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('derivedproductlistprice', suffix) ||
				' WHERE domainid = :in_domainid' 
				USING in_domainid;	
		COMMIT;

		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productcostprice', suffix) ||
				' WHERE domainid = :in_domainid' 
				USING in_domainid;	
		COMMIT;

		EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('derivedproductcostprice', suffix) ||
				' WHERE domainid = :in_domainid' 
				USING in_domainid;	
		COMMIT;			
	
    END;

BEGIN

    IF sf_is_staging_table('productlistprice') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(in_domainID, '$1');
        deleteFromStagingTables(in_domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to delete from
        -- original table
        --
        deleteFromStagingTables(in_domainID, null);
    END IF;

END sp_deletePriceByDomain;
/

show errors

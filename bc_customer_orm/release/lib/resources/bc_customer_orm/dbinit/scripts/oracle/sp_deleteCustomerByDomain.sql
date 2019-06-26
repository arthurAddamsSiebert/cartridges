CREATE OR REPLACE PROCEDURE sp_deleteCustomerByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : sp_deleteCustomerByDomain
-- History     : user             date       - desc
--             : ...
--             : Ronny Wilms      06/03/2013 - #ENFINITY-31873 DeleteDomainReferences fails due to constraint CUSTOMERPROFILEASSIGNMEN_CO002
-- Created     : Ronny Wilms
-- Description : This procedure deletes customer belonging to domain with given domainid.
-- Input       : domainID   The domain id of the deleted domain.
-- Output      : none
-- Example     : exec sp_deleteCustomerByDomain('domainID')
------------------------------------------------------------------------------------------

AS
  --
  -- EXECUTE IMMEDIATE delete helper
  --
  PROCEDURE executeDelete
  (
    in_delete_ddl   IN VARCHAR2,
    in_domainid     IN VARCHAR2
  )
  AS
  BEGIN
    EXECUTE IMMEDIATE in_delete_ddl USING in_domainid;
  END;
 
  --
  -- clean up tables in staging scenario
  --
  PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
  AS
  BEGIN
    -- delete data from table CompanyProfile_AV 
    executeDelete('DELETE FROM ' || staging.get_table_name('CompanyProfile_AV', suffix) ||
            ' WHERE ownerid IN (SELECT cp.uuid FROM ' || staging.get_table_name('CompanyProfile', suffix) || ' cp ' ||
                'JOIN ' || staging.get_table_name('Customer', suffix) || ' c ' ||
                'ON (cp.customerid = c.uuid) WHERE c.domainid = :in_domainid)', in_domainid);
    
    -- delete data from table CompanyProfile with correct foreign key
	executeDelete('DELETE FROM ' || staging.get_table_name('CompanyProfile', suffix) || 
      ' WHERE CustomerID in (SELECT uuid FROM customer WHERE domainid = :in_domainid)', in_domainid);
      
    -- delete data from table CustomerProfileAssignment
    executeDelete('DELETE FROM ' || staging.get_table_name('CustomerProfileAssignment', suffix) || 
      ' WHERE CustomerID in (SELECT uuid FROM customer WHERE domainid = :in_domainid)', in_domainid);
     
	 
    -- delete data from tables CustomerTypeSetting/AV by domainid
    sp_genericPoAvDeleteByDomain('CustomerTypeSetting', 'CustomerTypeSetting_AV', suffix, in_domainid, 'domainid');
	 
    -- delete data from tables CompanyProfile/AV by domainid
    sp_genericPoAvDeleteByDomain('CompanyProfile', 'CompanyProfile_AV', suffix, in_domainid, 'domainid');
    -- delete data from tables CutomerAddress/AV by domainid
    sp_genericPoAvDeleteByDomain('CustomerAddress', 'CustomerAddress_AV', suffix, in_domainid, 'domainid');
    -- delete data from tables Customer/AV
    sp_genericPoAvDeleteByDomain('Customer', 'Customer_AV', suffix, in_domainid, 'domainid');

    COMMIT;
  END;
 
BEGIN
 
  IF sf_is_staging_table('Customer') THEN
    --
    -- try to clean up staging tables (resp. tables)
    --
    deleteFromStagingTables(domainID, '$1');
    deleteFromStagingTables(domainID, '$2');
  ELSE
    --
    -- staging tables do not exist
    -- try to delete from original table
    --
    deleteFromStagingTables(domainID, null);
  END IF;

END sp_deleteCustomerByDomain;
/

show errors

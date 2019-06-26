CREATE OR REPLACE PROCEDURE sp_remove_unapproved_products (shadow_table_suffix IN VARCHAR2, live_table_suffix IN VARCHAR2, staging_domain_id IN VARCHAR2) AS
  
------------------------------------------------------------------------------------------
-- Name        : sp_remove_unapproved_products
-- History     : user             date       - desc
--             : ...
-- Created     : Georgi Gilev, Hristo Todorov
-- Description : This procedure deletes unapproved products and related data in staging environments from 
--
-- * bundleassignment
-- * productcategoryassignment
-- * productlink_av
-- * productlinkposition
-- * productlink
-- * product_ra
-- * typedproductcategoryassm
-- * deletedproduct
-- * productcompleteness
-- * variablevariationatt_av
-- * productvariationassignment
-- * productvariationvalu_av
-- * productvariationvalue
-- * variablevariationattribute
-- * productvariation_av
-- * productvariation
-- * imagereference
-- * imageproductassignment
-- * productapproval_av
-- * productapproval
-- * derivedproduct
-- * product
-- * derivedproductcostprice
-- * derivedproductlistprice
-- * productlistprice
-- * productcostprice
-- * usergroupprice
--
--  by a given domain
--
-- Input       : shadow_table_suffix - The shadow table suffix.
-- Input       : live_table_suffix - The live table suffix.
-- Input       : staging_domain_id - The domain ID of the "to be removed" Domain.
--
-- Output      : none
--
-- Example     : exec sp_remove_unapproved_products('$1', '$2', 'OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

   products_for_delete_stmt VARCHAR2(1000);
   products_for_insert_stmt VARCHAR2(1000);
   
    --
    -- delete product data
    --
    PROCEDURE del_prod_data(staging_domain_id IN VARCHAR2, shadow_table_suffix IN VARCHAR2, live_table_suffix IN VARCHAR2, products_stmt IN VARCHAR2)
    AS
    BEGIN
        SET TRANSACTION READ WRITE;
        
        -- UnapprovedBundleAssignmentStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || STAGING.GET_TABLE_NAME('bundleassignment', shadow_table_suffix) ||                             
                               ' WHERE (productid in ('||  products_stmt || ') OR bundleid in ('||  products_stmt || '))' ||
                               'AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        -- UnapprovedProductCategoryAssignmentStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productcategoryassignment', shadow_table_suffix) || ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        commit;
        
        SET TRANSACTION READ WRITE;
       
        -- UnapprovedProductLinkAVStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productlink_av', shadow_table_suffix) || ' WHERE ownerid IN (SELECT uuid FROM ' || staging.get_table_name('productlink', shadow_table_suffix) ||
                             ' WHERE (targetid in ('||  products_stmt || ') OR sourceid in ('||  products_stmt || '))' ||
                             'AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        -- UnapprovedProductLinkPositionStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productlinkposition', shadow_table_suffix) || ' WHERE linkid IN (' ||
                                                                                      'SELECT uuid FROM ' || staging.get_table_name('productlink', shadow_table_suffix) ||
                                                                                      ' WHERE (sourceid in ('||  products_stmt || ') OR targetid in ('||  products_stmt || '))' || 
                                                                                    'AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
       
        -- UnapprovedProductLinkStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productlink', shadow_table_suffix) || 
                                                                      ' WHERE (sourceid in ('||  products_stmt || ') OR targetid in ('||  products_stmt || '))' || 
                                                                      'AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
                                                                      
        COMMIT;                                                                      
       
        SET TRANSACTION READ WRITE;
        
        -- UnapprovedProductRAStagingTableConfig -
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('product_ra', shadow_table_suffix) || ' WHERE ao_uuid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        -- UnapprovedTypedProductCategoryAssmStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('typedproductcategoryassm', shadow_table_suffix) || ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
       
        -- UnapprovedDeletedProductStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('deletedproduct', shadow_table_suffix) || ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
       
        -- UnapprovedProductCompletenessStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productcompleteness', shadow_table_suffix) || ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        COMMIT;
       
        SET TRANSACTION READ WRITE;
       
        -- UnapprovedVariableVariationAttAVStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('variablevariationatt_av', shadow_table_suffix) || ' WHERE ownerid IN ( SELECT uuid FROM ' || staging.get_table_name('variablevariationattribute', shadow_table_suffix) ||
                          ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id)'  USING staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
      
        -- UnapprovedProductVariationAssignmentStagingTableConfig --  
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productvariationassignment', shadow_table_suffix) || ' WHERE productvariationid IN (SELECT uuid FROM ' || staging.get_table_name('productvariation', shadow_table_suffix) ||
                            ' WHERE (productmasterid in ('||  products_stmt || ') OR productid in ('||  products_stmt || '))' || 
                            'AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
       
        -- UnapprovedProductVariationValueAVStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productvariationvalu_av', shadow_table_suffix) ||
                               ' WHERE ownerid IN' ||
                               ' (SELECT uuid FROM ' || staging.get_table_name('productvariationvalue', shadow_table_suffix) ||
                               ' WHERE variablevariationattributeid IN (SELECT uuid FROM ' || staging.get_table_name('variablevariationattribute', shadow_table_suffix) ||
                               ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id ) AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
             
        -- UnapprovedProductVariationValueStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productvariationvalue', shadow_table_suffix) ||
                                 ' WHERE variablevariationattributeid IN (SELECT uuid FROM ' || staging.get_table_name('variablevariationattribute', shadow_table_suffix) ||                                 
                                 ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
      
        -- UnapprovedVariableVariationAttributeStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('variablevariationattribute', shadow_table_suffix) || ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
      
        -- UnapprovedProductVariationAVStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productvariation_av', shadow_table_suffix) ||
                                                                                                          ' WHERE ownerid IN' ||
                                                                                                          ' (SELECT uuid FROM ' || staging.get_table_name('productvariation', shadow_table_suffix) ||                                                                                                                                
                                                                                                          ' WHERE (productmasterid in ('||  products_stmt || ') OR productid in ('||  products_stmt || '))' || 
                                                                                                          'AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;                                 
       
        -- UnapprovedProductVariationStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productvariation', shadow_table_suffix) ||
                                   ' WHERE (productmasterid in ('||  products_stmt || ') OR productid in ('||  products_stmt || '))' || 
                                   'AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
                                   
        COMMIT;  
        
        SET TRANSACTION READ WRITE;
        
        -- UnapprovedImageReferenceStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('imagereference', shadow_table_suffix) ||
                                 ' WHERE uuid IN ' ||
                                 '(SELECT imagereferenceuuid FROM ' || staging.get_table_name('imageproductassignment', shadow_table_suffix) || 
                                 ' WHERE productuuid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' ||                                
                                 'AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        -- UnapprovedImageProductAssignmentStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('imageproductassignment', shadow_table_suffix) ||
                                 ' WHERE productuuid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
       
        -- UnapprovedProductApprovalAVStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productapproval_av', shadow_table_suffix) || ' WHERE ownerid IN (SELECT uuid FROM ' || staging.get_table_name('productapproval', shadow_table_suffix) ||
        ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
       
        -- UnapprovedProductApprovalStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productapproval', shadow_table_suffix) || ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
        
        COMMIT;
        
        SET TRANSACTION READ WRITE;
        
        -- UnapprovedDerivedProductStagingTableConfig --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('derivedproduct', shadow_table_suffix) ||
                      ' WHERE baseproductid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;      
         
        -- UnapprovedProductStagingTableConfigImpl --
        EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('product', shadow_table_suffix) ||
                      ' WHERE uuid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
                      
        COMMIT;
    END;
   
    --
    -- insert and update product data
    --
    PROCEDURE hndl_prod_data_in_live(staging_domain_id IN VARCHAR2, shadow_table_suffix IN VARCHAR2, live_table_suffix IN VARCHAR2, products_stmt IN VARCHAR2)
    AS
    BEGIN
    
      SET TRANSACTION READ WRITE;
     
      -- UnapprovedProductApprovalStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productapproval', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('productapproval', live_table_suffix) ||
                        ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
   
      -- UnapprovedBundleAssignmentStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('bundleassignment', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('bundleassignment', live_table_suffix) ||
                                 ' ba WHERE (ba.productid in ('||  products_stmt || ') OR ba.bundleid in ('||  products_stmt || '))' || 
                                 ' AND ba.domainid = :staging_domain_id)' using staging_domain_id;
           
      -- UnapprovedProductApprovalAVStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productapproval_av', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('productapproval_av', live_table_suffix) ||
                        ' WHERE ownerid IN (' || 'SELECT uuid FROM ' || staging.get_table_name('productapproval', live_table_suffix) || ' WHERE productid in ('||  products_stmt || ')' ||
                        ' AND domainid = :staging_domain_id' || '))' using staging_domain_id;
               
      -- UnapprovedProductCategoryAssignmentStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productcategoryassignment', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('productcategoryassignment', live_table_suffix) ||
                        ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
                        
      COMMIT;
    
      SET TRANSACTION READ WRITE;
    
      -- UnapprovedProductLinkStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productlink', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('productlink', live_table_suffix) ||
                        ' pl WHERE (pl.sourceid in ('||  products_stmt || ') OR pl.targetid in ('||  products_stmt || '))' || 
                        ' AND pl.domainid = :staging_domain_id)' using staging_domain_id;
    
      -- UnapprovedProductLinkAVStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productlink_av', shadow_table_suffix) ||
                               ' (SELECT * FROM ' || staging.get_table_name('productlink_av', live_table_suffix) ||
                        ' WHERE ownerid IN (SELECT uuid FROM ' || staging.get_table_name('productlink', live_table_suffix) ||
                        ' pl WHERE (pl.sourceid in ('||  products_stmt || ') OR pl.targetid in ('||  products_stmt || '))' || 
                        ' AND pl.domainid = :staging_domain_id))' using staging_domain_id;
    
      -- UnapprovedProductLinkPositionStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productlinkposition', shadow_table_suffix) ||
                                ' (SELECT * FROM ' || staging.get_table_name('productlinkposition', live_table_suffix) ||
                        ' WHERE linkid IN (SELECT uuid FROM ' || staging.get_table_name('productlink', live_table_suffix) || 
                        ' pl WHERE (pl.sourceid in ('||  products_stmt || ') OR pl.targetid in ('||  products_stmt || '))' || 
                        ' AND pl.domainid = :staging_domain_id))' using staging_domain_id;
                        
      COMMIT;
    
      SET TRANSACTION READ WRITE;
    
      -- UnapprovedProductRAStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('product_ra', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('product_ra', live_table_suffix) || 
                        ' WHERE ao_uuid in ('||  products_stmt || ')' ||
                        ' AND domainid = :staging_domain_id)' using staging_domain_id;
    
      -- UnapprovedTypedProductCategoryAssmStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('typedproductcategoryassm', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('typedproductcategoryassm', live_table_suffix) || 
                        ' WHERE productid in ('||  products_stmt || ')' ||
                        ' AND domainid = :staging_domain_id)' using staging_domain_id;
                    
      -- UnapprovedDeletedProductStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('deletedproduct', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('deletedproduct', live_table_suffix) || 
                        ' WHERE productid in ('||  products_stmt || ')' ||
                        ' AND domainid = :staging_domain_id)' using staging_domain_id;
    
      -- UnapprovedProductCompletenessStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productcompleteness', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('productcompleteness', live_table_suffix) || 
                        ' WHERE productid in ('||  products_stmt || ')' ||
                        ' AND domainid = :staging_domain_id)' using staging_domain_id;
                        
      COMMIT;                 
      
      SET TRANSACTION READ WRITE;
      
      -- UnapprovedVariableVariationAttributeStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('variablevariationattribute', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('variablevariationattribute', live_table_suffix) ||
                        ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
     
      -- UnapprovedVariableVariationAttAVStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('variablevariationatt_av', shadow_table_suffix) || ' (SELECT * FROM ' || staging.get_table_name('variablevariationatt_av', live_table_suffix) ||
                        ' WHERE ownerid IN ( SELECT uuid FROM ' || staging.get_table_name('variablevariationattribute', live_table_suffix) || 
                        ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id))' using staging_domain_id;
               
      -- UnapprovedProductVariationStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productvariation', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('productvariation', live_table_suffix) ||
                                 ' pv WHERE (pv.productmasterid in ('||  products_stmt || ') OR pv.productid in ('||  products_stmt || '))' || 
                                 ' AND pv.domainid = :staging_domain_id)' using staging_domain_id;
    
      -- UnapprovedProductVariationAssignmentStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productvariationassignment', shadow_table_suffix) ||
                                 ' (SELECT * FROM ' || staging.get_table_name('productvariationassignment', live_table_suffix) ||
                                 ' WHERE productvariationid IN (SELECT uuid FROM ' || staging.get_table_name('productvariation', live_table_suffix) ||
                                 ' pv WHERE (pv.productmasterid in ('||  products_stmt || ') OR pv.productid in ('||  products_stmt || '))' || 
                                 ' AND pv.domainid = :staging_domain_id))' using staging_domain_id;
     
      -- UnapprovedProductVariationValueStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productvariationvalue', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('productvariationvalue', live_table_suffix) ||
                                 ' WHERE variablevariationattributeid IN (SELECT uuid FROM ' || staging.get_table_name('variablevariationattribute', live_table_suffix) ||
                                 ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id))' using staging_domain_id;
      
      -- UnapprovedProductVariationValueAVStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productvariationvalu_av', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('productvariationvalu_av', live_table_suffix) ||
                                 ' WHERE ownerid IN' ||
                                 ' (SELECT uuid FROM ' || staging.get_table_name('productvariationvalue', live_table_suffix) ||
                                 ' WHERE variablevariationattributeid IN (SELECT uuid FROM ' || staging.get_table_name('variablevariationattribute', live_table_suffix) ||
                                 ' WHERE productmasterid in ('||  products_stmt || ') AND domainid = :staging_domain_id) AND domainid = :staging_domain_id))' using staging_domain_id, staging_domain_id;
             
      -- UnapprovedProductVariationAVStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productvariation_av', shadow_table_suffix) ||
                                 ' (SELECT * FROM ' || staging.get_table_name('productvariation_av', live_table_suffix) ||
                                 ' WHERE ownerid IN' ||
                                 ' (SELECT uuid FROM ' || staging.get_table_name('productvariation', live_table_suffix) ||                                                                                                 
                                 ' pv WHERE (pv.productmasterid in ('||  products_stmt || ') OR pv.productid in ('||  products_stmt || '))' ||
                                 ' AND pv.domainid = :staging_domain_id))' using staging_domain_id;
                                 
      COMMIT;
      
      SET TRANSACTION READ WRITE;
      
      -- UnapprovedImageProductAssignmentStagingTableConfig --     
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('imageproductassignment', shadow_table_suffix) ||
                                 ' (SELECT * FROM ' || staging.get_table_name('imageproductassignment', live_table_suffix) ||
                                 ' WHERE productuuid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
    
      -- UnapprovedImageReferenceStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('imagereference', shadow_table_suffix) ||
                                 ' (SELECT * FROM ' || staging.get_table_name('imagereference', live_table_suffix) ||
                                 ' WHERE uuid IN ' ||
                                 '(SELECT imagereferenceuuid FROM ' || staging.get_table_name('imageproductassignment', live_table_suffix) || 
                                 ' WHERE productuuid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' ||                                 
                                 'AND domainid = :staging_domain_id)' using staging_domain_id, staging_domain_id;
                                 
      COMMIT;
    
      SET TRANSACTION READ WRITE;
      
      -- UnapprovedDerivedProductStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('derivedproduct', shadow_table_suffix) ||
                                 ' (SELECT * FROM ' || staging.get_table_name('derivedproduct', live_table_suffix) ||
                                 ' WHERE baseproductid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
      -- update lastmodified timestamp
      EXECUTE IMMEDIATE 'UPDATE derivedproduct SET lastmodified = SYSDATE WHERE baseproductid IN (' ||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id;
                          
      -- UnapprovedProductStagingTableConfigImpl --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('product', shadow_table_suffix) ||
                                 ' (SELECT * FROM ' || staging.get_table_name('product', live_table_suffix) ||
                                 ' WHERE uuid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
      -- update lastmodified timestamp
      EXECUTE IMMEDIATE 'UPDATE product SET lastmodified = SYSDATE WHERE uuid IN (' ||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id;
      
      COMMIT;
                                 
    END;
   
    --
    -- delete product prices data
    --
    PROCEDURE del_prod_prices_data(staging_domain_id in VARCHAR2, shadow_table_suffix in VARCHAR2, live_table_suffix in VARCHAR2, products_stmt in VARCHAR2)
    AS
    BEGIN
    
       SET TRANSACTION READ WRITE;
       
       -- UnapprovedDerivedProductCostpriceStagingTableConfig --
       EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('derivedproductcostprice', shadow_table_suffix) ||
                      ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;      
    
    
    
       -- UnapprovedDerivedProductListpriceStagingTableConfig --
       EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('derivedproductlistprice', shadow_table_suffix) ||
                      ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;      
    
 
    
       -- UnapprovedProductListPriceStagingTableConfig --
       EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productlistprice', shadow_table_suffix) ||
                      ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
    
    
    
       -- UnapprovedProductCostpriceStagingTableConfig --
       EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('productcostprice', shadow_table_suffix) ||
                      ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;      
   
   
   
       -- UnapprovedUserGroupPriceStagingTableConfig --
       EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('usergroupprice', shadow_table_suffix) ||
                      ' WHERE productrefsku in ('||  products_stmt || ') AND domainid = :staging_domain_id' using staging_domain_id, staging_domain_id, staging_domain_id, staging_domain_id;
                      
       COMMIT;
    END;
   
    --
    -- insert and update product data
    --
    PROCEDURE hndl_prod_prices_data_in_live(staging_domain_id in VARCHAR2, shadow_table_suffix in VARCHAR2, live_table_suffix in VARCHAR2, products_stmt in VARCHAR2)
    AS
    BEGIN
     SET TRANSACTION READ WRITE;
    
      -- UnapprovedDerivedProductCostpriceStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('derivedproductcostprice', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('derivedproductcostprice', live_table_suffix) ||
                                ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;

      -- UnapprovedDerivedProductListpriceStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('derivedproductlistprice', shadow_table_suffix) ||
                                '(SELECT * FROM ' || staging.get_table_name('derivedproductlistprice', live_table_suffix) ||
                                ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' USING staging_domain_id;

      -- UnapprovedProductListPriceStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productlistprice', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('productlistprice', live_table_suffix) ||
                                 ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;

      -- UnapprovedProductCostpriceStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('productcostprice', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('productcostprice', live_table_suffix) ||
                                 ' WHERE productid in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
                                 
      -- UnapprovedUserGroupPriceStagingTableConfig --
      EXECUTE IMMEDIATE 'INSERT INTO ' || staging.get_table_name('usergroupprice', shadow_table_suffix) ||
                                 '(SELECT * FROM ' || staging.get_table_name('usergroupprice', live_table_suffix) ||
                                 ' WHERE productrefsku in ('||  products_stmt || ') AND domainid = :staging_domain_id)' using staging_domain_id;
                                 
      COMMIT;
    END; 
   
    BEGIN

     SET TRANSACTION READ WRITE;
          
          
     products_for_delete_stmt := 'SELECT p1.uuid FROM ' || staging.get_table_name('product', shadow_table_suffix) || ' p1 LEFT JOIN ' || staging.get_table_name('productapproval', shadow_table_suffix)  ||
                                 ' pa1 ON p1.uuid = pa1.productid AND p1.domainid = pa1.domainid WHERE p1.domainid = :staging_domain_id AND (pa1.approvalstatus is null or pa1.approvalstatus != 3) ' ||
                                 'UNION ALL ' ||
                                 'SELECT p2.uuid FROM ' || staging.get_table_name('product', shadow_table_suffix) || ' p2 left JOIN ' || staging.get_table_name('productapproval', shadow_table_suffix) ||
                                 ' pa2 ON p2.uuid = pa2.productid ' ||
                                 'WHERE p2.domainid IN (SELECT ps.domainid FROM ' || staging.get_table_name('productset', shadow_table_suffix) || ' ps ' ||
                                                      'INNER JOIN ' || staging.get_table_name('productsetdomainassignment', shadow_table_suffix) || ' psda ' ||
                                                      'ON ps.uuid = psda.productsetuuid WHERE psda.domainid = :staging_domain_id ' ||
                                                      'AND ps.activeflag = 1 AND (ps.allflag = 1 OR EXISTS(SELECT productuuid FROM ' || staging.get_table_name('productsetassignment', shadow_table_suffix) || ' psa ' ||
                                                      'WHERE p2.uuid = psa.productuuid AND ps.uuid = psa.productsetuuid))) ' ||
                                 ' AND (pa2.approvalstatus is null or (pa2.domainid = :staging_domain_id AND pa2.approvalstatus != 3))';
     
     EXECUTE IMMEDIATE 'create global temporary table tmp_products_for_insert ON COMMIT PRESERVE ROWS as ' ||
                       'SELECT p1.uuid FROM ' || staging.get_table_name('product', shadow_table_suffix) || ' p1 LEFT JOIN ' || staging.get_table_name('productapproval', shadow_table_suffix)  ||
                                 ' pa1 ON p1.uuid = pa1.productid AND p1.domainid = pa1.domainid WHERE p1.domainid = ''' || staging_domain_id || ''' AND (pa1.approvalstatus is null or pa1.approvalstatus != 3) ' ||
                                 ' AND EXISTS(SELECT uuid FROM ' || staging.get_table_name('product', live_table_suffix) || ' p2 WHERE p2.uuid = p1.uuid AND p2.domainid = ''' || staging_domain_id || ''')' ||
                                 'UNION ALL ' ||
                                 'SELECT p3.uuid FROM ' || staging.get_table_name('product', shadow_table_suffix) || ' p3 left JOIN ' || staging.get_table_name('productapproval', shadow_table_suffix) ||
                                 ' pa2 ON p3.uuid = pa2.productid ' ||
                                 'WHERE p3.domainid IN (SELECT ps.domainid FROM ' || staging.get_table_name('productset', shadow_table_suffix) || ' ps ' ||
                                                      'INNER JOIN ' || staging.get_table_name('productsetdomainassignment', shadow_table_suffix) || ' psda ' ||
                                                      'ON ps.uuid = psda.productsetuuid WHERE psda.domainid = ''' || staging_domain_id  ||
                                                      ''' AND ps.activeflag = 1 AND (ps.allflag = 1 OR EXISTS(SELECT productuuid FROM ' || staging.get_table_name('productsetassignment', shadow_table_suffix) || ' psa ' ||
                                                      'WHERE p3.uuid = psa.productuuid AND ps.uuid = psa.productsetuuid))) ' ||
                                 ' AND (pa2.approvalstatus is null or (pa2.domainid = ''' || staging_domain_id || ''' AND pa2.approvalstatus != 3))' ||
                                 ' AND EXISTS (SELECT uuid FROM ' || staging.get_table_name('product', live_table_suffix) || ' p4 WHERE p3.uuid = p4.uuid AND p3.domainid = p4.domainid)';
       COMMIT;  
                                 
       products_for_insert_stmt := 'SELECT uuid FROM tmp_products_for_insert';
                                                  
                                                  
      -- delete product prices data
      del_prod_prices_data(staging_domain_id, shadow_table_suffix, live_table_suffix, products_for_delete_stmt);
      -- delete product data
      del_prod_data(staging_domain_id, shadow_table_suffix, live_table_suffix, products_for_delete_stmt);
      
      -- handle product prices data
      hndl_prod_prices_data_in_live(staging_domain_id, shadow_table_suffix, live_table_suffix, products_for_insert_stmt);
      -- handle product data
      hndl_prod_data_in_live(staging_domain_id, shadow_table_suffix, live_table_suffix, products_for_insert_stmt);

      EXECUTE IMMEDIATE 'TRUNCATE TABLE tmp_products_for_insert';
      EXECUTE IMMEDIATE 'DROP TABLE tmp_products_for_insert';
     
      EXCEPTION
        WHEN OTHERS THEN
        
        ROLLBACK;
         
        SET TRANSACTION READ WRITE;
        
        EXECUTE IMMEDIATE 'TRUNCATE TABLE tmp_products_for_insert';
        EXECUTE IMMEDIATE 'DROP TABLE tmp_products_for_insert';
        
        COMMIT;
        raise_application_error(-20101, 'Error in sp_remove_unapproved_products. ' || sqlerrm);
END;
/
show errors;
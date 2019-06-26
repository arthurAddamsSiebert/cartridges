------------------------------------------------------------------------------------------
-- Name        : sp_remove_unapproved_products
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure delete product data
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_remove_unapproved_products$del_prod_data
(
	@staging_domain_id NVARCHAR(30),
	@shadow_table_suffix VARCHAR(256),
	@live_table_suffix VARCHAR(256),
	@products_stmt NVARCHAR(3000)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
	BEGIN TRAN;
		-- UnapprovedBundleAssignmentStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('bundleassignment', @shadow_table_suffix) ,                              
								' WHERE (productid in (',   @products_stmt ,  ') OR bundleid in (',   @products_stmt ,  '))' , 
								'AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductCategoryAssignmentStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productcategoryassignment', @shadow_table_suffix) ,  ' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;

	BEGIN TRAN;
		-- UnapprovedProductLinkAVStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productlink_av', @shadow_table_suffix) ,  ' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('productlink', @shadow_table_suffix) , 
								' WHERE (targetid in (',   @products_stmt ,  ') OR sourceid in (',   @products_stmt ,  '))', 
								'AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductLinkPositionStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productlinkposition', @shadow_table_suffix) ,  ' WHERE linkid IN (' , 
																						'SELECT uuid FROM ', dbo.STAGING$get_table_name('productlink', @shadow_table_suffix) , 
																						' WHERE (sourceid in (',   @products_stmt ,  ') OR targetid in (',   @products_stmt ,  '))' ,  
																					'AND domainid = ''', @staging_domain_id,''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductLinkStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productlink', @shadow_table_suffix) ,  
																		' WHERE (sourceid in (',   @products_stmt ,  ') OR targetid in (',   @products_stmt ,  '))' , 
																		'AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;

	BEGIN TRAN;
		-- UnapprovedProductRAStagingTableConfig -
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('product_ra', @shadow_table_suffix) ,  ' WHERE ao_uuid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedTypedProductCategoryAssmStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('typedproductcategoryassm', @shadow_table_suffix) ,  ' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedDeletedProductStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('deletedproduct', @shadow_table_suffix) ,  ' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductCompletenessStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productcompleteness', @shadow_table_suffix) ,  ' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;
	
	BEGIN TRAN;

		-- UnapprovedVariableVariationAttAVStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('variablevariationatt_av', @shadow_table_suffix) ,  ' WHERE ownerid IN ( SELECT uuid FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @shadow_table_suffix) , 
							' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		-- UnapprovedProductVariationAssignmentStagingTableConfig --  
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productvariationassignment', @shadow_table_suffix) ,  ' WHERE productvariationid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('productvariation', @shadow_table_suffix) , 
							' WHERE (productmasterid in (',   @products_stmt ,  ') OR productid in (',   @products_stmt ,  '))' ,  
							'AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		-- UnapprovedProductVariationValueAVStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productvariationvalu_av', @shadow_table_suffix) , 
								' WHERE ownerid IN' , 
								' (SELECT uuid FROM ', dbo.STAGING$get_table_name('productvariationvalue', @shadow_table_suffix) , 
								' WHERE variablevariationattributeid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @shadow_table_suffix) , 
								' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, ''' ) AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		
		-- UnapprovedProductVariationValueStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productvariationvalue', @shadow_table_suffix) , 
									' WHERE variablevariationattributeid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @shadow_table_suffix) ,                                  
									' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		
		-- UnapprovedVariableVariationAttributeStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @shadow_table_suffix) ,  ' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		-- UnapprovedProductVariationAVStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productvariation_av', @shadow_table_suffix) , 
																											' WHERE ownerid IN' , 
																											' (SELECT uuid FROM ', dbo.STAGING$get_table_name('productvariation', @shadow_table_suffix) ,                                                                                                                                 
																											' WHERE (productmasterid in (',   @products_stmt ,  ') OR productid in (',   @products_stmt ,  '))' ,  
																											'AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		-- UnapprovedProductVariationStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productvariation', @shadow_table_suffix) , 
								' WHERE (productmasterid in (',   @products_stmt ,  ') OR productid in (',   @products_stmt ,  '))' ,  
								'AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;

	BEGIN TRAN;
		-- UnapprovedImageReferenceStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('imagereference', @shadow_table_suffix) , 
									' WHERE uuid IN ' , 
									'(SELECT imagereferenceuuid FROM ', dbo.STAGING$get_table_name('imageproductassignment', @shadow_table_suffix) ,  
									' WHERE productuuid in (',   @products_stmt ,  ') AND domainid = :@staging_domain_id)' ,                                 
									'AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedImageProductAssignmentStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('imageproductassignment', @shadow_table_suffix) , 
									' WHERE productuuid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductApprovalAVStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productapproval_av', @shadow_table_suffix) ,  ' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix) , 
		' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductApprovalStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix) ,  ' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;

	BEGIN TRAN;
		-- UnapprovedDerivedProductStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('derivedproduct', @shadow_table_suffix) , 
						' WHERE baseproductid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductStagingTableConfigImpl --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('product', @shadow_table_suffix) , 
					' WHERE uuid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;
	
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_remove_unapproved_products
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure insert and update product data
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_remove_unapproved_products$hndl_prod_data_in_live(@staging_domain_id NVARCHAR(30), @shadow_table_suffix VARCHAR(256), @live_table_suffix VARCHAR(256), @products_stmt NVARCHAR(MAX))
AS
BEGIN
    DECLARE @sqlQuery NVARCHAR(MAX);
	BEGIN TRAN;

		-- UnapprovedProductApprovalStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('productapproval', @live_table_suffix) , 
						' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedBundleAssignmentStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('bundleassignment', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('bundleassignment', @live_table_suffix) , 
									' ba WHERE (ba.productid in (',   @products_stmt ,  ') OR ba.bundleid in (',   @products_stmt ,  '))' ,  
									' AND ba.domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductApprovalAVStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productapproval_av', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('productapproval_av', @live_table_suffix) , 
						' WHERE ownerid IN (' ,  'SELECT uuid FROM ', dbo.STAGING$get_table_name('productapproval', @live_table_suffix) ,  ' WHERE productid in (',   @products_stmt ,  ')' , 
						' AND domainid = ''', @staging_domain_id, '''' ,  ')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductCategoryAssignmentStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productcategoryassignment', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('productcategoryassignment', @live_table_suffix) , 
						' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

	COMMIT;

	BEGIN TRAN;

		-- UnapprovedProductLinkStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productlink', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('productlink', @live_table_suffix) , 
						' pl WHERE (pl.sourceid in (',   @products_stmt ,  ') OR pl.targetid in (',   @products_stmt ,  '))' ,  
						' AND pl.domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductLinkAVStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productlink_av', @shadow_table_suffix) , 
								' SELECT * FROM ', dbo.STAGING$get_table_name('productlink_av', @live_table_suffix) , 
						' WHERE ownerid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('productlink', @live_table_suffix) , 
						' pl WHERE (pl.sourceid in (',   @products_stmt ,  ') OR pl.targetid in (',   @products_stmt ,  '))' ,  
						' AND pl.domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductLinkPositionStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productlinkposition', @shadow_table_suffix) , 
								' SELECT * FROM ', dbo.STAGING$get_table_name('productlinkposition', @live_table_suffix) , 
						' WHERE linkid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('productlink', @live_table_suffix) ,  
						' pl WHERE (pl.sourceid in (',   @products_stmt ,  ') OR pl.targetid in (',   @products_stmt ,  '))' ,  
						' AND pl.domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

	COMMIT;

	BEGIN TRAN;
		-- UnapprovedProductRAStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('product_ra', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('product_ra', @live_table_suffix) ,  
						' WHERE ao_uuid in (',   @products_stmt ,  ')' , 
						' AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedTypedProductCategoryAssmStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('typedproductcategoryassm', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('typedproductcategoryassm', @live_table_suffix) ,  
						' WHERE productid in (',   @products_stmt ,  ')' , 
						' AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedDeletedProductStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('deletedproduct', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('deletedproduct', @live_table_suffix) ,  
						' WHERE productid in (',   @products_stmt ,  ')' , 
						' AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductCompletenessStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productcompleteness', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('productcompleteness', @live_table_suffix) ,  
						' WHERE productid in (',   @products_stmt ,  ')' , 
						' AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;                 

	BEGIN TRAN;

		-- UnapprovedVariableVariationAttributeStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('variablevariationattribute', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @live_table_suffix) , 
						' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedVariableVariationAttAVStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('variablevariationatt_av', @shadow_table_suffix) ,  ' SELECT * FROM ', dbo.STAGING$get_table_name('variablevariationatt_av', @live_table_suffix) , 
						' WHERE ownerid IN ( SELECT uuid FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @live_table_suffix) ,  
						' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductVariationStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productvariation', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('productvariation', @live_table_suffix) , 
									' pv WHERE (pv.productmasterid in (',   @products_stmt ,  ') OR pv.productid in (',   @products_stmt ,  '))' ,  
									' AND pv.domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductVariationAssignmentStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productvariationassignment', @shadow_table_suffix) , 
									' SELECT * FROM ', dbo.STAGING$get_table_name('productvariationassignment', @live_table_suffix) , 
									' WHERE productvariationid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('productvariation', @live_table_suffix) , 
									' pv WHERE (pv.productmasterid in (',   @products_stmt ,  ') OR pv.productid in (',   @products_stmt ,  '))' ,  
									' AND pv.domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductVariationValueStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productvariationvalue', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('productvariationvalue', @live_table_suffix) , 
									' WHERE variablevariationattributeid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @live_table_suffix) , 
									' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, ''')');;
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductVariationValueAVStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productvariationvalu_av', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('productvariationvalu_av', @live_table_suffix) , 
									' WHERE ownerid IN' , 
									' (SELECT uuid FROM ', dbo.STAGING$get_table_name('productvariationvalue', @live_table_suffix) , 
									' WHERE variablevariationattributeid IN (SELECT uuid FROM ', dbo.STAGING$get_table_name('variablevariationattribute', @live_table_suffix) , 
									' WHERE productmasterid in (',   @products_stmt ,  ') AND domainid = :@staging_domain_id) AND domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductVariationAVStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productvariation_av', @shadow_table_suffix) , 
									' SELECT * FROM ', dbo.STAGING$get_table_name('productvariation_av', @live_table_suffix) , 
									' WHERE ownerid IN' , 
									' (SELECT uuid FROM ', dbo.STAGING$get_table_name('productvariation', @live_table_suffix) ,                                                                                                  
									' pv WHERE (pv.productmasterid in (',   @products_stmt ,  ') OR pv.productid in (',   @products_stmt ,  '))' , 
									' AND pv.domainid = ''', @staging_domain_id, ''')');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;

	BEGIN TRAN;

		-- UnapprovedImageProductAssignmentStagingTableConfig --     
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('imageproductassignment', @shadow_table_suffix) , 
									' SELECT * FROM ', dbo.STAGING$get_table_name('imageproductassignment', @live_table_suffix) , 
									' WHERE productuuid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedImageReferenceStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('imagereference', @shadow_table_suffix) , 
									' SELECT * FROM ', dbo.STAGING$get_table_name('imagereference', @live_table_suffix) , 
									' WHERE uuid IN ' , 
									'(SELECT imagereferenceuuid FROM ', dbo.STAGING$get_table_name('imageproductassignment', @live_table_suffix) ,  
									' WHERE productuuid in (',   @products_stmt ,  ') AND domainid = :@staging_domain_id)' ,                                  
									'AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0                         
	COMMIT;

	BEGIN TRAN;

		-- UnapprovedDerivedProductStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('derivedproduct', @shadow_table_suffix) , 
									' SELECT * FROM ', dbo.STAGING$get_table_name('derivedproduct', @live_table_suffix) , 
									' WHERE baseproductid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- update lastmodified timestamp
		SET @sqlQuery = CONCAT('UPDATE derivedproduct SET lastmodified = SYSDATE WHERE baseproductid IN (' ,   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductStagingTableConfigImpl --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('product', @shadow_table_suffix) , 
									' SELECT * FROM ', dbo.STAGING$get_table_name('product', @live_table_suffix) , 
									' WHERE uuid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- update lastmodified timestamp
		SET @sqlQuery = CONCAT('UPDATE product SET lastmodified = SYSDATE WHERE uuid IN (' ,   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;

END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_remove_unapproved_products
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure delete product prices data
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_remove_unapproved_products$del_prod_prices_data(@staging_domain_id NVARCHAR(30), @shadow_table_suffix VARCHAR(256), @live_table_suffix VARCHAR(256), @products_stmt NVARCHAR(MAX))
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);  
	BEGIN TRAN;

		-- UnapprovedDerivedProductCostpriceStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('derivedproductcostprice', @shadow_table_suffix) , 
						' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedDerivedProductListpriceStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('derivedproductlistprice', @shadow_table_suffix) , 
						' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductListPriceStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productlistprice', @shadow_table_suffix) , 
						' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedProductCostpriceStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('productcostprice', @shadow_table_suffix) , 
						' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

		-- UnapprovedUserGroupPriceStagingTableConfig --
		SET @sqlQuery = CONCAT('DELETE FROM ', dbo.STAGING$get_table_name('usergroupprice', @shadow_table_suffix) , 
						' WHERE productrefsku in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
	COMMIT;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sp_remove_unapproved_products
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
-- Description : This procedure insert and update product data and used in sp_remove_unapproved_products
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sp_remove_unapproved_products$hndl_prod_prices_data_in_live(@staging_domain_id NVARCHAR(30), @shadow_table_suffix VARCHAR(256), @live_table_suffix VARCHAR(256), @products_stmt NVARCHAR(MAX))
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
	BEGIN TRAN;

		-- UnapprovedDerivedProductCostpriceStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('derivedproductcostprice', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('derivedproductcostprice', @live_table_suffix) , 
								' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedDerivedProductListpriceStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('derivedproductlistprice', @shadow_table_suffix) , 
								'SELECT * FROM ', dbo.STAGING$get_table_name('derivedproductlistprice', @live_table_suffix) , 
								' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductListPriceStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productlistprice', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('productlistprice', @live_table_suffix) , 
									' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedProductCostpriceStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('productcostprice', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('productcostprice', @live_table_suffix) , 
									' WHERE productid in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0
		-- UnapprovedUserGroupPriceStagingTableConfig --
		SET @sqlQuery = CONCAT('INSERT INTO ', dbo.STAGING$get_table_name('usergroupprice', @shadow_table_suffix) , 
									'SELECT * FROM ', dbo.STAGING$get_table_name('usergroupprice', @live_table_suffix) , 
									' WHERE productrefsku in (',   @products_stmt ,  ') AND domainid = ''', @staging_domain_id, '''');
		EXEC SQL_UTIL$execute @sqlQuery, 0

	COMMIT;
END;
GO
CREATE OR ALTER PROCEDURE sp_remove_unapproved_products
(
	@shadow_table_suffix VARCHAR(256),
	@live_table_suffix VARCHAR(256),
	@staging_domain_id NVARCHAR(30)
) AS
------------------------------------------------------------------------------------------
-- Name        : sp_remove_unapproved_products
-- History     : user             date       - desc
--             : ...
-- Created     : Anand Singh
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
-- Input       : @shadow_table_suffix - The shadow table suffix.
-- Input       : @live_table_suffix - The live table suffix.
-- Input       : @staging_domain_id - The domain ID of the "to be removed" Domain.
--
-- Output      : none
--
-- Example     : exec sp_remove_unapproved_products '$1', '$2', 'OK0KAB1LrH8AAADm9wC0ccmj'
------------------------------------------------------------------------------------------
BEGIN
	DECLARE @products_for_delete_stmt NVARCHAR(4000),
			@products_for_insert_stmt NVARCHAR(4000),
			@sqlQuery NVARCHAR(MAX);;
	BEGIN TRY
		BEGIN TRAN;
			SET @products_for_delete_stmt = CONCAT('SELECT p1.uuid FROM ', dbo.STAGING$get_table_name('product', @shadow_table_suffix) ,  ' p1 LEFT JOIN ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix)  , 
									 ' pa1 ON p1.uuid = pa1.productid AND p1.domainid = pa1.domainid WHERE p1.domainid = ''', @staging_domain_id, ''' AND (pa1.approvalstatus is null or pa1.approvalstatus != 3) ' , 
									 'UNION ALL ' , 
									 'SELECT p2.uuid FROM ', dbo.STAGING$get_table_name('product', @shadow_table_suffix) ,  ' p2 left JOIN ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix) , 
									 ' pa2 ON p2.uuid = pa2.productid ' , 
									 'WHERE p2.domainid IN (SELECT ps.domainid FROM ', dbo.STAGING$get_table_name('productset', @shadow_table_suffix) ,  ' ps ' , 
														  'INNER JOIN ', dbo.STAGING$get_table_name('productsetdomainassignment', @shadow_table_suffix) ,  ' psda ' , 
														  'ON ps.uuid = psda.productsetuuid WHERE psda.domainid = ''', @staging_domain_id, '''' , 
														  'AND ps.activeflag = 1 AND (ps.allflag = 1 OR EXISTS(SELECT productuuid FROM ', dbo.STAGING$get_table_name('productsetassignment', @shadow_table_suffix) ,  ' psa ' , 
														  'WHERE p2.uuid = psa.productuuid AND ps.uuid = psa.productsetuuid))) ' , 
									 ' AND (pa2.approvalstatus is null or (pa2.domainid = ''', @staging_domain_id, ''' AND pa2.approvalstatus != 3))');

			 SET @sqlQuery = CONCAT(' ' , 
						   'SELECT * INTO tmp_products_for_insert FROM (SELECT p1.uuid FROM ', dbo.STAGING$get_table_name('product', @shadow_table_suffix) ,  ' p1 LEFT JOIN ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix)  , 
									 ' pa1 ON p1.uuid = pa1.productid AND p1.domainid = pa1.domainid WHERE p1.domainid = ''' ,  @staging_domain_id ,  ''' AND (pa1.approvalstatus is null or pa1.approvalstatus != 3) ' , 
									 ' AND EXISTS(SELECT uuid FROM ', dbo.STAGING$get_table_name('product', @live_table_suffix) ,  ' p2 WHERE p2.uuid = p1.uuid AND p2.domainid = ''' ,  @staging_domain_id ,  ''')' , 
									 'UNION ALL ' , 
									 'SELECT p3.uuid FROM ', dbo.STAGING$get_table_name('product', @shadow_table_suffix) ,  ' p3 left JOIN ', dbo.STAGING$get_table_name('productapproval', @shadow_table_suffix) , 
									 ' pa2 ON p3.uuid = pa2.productid ' , 
									 'WHERE p3.domainid IN (SELECT ps.domainid FROM ', dbo.STAGING$get_table_name('productset', @shadow_table_suffix) ,  ' ps ' , 
														  'INNER JOIN ', dbo.STAGING$get_table_name('productsetdomainassignment', @shadow_table_suffix) ,  ' psda ' , 
														  'ON ps.uuid = psda.productsetuuid WHERE psda.domainid = ''' ,  @staging_domain_id  , 
														  ''' AND ps.activeflag = 1 AND (ps.allflag = 1 OR EXISTS(SELECT productuuid FROM ', dbo.STAGING$get_table_name('productsetassignment', @shadow_table_suffix) ,  ' psa ' , 
														  'WHERE p3.uuid = psa.productuuid AND ps.uuid = psa.productsetuuid))) ' , 
									 ' AND (pa2.approvalstatus is null or (pa2.domainid = ''' ,  @staging_domain_id ,  ''' AND pa2.approvalstatus != 3))' , 
									 ' AND EXISTS (SELECT uuid FROM ', dbo.STAGING$get_table_name('product', @live_table_suffix) ,  ' p4 WHERE p3.uuid = p4.uuid AND p3.domainid = p4.domainid)) a');
			EXEC SQL_UTIL$execute @sqlQuery, 0
		COMMIT;
		
		SET @products_for_insert_stmt = 'SELECT uuid FROM tmp_products_for_insert';

		-- delete product prices data
		EXEC sp_remove_unapproved_products$del_prod_prices_data @staging_domain_id, @shadow_table_suffix, @live_table_suffix, @products_for_delete_stmt;
		-- delete product data
		EXEC sp_remove_unapproved_products$del_prod_data @staging_domain_id, @shadow_table_suffix, @live_table_suffix, @products_for_delete_stmt;
		-- handle product prices data
		EXEC sp_remove_unapproved_products$hndl_prod_prices_data_in_live @staging_domain_id, @shadow_table_suffix, @live_table_suffix, @products_for_insert_stmt;
		-- handle product data
		EXEC sp_remove_unapproved_products$hndl_prod_data_in_live @staging_domain_id, @shadow_table_suffix, @live_table_suffix, @products_for_insert_stmt;
		
		SET @sqlQuery = 'TRUNCATE TABLE tmp_products_for_insert';
		EXEC SQL_UTIL$execute @sqlQuery, 0;

		SET @sqlQuery = 'DROP TABLE tmp_products_for_insert';
		EXEC SQL_UTIL$execute @sqlQuery, 0;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK
		BEGIN TRAN
			SET @sqlQuery = 'IF EXISTS(SELECT 1 FROM sys.tables WHERE name = ''tmp_products_for_insert'') TRUNCATE TABLE tmp_products_for_insert';
			EXEC SQL_UTIL$execute @sqlQuery, 0
			SET @sqlQuery = 'IF EXISTS(SELECT 1 FROM sys.tables WHERE name = ''tmp_products_for_insert'') DROP TABLE tmp_products_for_insert';
			EXEC SQL_UTIL$execute @sqlQuery, 0
		COMMIT;
		THROW 50101, 'Eror in sp_remove_unapproved_products', 1
	END CATCH
END;
GO



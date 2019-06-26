BEGIN
	staging.update_table('PRODUCT', 'SET SUPPLIERNAME=extractValue(XMLType(attributes), ''/attrs/attr[@name="SupplierName"]/string'') WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierName"])'')>0');
	staging.update_table('PRODUCT', 'SET SUPPLIERSKU=extractValue(XMLType(attributes), ''/attrs/attr[@name="SupplierSKU"]/string'') WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierSKU"])'')>0');
	staging.update_table('DERIVEDPRODUCT', 'SET SUPPLIERNAME=extractValue(XMLType(attributes), ''/attrs/attr[@name="SupplierName"]/string'') WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierName"])'')>0');
	staging.update_table('DERIVEDPRODUCT', 'SET SUPPLIERSKU=extractValue(XMLType(attributes), ''/attrs/attr[@name="SupplierSKU"]/string'') WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierSKU"])'')>0');
END;
/
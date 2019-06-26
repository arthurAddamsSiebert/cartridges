BEGIN
	staging.update_table('PRODUCT', 'SET attributes=to_clob(deleteXML(XMLType(attributes), ''/attrs/attr[@name="SupplierName"]'')) WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierName"])'')>0');
	staging.update_table('PRODUCT', 'SET attributes=to_clob(deleteXML(XMLType(attributes), ''/attrs/attr[@name="SupplierSKU"]'')) WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierSKU"])'')>0');
	staging.update_table('DERIVEDPRODUCT', 'SET attributes=to_clob(deleteXML(XMLType(attributes), ''/attrs/attr[@name="SupplierName"]'')) WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierName"])'')>0');
	staging.update_table('DERIVEDPRODUCT', 'SET attributes=to_clob(deleteXML(XMLType(attributes), ''/attrs/attr[@name="SupplierSKU"]'')) WHERE contains(attributes, ''HASPATH (/attrs/attr[@name="SupplierSKU"])'')>0');
	
	-- remove empty <attrs/>
	staging.update_table('PRODUCT', 'SET attributes=NULL WHERE attributes IS NOT NULL AND contains(attributes, ''HASPATH (/attrs/attr)'')<=0');
	staging.update_table('DERIVEDPRODUCT', 'SET attributes=NULL WHERE attributes IS NOT NULL AND contains(attributes, ''HASPATH (/attrs/attr)'')<=0');
END;
/
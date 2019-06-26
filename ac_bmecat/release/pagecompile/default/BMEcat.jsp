<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<BMECAT xmlns="http://www.bmecat.org/XMLSchema/1.2/bmecat_new_catalog"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.bmecat.org/XMLSchema/1.2/bmecat_new_catalog bmecat_new_catalog_1_2.xsd"
        version="1.2">
<%@page import="java.util.*,
			com.intershop.beehive.xcs.capi.product.*,
			com.intershop.beehive.xcs.capi.price.*,
			com.intershop.beehive.core.capi.naming.*,
			com.intershop.component.pricing.capi.definition.*" %>
<%@page import="com.intershop.adapter.bmecat.util.BMEEnumChecker" %>
<%@page import="com.intershop.beehive.core.capi.log.Logger, com.intershop.adapter.bmecat.util.BMEcatExportUtil" %>
<% 
BMEEnumChecker bmeEnumChecker = BMEEnumChecker.getInstance();
bmeEnumChecker.setSchemaPath("bmecat", "bmecat_new_catalog_1_2.xsd");
getPipelineDictionary().put("BMEEnumChecker", bmeEnumChecker); 
%>
	<% context.setCustomTagTemplateName("catalogstructure","inc/CatalogStructure",false,new String[]{"category"},null); %>
	<% context.setCustomTagTemplateName("article","inc/Article",false,new String[]{"product"},null); %>
	<% context.setCustomTagTemplateName("article2cataloggroupmap","inc/Article2CatalogGroupMap",false,new String[]{"product","catalog"},null); %>
	<% context.setCustomTagTemplateName("mimeinfo","inc/MimeInfo",false,new String[]{"object","locale"},null); %>
	<% context.setCustomTagTemplateName("bmecataddress","inc/BMEcatAddress",false,new String[]{"organization","type"},null); %>
	<% context.setCustomTagTemplateName("writeelement","inc/WriteElement",false,new String[]{"objectpath","localized","element","size","optional","separator","formatter","style","id"},null); %>
	<%
		getPipelineDictionary().put("CurrentDate", new java.util.Date());
	%>
	<HEADER>
		<CATALOG>
			<LANGUAGE><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:ISO3Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></LANGUAGE>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","20"),
new TagParameter("objectpath","Catalog:Id"),
new TagParameter("element","CATALOG_ID")}, 31); %>
			<CATALOG_VERSION><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:BME_CATALOG_VERSION"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:BME_CATALOG_VERSION"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>1.0<% } %></CATALOG_VERSION>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","100"),
new TagParameter("objectpath","Catalog:DisplayName"),
new TagParameter("localized","true"),
new TagParameter("element","CATALOG_NAME")}, 33); %>
			<DATETIME type="generation_date">
				<DATE><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),"yyyy-MM-dd",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></DATE>
				<TIME><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),"HH:mm:ss",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></TIME>
			</DATETIME>
			<TERRITORY><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:Country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></TERRITORY>
			<CURRENCY><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></CURRENCY>
		</CATALOG>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BuyingOrganization"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
			<BUYER>
				<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","BuyingOrganization:ID"),
new TagParameter("element","BUYER_ID")}, 43); %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BuyingOrganization:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","BuyingOrganization:DisplayName"),
new TagParameter("element","BUYER_NAME")}, 44); %><% } else { %><% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","BuyingOrganization:ID"),
new TagParameter("element","BUYER_NAME")}, 44); %><% } %>
				<% processOpenTag(response, pageContext, "bmecataddress", new TagParameter[] {
new TagParameter("organization",getObject("BuyingOrganization")),
new TagParameter("type","buyer")}, 45); %>
			</BUYER>
		<% } %>
		<SUPPLIER>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","SupplyingOrganization:ID"),
new TagParameter("element","SUPPLIER_ID")}, 49); %> 
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SupplyingOrganization:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","SupplyingOrganization:DisplayName"),
new TagParameter("element","SUPPLIER_NAME")}, 50); %><% } else { %><% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","SupplyingOrganization:ID"),
new TagParameter("element","SUPPLIER_NAME")}, 50); %><% } %>
			<% processOpenTag(response, pageContext, "bmecataddress", new TagParameter[] {
new TagParameter("organization",getObject("SupplyingOrganization")),
new TagParameter("type","supplier")}, 51); %>
		</SUPPLIER>
	</HEADER>
	<T_NEW_CATALOG>
		<CATALOG_GROUP_SYSTEM>
        	<% while (loop("Categories","Category",null)) { %>
				<% processOpenTag(response, pageContext, "catalogstructure", new TagParameter[] {
new TagParameter("category",getObject("Category"))}, 57); %>
			<% } %>
		</CATALOG_GROUP_SYSTEM>
		<% while (loop("Products","Product",null)) { %>
			<%
				PriceDefinitionMgr priceDefMgr = 
					(PriceDefinitionMgr)NamingMgr.getInstance().
						lookupManager(PriceDefinitionMgr.REGISTRY_NAME);
				Product product = (Product)getObject("Product");
				getPipelineDictionary().put("ScaledProductListPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_LIST_PRICES));
				getPipelineDictionary().put("ScaledProductGroupPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_GROUP_PRICES));
			%>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Product:ListPricesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (hasNext("ScaledProductListPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasNext("ScaledProductGroupPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "article", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 72); %>
			<% } else { %>
			<%	
				Logger.warn(BMEcatExportUtil.class.getName(), "{} doesn't have a price, it is not eligible for export",(String)getObject("Product:SKU"));			
			%>
			<% } %>	
		<% } %>
		<% while (loop("Products","Product",null)) { %>
			<%
				PriceDefinitionMgr priceDefMgr = 
					(PriceDefinitionMgr)NamingMgr.getInstance().
						lookupManager(PriceDefinitionMgr.REGISTRY_NAME);
				Product product = (Product)getObject("Product");
				getPipelineDictionary().put("ScaledProductListPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_LIST_PRICES));
				getPipelineDictionary().put("ScaledProductGroupPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_GROUP_PRICES));
			%>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Product:ListPricesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (hasNext("ScaledProductListPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasNext("ScaledProductGroupPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "article2cataloggroupmap", new TagParameter[] {
new TagParameter("product",getObject("Product")),
new TagParameter("catalog",getObject("Catalog"))}, 91); %>
			<% } %>	
		<% } %>
	</T_NEW_CATALOG>
</BMECAT><% printFooter(out); %>
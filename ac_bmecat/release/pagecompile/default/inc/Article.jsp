<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="java.util.Iterator,
	com.intershop.beehive.core.capi.domain.AttributeValue,
	com.intershop.beehive.core.capi.localization.LocaleInformation,
	com.intershop.beehive.foundation.util.FilterIterator,
	com.intershop.beehive.foundation.util.FilterCondition,
	com.intershop.beehive.xcs.capi.product.Product" %>
<%!
	private class PrefixFilterCondition
		extends FilterCondition	
	{
		private String prefix = null;
		PrefixFilterCondition(String prefix) { this.prefix = prefix; }
		public boolean isValid(Object obj) { return obj.toString().startsWith(prefix); }
	}
%>
<% context.setCustomTagTemplateName("articlefeatures","inc/ArticleFeatures",false,new String[]{"product"},null); %>
<% context.setCustomTagTemplateName("articleorderdetails","inc/ArticleOrderDetails",false,new String[]{"product"},null); %>
<% context.setCustomTagTemplateName("articlepricedetails","inc/ArticlePriceDetails",false,new String[]{"product"},null); %>
<% context.setCustomTagTemplateName("articlereferences","inc/ArticleReferences",false,new String[]{"product"},null); %>
<% context.setCustomTagTemplateName("mimeinfo","inc/MimeInfo",false,new String[]{"object","locale"},null); %>
<ARTICLE mode="new">
	<% {Object temp_obj = (context.getFormattedValue(getObject("Product:SKU"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("Controller:DomainName"),null)); getPipelineDictionary().put("ID", temp_obj);} %>
	<SUPPLIER_AID><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></SUPPLIER_AID>
	<ARTICLE_DETAILS>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","80"),
new TagParameter("objectpath","Product:Name"),
new TagParameter("localized","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DESCRIPTION_SHORT")}, 26); %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:LongDescription(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","64000"),
new TagParameter("objectpath","Product:LongDescription"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DESCRIPTION_LONG")}, 28); %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Product:ShortDescription(Locale)")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("Product:ShortDescription(Locale)"),null).equals(context.getFormattedValue(getObject("Product:Name(Locale)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","64000"),
new TagParameter("objectpath","Product:ShortDescription"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DESCRIPTION_LONG")}, 30); %>
		<% }} %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","14"),
new TagParameter("objectpath","Product:EANCode"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","EAN")}, 32); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_SUPPLIER_ALT_AID"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","SUPPLIER_ALT_AID")}, 33); %>
		<% 
			Product product = (Product)getObject("Product");
	
			for (Iterator keys = new FilterIterator(product.createAttributeNamesIterator(),
				 new PrefixFilterCondition("BME_ARTICLE_DETAILS_BUYERAID")); keys.hasNext(); )
			{
				String key = (String)keys.next();
				String value = product.getString(key);
				String type = key.substring(key.lastIndexOf('_') + 1);
				out.println("<BUYER_AID type=" + type + ">" + encodeString(value) + "</BUYER_AID>");						
			}
		%>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:ManufacturerSKU"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","MANUFACTURER_AID")}, 46); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:ManufacturerName"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","MANUFACTURER_NAME")}, 47); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_MANUFACTURERTYPEDESCR"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","MANUFACTURER_TYPE_DESCR")}, 48); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_ERPGROUPBUYER"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","ERP_GROUP_BUYER")}, 49); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_ERPGROUPSUPPLIER"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","ERP_GROUP_SUPPLIER")}, 50); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","6"),
new TagParameter("objectpath","Product:DeliveryDays"),
new TagParameter("optional","true"),
new TagParameter("style","number"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DELIVERY_TIME")}, 51); %>
		<%
			LocaleInformation locale = (LocaleInformation)getObject("Locale");

			for (Iterator keys = new FilterIterator(product.createAttributeNamesIterator(),
				 new PrefixFilterCondition("BME_ARTICLE_DETAILS_SPECIAL_TREATMENT_CLASS")); keys.hasNext(); )
			{
				String key = (String)keys.next();
				String value = product.getString(key);
				String type = key.substring(key.lastIndexOf('_') + 1);
				out.println("<SPECIAL_TREATMENT_CLASS type=\"" + type + "\">" + encodeString(value) + "</SPECIAL_TREATMENT_CLASS>");
			}

			for (int i = 1;; ++i)
			{
				AttributeValue av = product.getAttributeValue("BME_ARTICLE_DETAILS_KEYWORD_" + i, locale);
				
				if (av == null) break;

				out.println("<KEYWORD>" + encodeString(av.getStringValue()) + "</KEYWORD>");
			}
		%>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","64000"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_REMARKS"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","REMARKS")}, 73); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","100"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_SEGMENT"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","SEGMENT")}, 74); %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_ARTICLEORDER"),
new TagParameter("style","integer"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","ARTICLE_ORDER")}, 75); %>
		<%
			for (Iterator keys = new FilterIterator(product.createAttributeNamesIterator(),
				 new PrefixFilterCondition("BME_ARTICLE_DETAILS_ARTICLESTATUS")); keys.hasNext(); )
			{
				String key = (String)keys.next();
				AttributeValue av = product.getAttributeValue(key, locale);
				
				if (av == null) continue;

				out.println("<ARTICLESTATUS type=\"" + key.substring(key.lastIndexOf('_') + 1) + "\">" + 
					encodeString(av.getStringValue())+ "</ARTICLESTATUS>");
			}
		%>
	</ARTICLE_DETAILS>
	<% processOpenTag(response, pageContext, "articlefeatures", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 90); %>
	<% processOpenTag(response, pageContext, "articleorderdetails", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 91); %>
	<% processOpenTag(response, pageContext, "articlepricedetails", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 92); %>
	<% processOpenTag(response, pageContext, "mimeinfo", new TagParameter[] {
new TagParameter("locale",getObject("Locale")),
new TagParameter("object",getObject("Product"))}, 93); %>
	<% processOpenTag(response, pageContext, "articlereferences", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 94); %>
</ARTICLE><% printFooter(out); %>
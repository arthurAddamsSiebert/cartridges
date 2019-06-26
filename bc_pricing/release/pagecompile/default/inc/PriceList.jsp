<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="java.util.*,
	java.sql.*,
	com.intershop.beehive.core.capi.naming.*,
	com.intershop.component.pricing.capi.definition.*,
	com.intershop.component.pricing.capi.pricelist.*,
	com.intershop.beehive.core.capi.environment.ORMMgr,
	com.intershop.beehive.xcs.capi.product.*"%>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "11");} %>
<% context.setCustomTagTemplateName("pricelistentry","inc/PriceListEntry",false,new String[]{"tables","product"},null); %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<product-price-list id="<% {String value = null;try{value=context.getFormattedValue(getObject("pricelist:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" priceType="<% {String value = null;try{value=context.getFormattedValue(getObject("pricelist:PriceType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	<% while (loop("pricelist:AttributeValues","av",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
			<display-name xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
		<% } %>
	<% } %>
	<% while (loop("pricelist:AttributeValues","av",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
			<description xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
		<% } %>
	<% } %>
	<enabled><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pricelist:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>true<% } else { %>false<% } %></enabled>
	<priority><% {String value = null;try{value=context.getFormattedValue(getObject("pricelist:Priority"),"0.####","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></priority>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("pricelist:ValidFromNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><valid-from><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("pricelist:ValidFrom"))}, 32); %></valid-from><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("pricelist:ValidToNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><valid-to><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("pricelist:ValidTo"))}, 33); %></valid-to><% } %>

	<target-groups>
	<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"PriceListExportXMLExtensions", null, "36");} %>
	</target-groups>
	<% 
		PriceList priceList = (PriceList)getObject("pricelist");
		List productUUIDs = getProductUUIDs(priceList.getUUID());
		
		for (int i = 0, n = productUUIDs.size(); i < n; ++i)
		{
			Product product = productMgr.getProductByUUID((String)productUUIDs.get(i));
			if (product != null)
			{
			    
				Iterator tables = priceListMgr.getPriceScaleTables(product, priceList);
				getPipelineDictionary().put("tables", tables);
				getPipelineDictionary().put("product", product);
				%>
				<% processOpenTag(response, pageContext, "pricelistentry", new TagParameter[] {
new TagParameter("tables",getObject("tables")),
new TagParameter("product",getObject("product"))}, 52); %> 
				<%   
			}
		}

		getPipelineDictionary().put("attributes", priceList.createCustomAttributesIterator());
	%>
	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("attributes"))}, 59); %>
</product-price-list>
<%!
	ORMMgr ormMgr = 
		(ORMMgr)NamingMgr.getInstance().lookupManager(ORMMgr.REGISTRY_NAME);
	PriceListMgr priceListMgr = 
		(PriceListMgr)NamingMgr.getInstance().lookupManager(PriceListMgr.REGISTRY_NAME);
	ProductMgr productMgr = 
		(ProductMgr)NamingMgr.getInstance().lookupManager(ProductMgr.REGISTRY_NAME);

	List getProductUUIDs(String priceListUUID)
		throws SQLException
	{
		List uuids = new ArrayList();
		PreparedStatement stmt = null;
	
		try
		{
			Connection con = ormMgr.getORMEngine().getJDBCManager().getCurrentConnection();
			stmt = con.prepareStatement(
				"select distinct productuuid from PRICESCALETABLEASSIGNMENT where pricelistuuid=?");
			stmt.setString(1, priceListUUID);
			ResultSet rs = stmt.executeQuery();
	
			while (rs.next())
			{
				uuids.add(rs.getString("productuuid"));		
			}
		}
		finally
		{
			if (stmt != null) stmt.close();			
		}
		
		return uuids;
	}	
%><% printFooter(out); %>
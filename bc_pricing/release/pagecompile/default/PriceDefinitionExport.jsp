<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>

<%@page import="com.intershop.beehive.core.capi.environment.ORMMgr,
	com.intershop.beehive.xcs.capi.product.*,
	com.intershop.beehive.core.capi.naming.*,
	com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.pricing.capi.definition.*,
	com.intershop.component.pricing.capi.scale.*,
	com.intershop.component.pricing.internal.scale.*,
	java.io.*,
	java.sql.*,				
	java.util.*,
	java.text.*" %>
<enfinity 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/7.1/bc_pricing/impex bc_pricing.xsd"
	xmlns="http://www.intershop.com/xml/ns/enfinity/7.1/bc_pricing/impex"
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt">
	<% context.setCustomTagTemplateName("pricedefinition","inc/PriceDefinition",false,new String[]{"product","typecode","definitions"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
		<%
			Iterator products = (Iterator)getObject("Objects");
			while (products instanceof com.intershop.beehive.foundation.util.ResettableIterator)
			{
				products = ((com.intershop.beehive.foundation.util.ResettableIterator)products).toSequence();
			}
			List typeCodes = null;			while (products.hasNext())
			{
			  Product product = (Product)products.next();
				if (typeCodes == null)				{					typeCodes = getTypeCodes(product.getDomainID());				}				for (int i = 0, n = typeCodes.size(); i < n; ++i)				{
					Integer typeCode = (Integer)typeCodes.get(i);					Iterator defs = priceDefinitionMgr.getPriceDefinitions(product, typeCode.intValue());					getPipelineDictionary().put("definitions", defs);					getPipelineDictionary().put("product", product);					getPipelineDictionary().put("typecode", typeCode);					%>					<% processOpenTag(response, pageContext, "pricedefinition", new TagParameter[] {
new TagParameter("typecode",getObject("typecode")),
new TagParameter("product",getObject("product")),
new TagParameter("definitions",getObject("definitions"))}, 37); %>					<%							}			}		%>
	<% } %>
</enfinity>

<%! 	PriceDefinitionMgr priceDefinitionMgr = (PriceDefinitionMgr)NamingMgr.getInstance().lookupManager(PriceDefinitionMgr.REGISTRY_NAME);	PriceScaleMgr priceScaleMgr = (PriceScaleMgr)NamingMgr.getInstance().lookupManager(PriceScaleMgr.REGISTRY_NAME);	ORMMgr ormMgr = (ORMMgr)NamingMgr.getInstance().lookupManager(ORMMgr.REGISTRY_NAME);	List getTypeCodes(String domainID)		throws SQLException	{		List typeCodes = new ArrayList();		PreparedStatement stmt = null;		try		{			Connection con = ormMgr.getORMEngine().getJDBCManager().getCurrentConnection();			stmt = con.prepareStatement(				"select distinct typecode from PRICEDEFINITIONPRODUCTBINDING where domainid=?");			stmt.setString(1, domainID);			ResultSet rs = stmt.executeQuery();			while (rs.next())			{				typeCodes.add(new Integer(rs.getInt("typecode")));					}		}		finally		{			if (stmt != null) stmt.close();					}		return typeCodes;	}	%><% printFooter(out); %>
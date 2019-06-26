<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.beehive.xcs.capi.product.*,
	com.intershop.beehive.core.capi.naming.*,
	com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.pricing.capi.definition.*,
	com.intershop.component.pricing.capi.pricelist.*,
	java.util.*" %>
<enfinity 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/7.1/bc_pricing/impex bc_pricing.xsd"
	xmlns="http://www.intershop.com/xml/ns/enfinity/7.1/bc_pricing/impex"
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
	major="6" minor="1" family="enfinity" branch="enterprise" build="<% {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
	<% context.setCustomTagTemplateName("pricelist","inc/PriceList",false,new String[]{"pricelist"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
		<%
			Iterator priceLists = (Iterator)getObject("Objects");
			while (priceLists instanceof com.intershop.beehive.foundation.util.ResettableIterator)
			{
				priceLists = ((com.intershop.beehive.foundation.util.ResettableIterator)priceLists).toSequence();
			}
			while (priceLists.hasNext())
			{
				PriceList priceList = (PriceList)priceLists.next();
				getPipelineDictionary().put("pricelist", priceList);
				%><% processOpenTag(response, pageContext, "pricelist", new TagParameter[] {
new TagParameter("pricelist",getObject("pricelist"))}, 29); %><%
			}
		%>
	<% } %>
</enfinity><% printFooter(out); %>
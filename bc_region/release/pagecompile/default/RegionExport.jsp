<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.region.capi.region.*,
	com.intershop.component.region.internal.region.*,
	com.intershop.beehive.foundation.util.*,
	java.util.*" %>
	
<enfinity 
	xmlns="http://www.intershop.com/xml/ns/enfinity/6.5/bc_region/impex" 
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt" 
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.5/bc_region/impex bc_region.xsd ">	
	
	<% context.setCustomTagTemplateName("region","inc/Region",false,new String[]{"region","regionassign"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
		<%
			Iterator regionsItr = (Iterator)getObject("Objects");
			ResettableIteratorImpl regions = new ResettableIteratorImpl(regionsItr);
			
			if(regions.hasNext())
			{
				while (regions.hasNext())
				{
					Region region = (Region)regions.next();
					getPipelineDictionary().put("region", region);
					%><% processOpenTag(response, pageContext, "region", new TagParameter[] {
new TagParameter("regionassign","false"),
new TagParameter("region",getObject("region"))}, 28); %><%
				}
			}
		
		
		
		regions.reset();
		if(regions.hasNext())
			{
				while (regions.hasNext())
				{
					Region region = (Region)regions.next();
					getPipelineDictionary().put("region", region);
					%><% processOpenTag(response, pageContext, "region", new TagParameter[] {
new TagParameter("regionassign","true"),
new TagParameter("region",getObject("region"))}, 41); %><%
				}
			}
		
		%>
	<% } %>
	
	
</enfinity><% printFooter(out); %>
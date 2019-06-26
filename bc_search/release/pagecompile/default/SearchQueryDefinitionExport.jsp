<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.beehive.core.capi.naming.*,
	com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.search.capi.querydefinition.SearchQueryDefinition,
	java.util.*" %>
<enfinity 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.5/bc_search/impex searchquerydefinition.xsd"
	xmlns="http://www.intershop.com/xml/ns/enfinity/6.5/bc_search/impex"
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt">
<searchquery-definitions>
	<% context.setCustomTagTemplateName("searchquerydefinition","inc/SearchQueryDefinition",false,new String[]{"searchQueryDefinition"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
		<%
			Iterator searchQueryDefinitions = (Iterator)getObject("Objects");
			while (searchQueryDefinitions instanceof com.intershop.beehive.foundation.util.ResettableIterator)
			{
				searchQueryDefinitions = ((com.intershop.beehive.foundation.util.ResettableIterator)searchQueryDefinitions).toSequence();
			}
			while (searchQueryDefinitions.hasNext())
			{
				SearchQueryDefinition searchQueryDefinition = (SearchQueryDefinition)searchQueryDefinitions.next();
				getPipelineDictionary().put("searchQueryDefinition", searchQueryDefinition);
				%><% processOpenTag(response, pageContext, "searchquerydefinition", new TagParameter[] {
new TagParameter("searchQueryDefinition",getObject("searchQueryDefinition"))}, 26); %><%
			}
		%>
	<% } %>
</searchquery-definitions>
</enfinity><% printFooter(out); %>
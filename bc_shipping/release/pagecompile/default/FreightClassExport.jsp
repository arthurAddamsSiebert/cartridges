<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.beehive.core.capi.naming.*,
	com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.shipping.internal.freightclass.*,
	com.intershop.component.shipping.capi.freightclass.FreightClass,
	java.util.*" %>
	
<enfinity 
	xmlns="http://www.intershop.com/xml/ns/enfinity/6.5/bc_shipping/impex" 
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt" 
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.5/bc_shipping/impex staticfiles/definition/bc_shipping.xsd ">
	<% context.setCustomTagTemplateName("freightclass","inc/FreightClass",false,new String[]{"freightclass"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
		<%
			Iterator freightClasses = (Iterator)getObject("Objects");
			if (freightClasses instanceof com.intershop.beehive.foundation.util.ResettableIterator)
			{
				freightClasses = ((com.intershop.beehive.foundation.util.ResettableIterator)freightClasses).toSequence();
			}
			if(freightClasses.hasNext())
			{
				while (freightClasses.hasNext())
				{
					FreightClass freightClass = (FreightClass)freightClasses.next();
					getPipelineDictionary().put("freightClass", freightClass);
					%><% processOpenTag(response, pageContext, "freightclass", new TagParameter[] {
new TagParameter("freightclass",getObject("freightClass"))}, 29); %><%
				}
			}
		%>
	<% } %>
</enfinity><% printFooter(out); %>
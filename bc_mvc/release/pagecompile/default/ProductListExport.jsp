<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.component.mvc.capi.product.*, java.util.*" %>
<enfinity 
	xmlns="http://www.intershop.com/xml/ns/enfinity/7.0/bc_mvc/impex" 
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/7.0/bc_mvc/impex bc_mvc.xsd">

<% context.setCustomTagTemplateName("productlist","inc/ProductList",false,new String[]{"productList"},null); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
<%
	Iterator productLists = (Iterator)getObject("Objects");

	while (productLists instanceof com.intershop.beehive.foundation.util.ResettableIterator)
	{
		productLists = ((com.intershop.beehive.foundation.util.ResettableIterator)productLists).toSequence();
	}
	
	while (productLists.hasNext())
	{
		ProductList productList = (ProductList)productLists.next();
		getPipelineDictionary().put("productList", productList);
		%>
			<% processOpenTag(response, pageContext, "productlist", new TagParameter[] {
new TagParameter("productList",getObject("productList"))}, 26); %>
		<%
	}
%>
<% } %>

</enfinity>
<% printFooter(out); %>
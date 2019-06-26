<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
%><%@page import="java.util.Date"%><%
%><%@page import="java.util.Map"%><%
%><%@page import="com.intershop.beehive.foundation.quantity.Money"%><%
%><%@page import="com.intershop.beehive.foundation.quantity.Quantity"%><%
%><%@page import="com.intershop.component.auditing.capi.ref.AuditObjectRef" %><%
%><%@page import="com.intershop.sellside.enterprise.internal.auditing.AuditObjectRefDisplayKeyValueProvider" %><%
%><%
	Object displayItem = (Object) getPipelineDictionary().get("displayItem");
	String itemType;

	if (displayItem instanceof Date) {
		itemType = "Date";
	} else if (displayItem instanceof Number) {
		itemType = "Number";
	} else if (displayItem instanceof Quantity) {
		itemType = "Quantity";
	} else if (displayItem instanceof Money) {
	    itemType = "Money";
	} else if (displayItem instanceof AuditObjectRef) {
		itemType = "AuditObjectRef";
		Map<String, Object> keyValueMap = AuditObjectRefDisplayKeyValueProvider.createKeyValueMap((AuditObjectRef)displayItem);
		getPipelineDictionary().put("AuditObjectRefKeyValueEntrySet", keyValueMap.entrySet());
	} else {
		itemType = "String";
	};

	getPipelineDictionary().put("ItemType", itemType);
%><% printFooter(out); %>
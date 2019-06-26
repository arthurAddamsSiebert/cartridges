<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
%><%@page import="java.util.Collection"%><%
%><%
	Object displayObject = (Object) getPipelineDictionary().get("displayObject");

	if (displayObject instanceof Collection) {
%><%
%><% while (loop("displayObject","displayItem",null)) { %><%
%><% processOpenTag(response, pageContext, "formatitemdisplay", new TagParameter[] {
new TagParameter("displayItem",getObject("displayItem"))}, 9); %><%
%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("displayItem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>, <% } %><%
%><% } %><%
%><%
	} else {
%><%
%><% processOpenTag(response, pageContext, "formatitemdisplay", new TagParameter[] {
new TagParameter("displayItem",getObject("displayObject"))}, 15); %><%
%><%
	};
%><% printFooter(out); %>
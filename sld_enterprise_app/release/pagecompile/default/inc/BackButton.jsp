<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%
	PipelineDictionary dict = getPipelineDictionary();

	String label = (String)dict.get("label");
	if (label == null)
	{
		label="&lt;&lt; Back";
	}
%><div> 
<% URLPipelineAction action198 = new URLPipelineAction(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null));String site198 = null;String serverGroup198 = null;String actionValue198 = context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null);if (site198 == null){  site198 = action198.getDomain();  if (site198 == null)  {      site198 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup198 == null){  serverGroup198 = action198.getServerGroup();  if (serverGroup198 == null)  {      serverGroup198 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue198, site198, serverGroup198,true)); %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input class="button" type="submit" value="<% {String value = null;try{value=context.getFormattedValue(getObject("label"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div><% printFooter(out); %>
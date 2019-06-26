<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div> 
<% URLPipelineAction action202 = new URLPipelineAction(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null));String site202 = null;String serverGroup202 = null;String actionValue202 = context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null);if (site202 == null){  site202 = action202.getDomain();  if (site202 == null)  {      site202 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup202 == null){  serverGroup202 = action202.getServerGroup();  if (serverGroup202 == null)  {      serverGroup202 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue202, site202, serverGroup202,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input class="button" type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Back.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div><% printFooter(out); %>
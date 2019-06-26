<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("Startup.Startup.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="aldi table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null)%>"><% {out.write(localizeISText("Startup.Snapshot.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Tabs -->
<!-- Title -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="form_bg w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("Startup.ClusterInformationStartup.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Title -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("Startup.SpecifyWhichInformationIsCollected.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ClusterInfoPropertyEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td> 
<td class="error top" width="100%"><% {out.write(localizeISText("Startup.PropertyChangesCouldNotBeDistributed.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Errors -->
<!-- Application server -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s" colspan="2"><% {out.write(localizeISText("Startup.ApplicationServer.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Application server -->
<!-- Server Menu --><% URLPipelineAction action104 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null));String site104 = null;String serverGroup104 = null;String actionValue104 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null);if (site104 == null){  site104 = action104.getDomain();  if (site104 == null)  {      site104 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup104 == null){  serverGroup104 = action104.getServerGroup();  if (serverGroup104 == null)  {      serverGroup104 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("StartUpServer");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue104, site104, serverGroup104,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"startup/StartupServer", null, "57");} %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="StartupServerApply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Startup.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<!-- EO ServerMenu -->
<!-- Startup Info -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s" colspan="2"><% {out.write(localizeISText("Startup.StartupInformation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Startup Info -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("Startup.UseTheCheckboxesToSelectTheIntendedTypes.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Menu --><% URLPipelineAction action105 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null));String site105 = null;String serverGroup105 = null;String actionValue105 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null);if (site105 == null){  site105 = action105.getDomain();  if (site105 == null)  {      site105 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup105 == null){  serverGroup105 = action105.getServerGroup();  if (serverGroup105 == null)  {      serverGroup105 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("StartUp");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue105, site105, serverGroup105,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"startup/StartupProperties", null, "93");} %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="StartupPropertiesApply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Startup.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<!-- EO Menu --><% printFooter(out); %>
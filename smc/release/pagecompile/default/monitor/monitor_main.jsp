<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor_main.ClusterOverview.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor_main.PageProvidesOverviewOfRunningServers.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("PerformLogout-GlobalLogout",null)))),"table_title_description",null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="aldi">
<tr>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor.ServerName.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor.Host.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor.Port.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor.InstallationID.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_main.PID.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_main.StartedAt.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_main.CPUUsage.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_main.HeapUsage.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_main.MemoryUsage.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("monitor_main.ActiveSessions.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ServerRegistrations","TargetServer",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetServer:Type"),null).equals(context.getFormattedValue("AppServer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMiniStatus-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServer:ServerID"),null)))),null), null, null, "26");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% } else { %><tr>
<td class="table_detail e" valign="top"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TargetServer:Name"),null)),null)%>&nbsp;</td>
<td class="table_detail e" valign="top"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TargetServer:Host"),null)),null)%>&nbsp;</td>
<td class="table_detail e" valign="top" align="right"><% {String value = null;try{value=context.getFormattedValue(getObject("TargetServer:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e" valign="top"><%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("TargetServer:InstallationID"),null)),null)%>&nbsp;</td>
<td class="table_detail e" valign="top" align="right"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("TargetServer:StartDate"),"MM/dd/yyyy - HH:mm:ss",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="right"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="right"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="right"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail" valign="top" align="right"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr>
</table><% printFooter(out); %>
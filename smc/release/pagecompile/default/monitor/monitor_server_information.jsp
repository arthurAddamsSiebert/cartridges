<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-ApplicationServer",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.ApplicationServer.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.ProcessInformation.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewServerInformation-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "10");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"> <% {out.write(localizeISText("monitor_server_information.ApplicationServerProcessInformation.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor.PageDisplaysProcessInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<!-- Main Content -->
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="aldi">
<tr>
<td colspan="2" class="table_header s"><% {out.write(localizeISText("monitor_server_information.GeneralProcessInformation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.ProcessID.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.ClusterID.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("ClusterID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.AssignedToServerGroups.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:ServerGroups"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><%@ page import="com.intershop.beehive.core.capi.environment.PropertyMgr" %><tr>
<td colspan="2" class="table_header n s"><% {out.write(localizeISText("monitor_server_information.WebfrontServiceInformation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.Protocol.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Protocol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.ServicePort.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.ServletPath.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Path"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.BoundToNetworkInterface.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><%=PropertyMgr.getInstance().getProperty("intershop.servletEngine.connector.address", "(all)")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.MinimumNumberOfHandlerThreads.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><%=PropertyMgr.getInstance().getProperty("intershop.servletEngine.connector.minProcessors", "5")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.MaximumNumberOfHandlerThreads.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><%=PropertyMgr.getInstance().getProperty("intershop.servletEngine.connector.maxProcessors", "20")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.AcceptQueueLength.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><%=PropertyMgr.getInstance().getProperty("intershop.servletEngine.connector.acceptCount", "10")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.ConnectionTimeout.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><%=PropertyMgr.getInstance().getProperty("intershop.servletEngine.connector.connectionTimeout", "60000")%> <% {out.write(localizeISText("monitor_server_information.MilliSecs.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_server_information.AccessLoggingEnabled.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top"><%=PropertyMgr.getInstance().getProperty("intershop.servletEngine.connector.accessLogging", "false")%></td>
</tr>
<tr>
<td colspan="2" class="table_header n s"><% {out.write(localizeISText("monitor_server_information.ImportantEnvironmentVariables.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% if (com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("LD_LIBRARY_PATH") != null) { %><tr>
<td class="table_detail3" valign="top" nowrap="nowrap">LD_LIBRARY_PATH:</td>
<td class="table_detail w100" valign="top"><%=com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("LD_LIBRARY_PATH")%></td>
</tr><% } %><tr>
<td class="table_detail3" valign="top" nowrap="nowrap">NLS_LANG:</td>
<td class="table_detail w100" valign="top"><%=com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("NLS_LANG")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap">NLS_SORT:</td>
<td class="table_detail w100" valign="top"><%=com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("NLS_SORT")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap">ORACLE_HOME:</td>
<td class="table_detail w100" valign="top"><%=com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("ORACLE_HOME")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap">PATH:</td>
<td class="table_detail w100" valign="top"><%=com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("PATH")%></td>
</tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap">TNS_ADMIN:</td>
<td class="table_detail w100" valign="top"><%=com.intershop.beehive.runtime.internal.util.SystemUtils.getEnvironmentVariable("TNS_ADMIN")%></td>
</tr>
</table>
</td>
<!-- /Main Content -->
<!-- /Content Area -->
</tr>
</table><% printFooter(out); %>
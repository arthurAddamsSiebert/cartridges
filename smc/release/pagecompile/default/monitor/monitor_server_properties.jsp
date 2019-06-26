<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-ApplicationServer",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.ApplicationServer.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.Properties.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewServerProperties-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "10");}
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
<td class="table_title aldi"> <% {out.write(localizeISText("monitor_server_properties.ApplicationServerProperties.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor.PageDisplaysConfigurationProperties.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<!-- Main Content -->
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } else { %><tr>
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="aldi">
<tr>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("monitor.Value.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ServerProperties",null,null)) { %><tr>
<td class="table_detail e" valign="top" width="300"><% {String value = null;try{value=context.getFormattedValue(getObject("ServerProperties:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail" valign="top"><%@ page import="java.util.StringTokenizer" %><%
												String key = (String) getObject("ServerProperties:Name");
												String val = (String) getObject("ServerProperties:Value");
												if (key != null  &&  val != null  &&
													(key.indexOf(".staging.tables.") >= 0) || key.endsWith(".foreignkeys"))
												{
													StringTokenizer tokens = new StringTokenizer(val, ",");

													val = "";
													while (tokens.hasMoreTokens())
													{
														val += tokens.nextToken() + "\n";
													}
												}
												getPipelineDictionary().put("value", val);
											%><% {String value = null;try{value=context.getFormattedValue(getObject("value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %></table>
</td>
</tr><% } %></table>
</td>
<!-- /Main Content -->
</tr>
</table>
<!-- /Content Area --><% printFooter(out); %>
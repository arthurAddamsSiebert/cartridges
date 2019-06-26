<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Content Area -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-ApplicationServer",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.ApplicationServer.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.SessionsAndRequests.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewSessionInformation-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "11");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<tr>
<!-- Main Content -->
<td>
<table cellpadding="0" cellspacing="0" border="0" class="w100 aldi">
<tr>
<td colspan="2" class="table_title s"> <% {out.write(localizeISText("monitor_session_information.ApplicationServerSessionsAndRequests.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2" class="table_title_description"><% {out.write(localizeISText("monitor.PageDisplaysSessionRequestInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td colspan="2" class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } else { %><tr>
<td colspan="2" class="table_header n s"><% {out.write(localizeISText("monitor_session_information.SessionManagementOptions.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.SessionPersistenceEnabled.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("SessionPersistenceEnabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.CheckRestoredSessionsEnabled.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("CheckRestoredSessionsEnabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td colspan="2" class="table_header n s"><% {out.write(localizeISText("monitor_session_information.SessionStatistics.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.NumberOfActiveSessions.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("ActiveSessionCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.TotalNumberOfSessions.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("TotalSessionCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.AverageNumberOfSessionsPerDay.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("SessionsPerDay"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td colspan="2" class="table_header n s"><% {out.write(localizeISText("monitor_session_information.RequestStatistics.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.NumberOfActiveRequests.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("ActiveRequestCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.TotalNumberOfRequests.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("TotalRequestCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_session_information.AverageNumberOfRequestsPerDay.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail w100"><% {String value = null;try{value=context.getFormattedValue(getObject("RequestsPerDay"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
</td>
<!-- /Main Content -->
</tr>
</table>
<!-- /Content Area --><% printFooter(out); %>
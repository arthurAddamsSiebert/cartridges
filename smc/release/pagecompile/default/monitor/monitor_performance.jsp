<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-PerformanceMonitoring",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Performance.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_sensor_type", null, "5");} %> <% {out.write(localizeISText("monitor.Performance.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewPerformanceByType-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "9");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor.Performance.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SensorType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>- <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_sensor_type", null, "17");} %> <% {out.write(localizeISText("monitor.Performance.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
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
<td><% URLPipelineAction action38 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null)))),null));String site38 = null;String serverGroup38 = null;String actionValue38 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null)))),null);if (site38 == null){  site38 = action38.getDomain();  if (site38 == null)  {      site38 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup38 == null){  serverGroup38 = action38.getServerGroup();  if (serverGroup38 == null)  {      serverGroup38 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectSensor");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue38, site38, serverGroup38,true)); %><table border="0" cellspacing="0" cellpadding="4" class="infobox aldi w100">
<tr>
<td class="infobox_description nowrap"><% {out.write(localizeISText("monitor_performance.SelectType.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:<input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TargetServer:ServerID"),null)),null)%>"/><input type="hidden" name="SortBy" value="ClassName"/><input type="hidden" name="SortOrder" value="Ascending"/></td>
<td>
<select name="SensorType" size="1" class="select inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SensorType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><option selected="selected"><% {out.write(localizeISText("monitor_performance.SelectType.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% while (loop("SensorTypes",null,null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SensorTypes"),null)),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SensorTypes"),null).equals(context.getFormattedValue(getObject("SensorType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %> selected="selected"<% } %>
><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SensorTypes"),null)),null)%></option><% } %></select>
</td>
<td class="w100">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="infobox_description" colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("SensorType"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor_performance.PleaseSelectATypeFrom.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %> <% } %></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SensorType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor_performancePageDisplaysSensorMonitoringResults.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_sensor_type", null, "67");} %><% {out.write(localizeISText("monitor_performance.AllValuesAreDisplayedInMilliseconds.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Sensors")))).booleanValue() && ((Boolean) (hasLoopElements("Sensors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="n e w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ClassName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><td class="table_header e s nowrap"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ClassName",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_sensor_type", null, "75");} %></a></td><% } else { %><td class="table_header e s nowrap"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ClassName",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_sensor_type", null, "77");} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Hits",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Hits",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.write(localizeISText("monitor.Hits.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Hits",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.write(localizeISText("monitor.Hits.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("TotalTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("TotalTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.write(localizeISText("monitor.TotalTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("TotalTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.write(localizeISText("monitor.TotalTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("EffectiveTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("EffectiveTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.write(localizeISText("monitor.EffectiveTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("EffectiveTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.write(localizeISText("monitor.EffectiveTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("AverageTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("AverageTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.write(localizeISText("monitor.AverageTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("AverageTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.write(localizeISText("monitor.AverageTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("MinimumTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MinimumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.write(localizeISText("monitor.MinimumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_header e s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MinimumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.write(localizeISText("monitor.MinimumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("MaximumTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><td class="table_header s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MaximumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null)%>"><% {out.write(localizeISText("monitor.MaximumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_header s nowrap right"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SensorType",null),context.getFormattedValue(getObject("SensorType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MaximumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null)%>"><% {out.write(localizeISText("monitor.MaximumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %></tr><% while (loop("Sensors",null,null)) { %><tr>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:ClassName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s nowrap top right"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:Hits"),"#,##0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s nowrap top right"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:TotalTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s nowrap top right"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:EffectiveTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s nowrap top right"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:AverageTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s nowrap top right"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:MinimumTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail s nowrap top right"><% {String value = null;try{value=context.getFormattedValue(getObject("Sensors:MaximumTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td class="w e s right"><% URLPipelineAction action39 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null)))),null));String site39 = null;String serverGroup39 = null;String actionValue39 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null)))),null);if (site39 == null){  site39 = action39.getDomain();  if (site39 == null)  {      site39 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup39 == null){  serverGroup39 = action39.getServerGroup();  if (serverGroup39 == null)  {      serverGroup39 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPerformanceByType-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("PipeletList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue39, site39, serverGroup39,true)); %><table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="hidden" name="SensorType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SensorType"),null)),null)%>"/><input type="hidden" name="SortBy" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SortBy"),null)),null)%>"/><input type="hidden" name="SortOrder" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SortOrder"),null)),null)%>"/><input type="submit" name="refresh" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Refresh.button",null)),null)%>"/>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% } else { %><tr>
<td class="table_detail w e n s"><% {out.write(localizeISText("monitor_performance.ThereAreNoMeasuredValuesAvailable.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %></table><% printFooter(out); %>
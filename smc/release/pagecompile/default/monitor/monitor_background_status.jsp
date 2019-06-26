<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-BackgroundMonitoring",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Background.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.Configuration.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewBackgroundMonitoringStatus-View",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "10");}
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
<td>
<table cellpadding="0" cellspacing="0" border="0" class="aldi w100">
<tr>
<td class="table_title s"><% {out.write(localizeISText("monitor_background_status.BackgroundMonitoringConfiguration.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description"><% {out.write(localizeISText("monitor_background_status.PageDisplaysMonitoringStatus.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" class="w e s w100">
<tr>
<td colspan="2" class="table_subtitle s"><% {out.write(localizeISText("monitor_background_status.BackgroundMonitoringStatus.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BackgroundMonitoringRunning"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor_background_status.MonitoringPipelineIsCurrentlyRunning.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("monitor_background_status.MonitoringPipelineIsNotRunning.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td colspan="2" align="left" class="n">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BackgroundMonitoringRunning"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><input type="button" onClick="location.href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-Stop",null)))),null)%>';" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor_background_status.Stop.button",null)),null)%>"/><% } else { %><input type="button" onClick="location.href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-Start",null)))),null)%>';" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor_background_status.Start.button",null)),null)%>"/><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" class="w e s w100">
<tr>
<td colspan="2" class="table_subtitle s"><% {out.write(localizeISText("monitor_background_status.MonitorPipelineConfiguration.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2">
<table cellpadding="0" cellspacing="3" border="0">
<tr>
<td><% URLPipelineAction action52 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));String site52 = null;String serverGroup52 = null;String actionValue52 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null);if (site52 == null){  site52 = action52.getDomain();  if (site52 == null)  {      site52 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup52 == null){  serverGroup52 = action52.getServerGroup();  if (serverGroup52 == null)  {      serverGroup52 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));out.print("\"");out.print(" name=\"");out.print("DomainName");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue52, site52, serverGroup52,true)); %><table cellpadding="0" cellspacing="3" border="0">
<colgroup>
<col width="150"/>
<col width="350"/>
<col width="60"/>
</colgroup>
<tr>
<td class="table_detail"><% {out.write(localizeISText("monitor_background_status.SelectDomain.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail">
<input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
<input type="hidden" name="TimeOut" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TimeOut"),null)),null)%>"/>
<select name="DomainName" size=1 class="select inputfield_en"><% while (loop("DomainNames",null,null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainNames"),null)),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DomainNames"),null).equals(context.getFormattedValue(getObject("DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %> selected="selected"<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("DomainNames"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr>
<td><% URLPipelineAction action53 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));String site53 = null;String serverGroup53 = null;String actionValue53 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null);if (site53 == null){  site53 = action53.getDomain();  if (site53 == null)  {      site53 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup53 == null){  serverGroup53 = action53.getServerGroup();  if (serverGroup53 == null)  {      serverGroup53 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));out.print("\"");out.print(" name=\"");out.print("PipelineName");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue53, site53, serverGroup53,true)); %><table cellpadding="0" cellspacing="3" border="0">
<colgroup>
<col width="150"/>
<col width="350"/>
<col width="60"/>
</colgroup>
<tr>
<td class="table_detail"><% {out.write(localizeISText("monitor_background_status.SelectPipeline.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="table_detail">
<input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
<input type="hidden" name="DomainName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainName"),null)),null)%>"/>
<input type="hidden" name="TimeOut" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TimeOut"),null)),null)%>"/>
<select name="PipelineName" size=1 class="select inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PipelineName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><option selected="selected">&gt;&gt; <% {out.write(localizeISText("monitor_background_status.SelectPipeline.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% while (loop("PipelineNames",null,null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("PipelineNames"),null)),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineNames"),null).equals(context.getFormattedValue(getObject("PipelineName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %> selected="selected"<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("PipelineNames"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr>
<td><% URLPipelineAction action54 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));String site54 = null;String serverGroup54 = null;String actionValue54 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null);if (site54 == null){  site54 = action54.getDomain();  if (site54 == null)  {      site54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup54 == null){  serverGroup54 = action54.getServerGroup();  if (serverGroup54 == null)  {      serverGroup54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));out.print("\"");out.print(" name=\"");out.print("StartNodeName");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue54, site54, serverGroup54,true)); %><table cellpadding="0" cellspacing="3" border="0">
<colgroup>
<col width="150"/>
<col width="350"/>
<col width="60"/>
</colgroup>
<tr>
<td class="table_detail"><% {out.write(localizeISText("monitor_background_status.StartNode.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="hidden" name="DomainName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainName"),null)),null)%>"/><input type="hidden" name="PipelineName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("PipelineName"),null)),null)%>"/><input type="hidden" name="TimeOut" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TimeOut"),null)),null)%>"/>
<select name="StartNodeName" size=1 class="select inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("StartNodeName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><option selected="selected">&gt;&gt; <% {out.write(localizeISText("monitor_background_status.SelectStartNode.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% while (loop("StartNodeNames",null,null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("StartNodeNames"),null)),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("StartNodeNames"),null).equals(context.getFormattedValue(getObject("StartNodeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %> selected="selected"<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("StartNodeNames"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr>
<td><% URLPipelineAction action55 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));String site55 = null;String serverGroup55 = null;String actionValue55 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null);if (site55 == null){  site55 = action55.getDomain();  if (site55 == null)  {      site55 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup55 == null){  serverGroup55 = action55.getServerGroup();  if (serverGroup55 == null)  {      serverGroup55 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-UpdateView",null)))),null));out.print("\"");out.print(" name=\"");out.print("TimeOut");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue55, site55, serverGroup55,true)); %><table cellpadding="0" cellspacing="3" border="0">
<colgroup>
<col width="150"/>
<col width="350"/>
<col width="60"/>
</colgroup>
<tr>
<td class="table_detail"><% {out.write(localizeISText("monitor_background_status.TimeoutInMinutes.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="hidden" name="DomainName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainName"),null)),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PipelineName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><input type="hidden" name="PipelineName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("PipelineName"),null)),null)%>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartNodeName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %><input type="hidden" name="StartNodeName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("StartNodeName"),null)),null)%>"/><% } %><input name="TimeOut" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TimeOut"),null)),null)%>" size="3" class="inputfield_en"/>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" align="left" class="n"><% URLPipelineAction action56 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-Configure",null)))),null));String site56 = null;String serverGroup56 = null;String actionValue56 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-Configure",null)))),null);if (site56 == null){  site56 = action56.getDomain();  if (site56 == null)  {      site56 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup56 == null){  serverGroup56 = action56.getServerGroup();  if (serverGroup56 == null)  {      serverGroup56 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBackgroundMonitoringStatus-Configure",null)))),null));out.print("\"");out.print(" name=\"");out.print("ApplyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue56, site56, serverGroup56,true)); %><table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="hidden" name="DomainName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainName"),null)),null)%>"/><input type="hidden" name="PipelineName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("PipelineName"),null)),null)%>"/><input type="hidden" name="StartNodeName" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("StartNodeName"),null)),null)%>"/><input type="hidden" name="TimeOut" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TimeOut"),null)),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DomainName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PipelineName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("StartNodeName")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %><input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/><% } else { %><input type="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/><% } %></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
</td>
</tr> 
</table>
<!-- /Main Content --><% printFooter(out); %>
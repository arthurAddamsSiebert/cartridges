<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CompletedCount", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RunningCount", temp_obj);} %><% while (loop("Processes","Process",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("RunningCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RunningCount", temp_obj);} %> 
<% } else { %><% {Object temp_obj = ((new Double( ((Number) getObject("CompletedCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CompletedCount", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() || ((Boolean) ((( ((Number) getObject("RunningCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% } else { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>'", 10000)
</script><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedMenuItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("ChannelCatalogs",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-ChannelCatalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("batchprocessesmonitor.channelcatalogs",null)))}, 20); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedMenuItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("ContentOverview",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("batchprocessesmonitor.content",null)))}, 22); %> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedMenuItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("MassDataTasks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-ChannelMassData",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("batchprocessesmonitor.massdatatasks",null)))}, 24); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedMenuItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("OnlineMarketing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("batchprocessesmonitor.marketing",null)))}, 26); %> 
<% }}}} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("batchprocessesmonitor.title",null)))}, 28); %><!-- main content --><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 31); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="3"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.running.title")}, 34); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RunningCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="stickyHeader">
<thead>
<tr>
<th class="table_header e w s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.description")}, 42); %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.start")}, 43); %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.status")}, 44); %></th>
</tr>
</thead>
<tbody><% while (loop("Processes","Process",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s">
<!-- The last execution time is when the persistent attribute status is set to running --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.status.pending")}, 62); %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:ProgressValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("Process:CurrentProcess:ProgressValue")),
new TagParameter("key","batchprocessesmonitor.status.processed"),
new TagParameter("parameter1",getObject("Process:CurrentProcess:ProgressSize"))}, 65); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:ProgressSize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("Process:CurrentProcess:ProgressSize")),
new TagParameter("key","batchprocessesmonitor.status.processing")}, 67); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.status.running")}, 69); %><% }} %><% } %></td>
</tr><% } %><% } %><tr>
<td colspan="3" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% URLPipelineAction action641 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));String site641 = null;String serverGroup641 = null;String actionValue641 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null);if (site641 == null){  site641 = action641.getDomain();  if (site641 == null)  {      site641 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup641 == null){  serverGroup641 = action641.getServerGroup();  if (serverGroup641 == null)  {      serverGroup641 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue641, site641, serverGroup641,true)); %><input type="submit" name="refresh" value="<% {out.write(localizeISText("batchprocessesmonitor.button.refresh","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/><% out.print("</form>"); %></td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.running.emptylist")}, 94); %></td>
</tr>
</table><% } %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="6"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.completed.title")}, 103); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("ProcessUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><tr>
<td colspan="6"><% URLPipelineAction action642 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));String site642 = null;String serverGroup642 = null;String actionValue642 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null);if (site642 == null){  site642 = action642.getDomain();  if (site642 == null)  {      site642 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup642 == null){  serverGroup642 = action642.getServerGroup();  if (serverGroup642 == null)  {      serverGroup642 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue642, site642, serverGroup642,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","6"),
new TagParameter("iterator",getObject("ProcessUUIDs")),
new TagParameter("hiddenname","ProcessUUID"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("JobNamePrefix")),
new TagParameter("subject","processe"),
new TagParameter("parametervalue1",getObject("ApplicationState:ChannelID")),
new TagParameter("parametername2","JobNamePrefix"),
new TagParameter("cancelbtnname","refresh"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 110); %></table> 
<% out.print("</form>"); %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("ProcessUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","6"),
new TagParameter("subject","processe"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ProcessList_52.YouHaveNotSelectedAnyBatchProcessToBeDelete.message",null)))}, 117); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CompletedCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %> 
<tr>
<td colspan="6"><% URLPipelineAction action643 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));String site643 = null;String serverGroup643 = null;String actionValue643 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null);if (site643 == null){  site643 = action643.getDomain();  if (site643 == null)  {      site643 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup643 == null){  serverGroup643 = action643.getServerGroup();  if (serverGroup643 == null)  {      serverGroup643 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));out.print("\"");out.print(" name=\"");out.print("CompletedProcessListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue643, site643, serverGroup643,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="stickyHeader">
<thead>
<tr>
<td colspan="7" class="w e s" align="right">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_BATCH_PROCESSES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><td class="button button-padding-large"> 
<input type="submit" name="confirmDelete" value="<% {out.write(localizeISText("batchprocessesmonitor.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td><% } %><td>
<input type="submit" name="refresh" value="<% {out.write(localizeISText("batchprocessesmonitor.button.refresh","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_BATCH_PROCESSES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><th>
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" width="85">
<tr>
<td nowrap="nowrap" class="table_header w s center" />
<a href="javascript:selectAll('CompletedProcessListForm','ProcessUUID','A','B');" class="tableheader"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.selectall")}, 154); %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" width="85">
<tr>
<td nowrap="nowrap" class="table_header w s center">
<a href="javascript:selectAll('CompletedProcessListForm','ProcessUUID','A','B');" class="tableheader"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.clearall")}, 163); %></a>
</td>
</tr>
</table>
</div>
</th><% } %><th class="table_header w e s" nowrap="nowrap" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.description")}, 170); %></th>
<th class="table_header e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOrder"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue("LastExecutionTime",null)).addURLParameter(context.getFormattedValue("SortingOrder",null),context.getFormattedValue("true",null))),null)%>"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.start")}, 173); %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue("LastExecutionTime",null)).addURLParameter(context.getFormattedValue("SortingOrder",null),context.getFormattedValue("false",null))),null)%>"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.start")}, 175); %></a><% } %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.author")}, 178); %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.duration")}, 179); %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.header.status")}, 180); %></th>
<th class="table_header e s">&nbsp;</th>
</tr>
</thead>
<tbody><% while (loop("Processes","Process",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() !=((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_BATCH_PROCESSES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %><td class="w s center top"><input type="checkbox" name="ProcessUUID" value="<%=context.getFormattedValue(getObject("Process:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProcessUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %><% while (loop("ProcessUUIDs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("Process:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",189);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/></td><% } %><td class="table_detail w e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:AdditionalLogInformationAvailable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProcessList_52.AdditionalLogInformationAvailable.alt",null)),null)%>" border="0"/><% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:User:Profile:DataSheet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Process:CurrentProcess:User:Profile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:CurrentProcess:User:Profile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionDuration"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.duration.seconds")}, 194); %></td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "processstatus", new TagParameter[] {
new TagParameter("job",getObject("Process"))}, 195); %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Process:CurrentProcessIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Statistics",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("Process:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.viewlog.link")}, 196); %></a><% } %></td>
</tr><% } %><% } %></tbody>
</table><% out.print("</form>"); %></td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","batchprocessesmonitor.completed.emptylist")}, 207); %></td>
</tr><% } %></table><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ProcessList_52", null, "212");} %><!-- EO Working Area --> <% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 2); %><!-- Working Area --><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CompletedCount", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RunningCount", temp_obj);} %><% while (loop("Processes","Process",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("RunningCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RunningCount", temp_obj);} %><% } else { %><% {Object temp_obj = ((new Double( ((Number) getObject("CompletedCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CompletedCount", temp_obj);} %> 
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() || ((Boolean) ((( ((Number) getObject("RunningCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% } else { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelCatalogs",null))),null)%>'", 10000)
</script><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProcessList_32.BatchProcesses.text",null)))}, 22); %><!-- main content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="3"><% {out.write(localizeISText("ProcessList_32.BatchProcessesInProgress.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr><td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" height="2" width="1"/></td></tr> 
</table> 
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RunningCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><tr>
<td colspan="3">
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="stickyHeader">
<thead>
<tr>
<th class="table_header e w s" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.Start.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr>
</thead>
<tbody><% while (loop("Processes","Process",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s">
<!-- The last execution time is when the persistent attribute status is set to running --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProcessList_32.Pending.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:ProgressValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProcessList_32.0Of1ItemsProcessed.table_detail",null,null,context.getFormattedValue(getObject("Process:CurrentProcess:ProgressValue"),null),context.getFormattedValue(getObject("Process:CurrentProcess:ProgressSize"),null),null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:ProgressSize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProcessList_32.Processing0Items.table_detail",null,null,context.getFormattedValue(getObject("Process:CurrentProcess:ProgressSize"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProcessList_32.Running.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %><% } %></td>
</tr><% } %><% } %></tbody>
</table>
</td>
</tr> 
<% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProcessList_32.ThereAreNoRunningBatchProcessesInThisChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="6"><% {out.write(localizeISText("ProcessList_32.CompletedBatchProcesses.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="6">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr><td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" height="2" width="1"/></td></tr> 
</table> 
</td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("ProcessUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td colspan="6"><% URLPipelineAction action309 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Dispatch",null)))),null));String site309 = null;String serverGroup309 = null;String actionValue309 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Dispatch",null)))),null);if (site309 == null){  site309 = action309.getDomain();  if (site309 == null)  {      site309 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup309 == null){  serverGroup309 = action309.getServerGroup();  if (serverGroup309 == null)  {      serverGroup309 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue309, site309, serverGroup309,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedMenuItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><input type="hidden" name="SelectedMenuItem" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","6"),
new TagParameter("iterator",getObject("ProcessUUIDs")),
new TagParameter("hiddenname","ProcessUUID"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("JobNamePrefix")),
new TagParameter("subject","processe"),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("parametername2","JobNamePrefix"),
new TagParameter("cancelbtnname","refresh"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 106); %> 
</table><% out.print("</form>"); %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("ProcessUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","6"),
new TagParameter("subject","processe"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ProcessList_32.YouHaveNotSelectedAnyBatchProcessToBeDeleted.message",null)))}, 113); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CompletedCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %> 
<tr>
<td colspan="6"><% URLPipelineAction action310 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Dispatch",null)))),null));String site310 = null;String serverGroup310 = null;String actionValue310 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Dispatch",null)))),null);if (site310 == null){  site310 = action310.getDomain();  if (site310 == null)  {      site310 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup310 == null){  serverGroup310 = action310.getServerGroup();  if (serverGroup310 == null)  {      serverGroup310 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CompletedProcessListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue310, site310, serverGroup310,true)); %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="stickyHeader">
<thead>
<tr>
<td align="left" colspan="7" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_BATCH_PROCESSES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><td class="button button-padding-large">
<input type="hidden" name="SelectedMenuItem" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="JobNamePrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobNamePrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProcessList_32.Delete.button",null)),null)%>" class="button"/>
</td><% } %><td>
<input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProcessList_32.Refresh.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_BATCH_PROCESSES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><th>
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" width="85">
<tr>
<td nowrap="nowrap" class="table_header w s center">
<a href="javascript:selectAll('CompletedProcessListForm','ProcessUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProcessList_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" width="85">
<tr>
<td nowrap="nowrap" class="table_header w s center">
<a href="javascript:selectAll('CompletedProcessListForm','ProcessUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProcessList_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</th><% } %><th class="table_header w e s" nowrap="nowrap" width="100%"><% {out.write(localizeISText("ProcessList_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOrder"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue("LastExecutionTime",null)).addURLParameter(context.getFormattedValue("SortingOrder",null),context.getFormattedValue("true",null))),null)%>"><% {out.write(localizeISText("ProcessList_32.Start.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue("LastExecutionTime",null)).addURLParameter(context.getFormattedValue("SortingOrder",null),context.getFormattedValue("false",null))),null)%>"><% {out.write(localizeISText("ProcessList_32.Start.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.CreatedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.Duration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s">&nbsp;</th>
</tr>
</thead>
<tbody><% while (loop("Processes","Process",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() !=((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_BATCH_PROCESSES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><td class="w s center top">
<input type="checkbox" name="ProcessUUID" value="<%=context.getFormattedValue(getObject("Process:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProcessUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><% while (loop("ProcessUUIDs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("Process:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",183);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
</td><% } %><td class="table_detail w e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:AdditionalLogInformationAvailable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProcessList_32.AdditionalLogInformationAvailable.alt",null)),null)%>" border="0"/><% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:User:Profile:DataSheet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Process:CurrentProcess:User:Profile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:CurrentProcess:User:Profile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {out.write(localizeISText("ProcessList_32.0Seconds.table_detail",null,null,context.getFormattedValue(getObject("Process:LastExecutionDuration"),null),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "processstatus", new TagParameter[] {
new TagParameter("job",getObject("Process"))}, 191); %></td> 
<td class="table_detail e s top" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-Statistics",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("Process:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="selection_link"><% {out.write(localizeISText("ProcessList_32.ViewLog.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td> 
</tr><% } %><% } %></tbody>
</table><% out.print("</form>"); %> 
</td>
</tr> 
<% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProcessList_32.ThereAreNoCompletedBatchProcessesInThisChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% URLPipelineAction action311 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null)))),null));String site311 = null;String serverGroup311 = null;String actionValue311 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null)))),null);if (site311 == null){  site311 = action311.getDomain();  if (site311 == null)  {      site311 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup311 == null){  serverGroup311 = action311.getServerGroup();  if (serverGroup311 == null)  {      serverGroup311 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_32-ListAll",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue311, site311, serverGroup311,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="JobNamePrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobNamePrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedMenuItem" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProcessList_32.Refresh.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- EO Working Area --><% printFooter(out); %>
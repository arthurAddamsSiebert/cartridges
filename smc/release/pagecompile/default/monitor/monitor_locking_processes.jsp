<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_locking_breadcrumb", null, "8");} %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {out.write(localizeISText("monitor.Processes.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorText"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<table width="100%" border="0" cellspacing="0" cellpadding="4" class="error_box">
<tr>
<td class="error_icon s e w" width="10">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0" />
</td>
<td class="error s e"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("UnparseableTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor_locking_processes.UnparseableTime.fielditem2_error","",null,getObject("ErrorInput"),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("UnparseableDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor_locking_processes.UnparseableDate.fielditem2_error","",null,getObject("ErrorInput"),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("monitor_locking_processes.ErrorDuringTimeCalculation.fielditem2_error","",null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
</table>
<tr><% } %><tr>
<td class="table_title_description w e" width="100%"><% {out.write(localizeISText("monitor_locking_processes.DisplayProcessesOfACertainPeriod.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action42 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site42 = null;String serverGroup42 = null;String actionValue42 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site42 == null){  site42 = action42.getDomain();  if (site42 == null)  {      site42 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup42 == null){  serverGroup42 = action42.getServerGroup();  if (serverGroup42 == null)  {      serverGroup42 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("FindProcess");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue42, site42, serverGroup42,true)); %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox aldi">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_processes.ProcessSearch.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("monitor.Name.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>: <input type="text" name="ProcessNameSearchString" class="inputfield_en" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessBarControl:ProcessNameSearchString"),null)),null)%>"/></td>
<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;<% {out.write(localizeISText("monitor.State.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<select class="select inputfield_en" name="ProcessStateSearchString"><% while (loop("ProcessBarControl:AvailableProcessStates","ProcessState",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessState"),null).equals(context.getFormattedValue(getObject("ProcessBarControl:ProcessStateSearchString"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %> selected="selected"<% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessState"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>&nbsp;<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %></select>
</td>
<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;<% {out.write(localizeISText("monitor.Type.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<select class="select inputfield_en" name="ProcessTypeSearchString"><% while (loop("ProcessBarControl:AvailableProcessTypes","ProcessType",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue(getObject("ProcessBarControl:ProcessTypeSearchString"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %> selected="selected"<% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_processes.PeriodFrom.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" height="1" width="2" alt=""/></td>
</tr>
<tr>
<td class="fielditem_comment">&nbsp;</td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PeriodStartDate"),
new TagParameter("DateObject",getObject("ProcessBarControl:PeriodStartDate"))}, 83); %><td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="text" maxlength=16 size=11 name="PeriodStartTime" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodStartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" height="1" width="30" alt=""/><input type="radio" name="TimeSelection" value="dateTimePicker" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TimeSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeSelection"),null).equals(context.getFormattedValue("dateTimePicker",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>checked="checked"<% } %><% } else { %>checked="checked"<% } %>/><td>
</tr>
<tr>
<td class="fielditem_comment">&nbsp;</td>
</tr>
</table>
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;to:<td>
</tr>
<tr>
<td class="fielditem_comment">&nbsp;</td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PeriodEndDate"),
new TagParameter("DateObject",getObject("ProcessBarControl:PeriodEndDate"))}, 116); %><td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="text" maxlength=16 size=11 name="PeriodEndTime" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodEndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td colspan="10"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="5">&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" height="1" width="30" alt=""/><input type="radio" name="TimeSelection" value="interval" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TimeSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeSelection"),null).equals(context.getFormattedValue("interval",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %>/></td>
<td class="infobox_item">&nbsp;&nbsp;interval:&nbsp;</td>
<td class="infobox_item">
<select name="TimeInterval" class="select">
<option value="30" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("TimeInterval")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("30",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>selected="selected"<% } %>>30 min.</option>
<option value="60" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("60",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>selected="selected"<% } %>>1 hour</option>
<option value="360" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("360",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>selected="selected"<% } %>>6 hours</option>
<option value="1440" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("1440",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>selected="selected"<% } %>>1 day</option>
<option value="10080" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("10080",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>selected="selected"<% } %>>1 week</option>
</select>
</td>
<td colspan="3">&nbsp;</td>
<td width="100%">&nbsp;</td>
<td><table border="0" cellpadding="0" cellspacing="0"><tr><td class="button"><input type="submit" name="find" value="Find" class="button"/></td></tr></table></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap">Name</td>
<td class="table_header table_header_process_list e s" nowrap="nowrap"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td align="left"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodStartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodStartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td align="right"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodEndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodEndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td></tr></table></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProcessBarControl:ProcessBarControlElements") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><% while (loop("ProcessBarControl:ProcessBarControlElements","ProcessBarControlElement",null)) { %><tr>
<td class="table_detail w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessID",null),context.getFormattedValue(getObject("ProcessBarControlElement:ModelObject:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ModelObject:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s" width="427" nowrap="nowrap"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" height="10" width="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessBarControlElement:LeftSpaceSize"),null)),null)%>" alt=""/><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/pbar_<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ColorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.gif" alt="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessStartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessStartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessEndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessEndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" width="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessBarControlElement:ProcessBarSize"),null)),null)%>" height="10"/></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s">No processes in this period.</td>
<td class="table_detail e s" width="427" nowrap="nowrap">&nbsp;</td>
</tr><% } %><tr>
<td class="table_detail w e s">&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="left"><% URLPipelineAction action43 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site43 = null;String serverGroup43 = null;String actionValue43 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site43 == null){  site43 = action43.getDomain();  if (site43 == null)  {      site43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup43 == null){  serverGroup43 = action43.getServerGroup();  if (serverGroup43 == null)  {      serverGroup43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShiftPrev");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue43, site43, serverGroup43,true)); %><input type="hidden" name="ShiftDirection" value="previous"/>
<input type="submit" name="previous" value=" &lt;&lt; " class="button"/><% out.print("</form>"); %></td>
<td align="right"><% URLPipelineAction action44 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site44 = null;String serverGroup44 = null;String actionValue44 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site44 == null){  site44 = action44.getDomain();  if (site44 == null)  {      site44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup44 == null){  serverGroup44 = action44.getServerGroup();  if (serverGroup44 == null)  {      serverGroup44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShiftNext");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue44, site44, serverGroup44,true)); %><input type="hidden" name="ShiftDirection" value="next"/>
<input type="submit" name="next" value=" &gt;&gt; " class="button"/><% out.print("</form>"); %></td>
</tr>
</table></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProcessBarControl:ModelObjectsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %><% URLPipelineAction action45 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site45 = null;String serverGroup45 = null;String actionValue45 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site45 == null){  site45 = action45.getDomain();  if (site45 == null)  {      site45 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup45 == null){  serverGroup45 = action45.getServerGroup();  if (serverGroup45 == null)  {      serverGroup45 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("DetailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue45, site45, serverGroup45,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ProcessBarControl:ModelObjectsPageable")}, 214); %></td>
</tr>
</table><% out.print("</form>"); %><% } %><!-- End Page Cursor -->
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>
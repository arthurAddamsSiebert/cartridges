<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs --><% {Object temp_obj = ("Scheduling"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/ProcessChainTabs", null, "6");} %><!-- EO Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title w e s n" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("process.chain.scheduling.tab","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("process.chain.schedule.table.description","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("process.chain.schedule.actions.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action705 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSchedule-ProcessDetailAction",null)))),null));String site705 = null;String serverGroup705 = null;String actionValue705 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSchedule-ProcessDetailAction",null)))),null);if (site705 == null){  site705 = action705.getDomain();  if (site705 == null)  {      site705 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup705 == null){  serverGroup705 = action705.getServerGroup();  if (serverGroup705 == null)  {      serverGroup705 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSchedule-ProcessDetailAction",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProcessChainScheduleForm");out.print("\"");out.print(" id=\"");out.print("ProcessChainScheduleForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue705, site705, serverGroup705,true)); %><input type="hidden" name="ProcessChainID" value="<%=context.getFormattedValue(getObject("ProcessChainID"),null)%>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorText"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td class="s" colspan="1">
<table cellpadding="4" cellspacing="0" border="0" width="100%">
<tr>
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="fielditem2_error"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("runtimeOnceParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
Unparseable time: &quot;<%=context.getFormattedValue(getObject("RuntimeOnce"),null)%>&quot;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("runtimeRecurringParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
Unparseable time: &quot;<%=context.getFormattedValue(getObject("Runtime"),null)%>&quot;
<% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ErrorText"),null)),null)%><% }} %></td>
</tr>
</table>
</td>
<tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMap"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><tr>
<td class="s" colspan="1">
<table cellpadding="4" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="fielditem2_error"><% while (loop("ErrorMap:EntrySet","Entry",null)) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Entry:Value"),null)),null)%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><br/><% } %><% } %></td>
</tr>
</table>
</td>
<tr><% } %> 
</table>
<table class="w e s" width="100%" cellspacing="0" cellpadding="5" border="0">
<tbody>
<tr>
<td valign="top" class="label"><label class="label"><% {out.write(localizeISText("process.chain.schedule.enabled","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="w100 input_checkbox"><input type="checkbox" name="EnabledFlag" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="1" /></td>
</tr>
<tr>
<td valign="top" class="label"><label class="label"><% {out.write(localizeISText("process.chain.schedule.active","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table cellspacing="0" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDate"),
new TagParameter("Readonly",(((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("DateObject",getObject("StartDate"))}, 78); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDate"),
new TagParameter("Readonly",(((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("DateObject",getObject("CurrentDate"))}, 80); %><% } %><td class="fielditem2">to</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDate"),
new TagParameter("Readonly",(((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("DateObject",getObject("EndDate"))}, 84); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDate"),
new TagParameter("Readonly",(((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("DateObject","")}, 86); %><% } %></tr>
</table>
</td> 
</tr>
<tr>
<td class="label"><label class="label"><% {out.write(localizeISText("process.chain.schedule.runtime","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table cellspacing="0" cellpadding="0" border="0">
<tr> 
<td><input type="text" name="Runtime" maxlength=16 size=10 value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Runtime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Runtime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="inputfield_en" style="width: 100px;"/></td>
<td></td>
</tr>
<tr>
<td class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td></td>
</tr>
</table>
</td>
</tr>
<tr>
<td> 
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="input_radio " width="1">
<input type="radio" name="RecurrencePattern" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/> 
</td>
<td class="label_radio_text ">
<label class="label label_radio_text label_light"><% {out.write(localizeISText("process.chain.schedule.every","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
</tr>
</table>
</td>
<td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td><input type="text" name="Interval" maxlength=10 size=10 value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Interval"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Interval"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>60<% } %>" class="inputfield_en" style="width: 100px;"/></td>
<td>&nbsp;
<select name="Unit"class="inputfield_en" style="width: 100px;" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
<option value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>selected<% } %>
><% {out.write(localizeISText("process.chain.schedule.minutes","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>selected<% } %>
><% {out.write(localizeISText("process.chain.schedule.hours","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>selected<% } %>
><% {out.write(localizeISText("process.chain.schedule.days","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="4"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>selected<% } %>
><% {out.write(localizeISText("process.chain.schedule.weeks","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="5"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>selected<% } %>
><% {out.write(localizeISText("process.chain.schedule.months","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="6"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>selected<% } %>
><% {out.write(localizeISText("process.chain.schedule.years","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="input_radio " width="1">
<input type="radio" name="RecurrencePattern" value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="label_radio_text ">
<label class="label label_radio_text label_light"><% {out.write(localizeISText("process.chain.schedule.days","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
</tr>
</table>
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="input_checkbox"><input type="checkbox" name="day0" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day0"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.monday","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_checkbox"><input type="checkbox" name="day1" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day1"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.thuesday","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="input_checkbox"><input type="checkbox" name="day2" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day2"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.wednesday","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="input_checkbox"><input type="checkbox" name="day3" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day3"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.thursday","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" name="day4" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day4"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.friday","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="input_checkbox"><input type="checkbox" name="day5" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day5"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.saturday","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="input_checkbox"><input type="checkbox" name="day6" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day6"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %>checked="checked" <% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light"><% {out.write(localizeISText("process.chain.schedule.sunday","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr> 
<tr> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PROCESS_CHAINS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<button name="save" value="Apply" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% {out.write(localizeISText("process.chain.schedule.apply","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</td>
</tr>
</table><% } %> 
</td>
</tr>
</table>
</tr>
</tbody>
</table> 
<% out.print("</form>"); %><% URLPipelineAction action706 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));String site706 = null;String serverGroup706 = null;String actionValue706 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null);if (site706 == null){  site706 = action706.getDomain();  if (site706 == null)  {      site706 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup706 == null){  serverGroup706 = action706.getServerGroup();  if (serverGroup706 == null)  {      serverGroup706 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("BackForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue706, site706, serverGroup706,true)); %><table border="0" cellspacing="0" cellpadding="0" class="wrapper">
<tr> 
<td align="left" class="w100"><input type="submit" class="button" value="&lt;&lt;&nbsp;<% {out.write(localizeISText("process.chain.params.backToList",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="back" /></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>
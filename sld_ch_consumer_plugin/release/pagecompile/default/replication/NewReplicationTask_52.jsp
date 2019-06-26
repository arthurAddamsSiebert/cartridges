<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewReplicationTask_52.NewReplicationTask.text",null)))}, 3); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("NewReplicationTask_52.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewReplicationTask_52.Comments.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewReplicationTask_52.ReplicationGroups.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewReplicationTask_52.StatusHistory.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"NewReplicationTask_52", null, "11");} %><td width="100%" class="s"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt=""
border="0" />
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewReplicationTask_52.NewReplicationTask.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorDueTime")))).booleanValue() || ((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) getObject("CreateTask:StartDateTime:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
border="0" />
</td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewReplicationTask_52.ReplicationTaskCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorStartTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask_52.StartDateIsNotValidPleaseProvideAValidStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorDueTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask_52.DueDateIsNotValidPleaseProvideAValidDueDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateDay:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask_52.StartDayIsMandatoryPleaseProvideAStartDay.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateTime:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask_52.StartTimeIsMandatoryPleaseProvideAStartTime.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br /><% } %></td>
</tr>
</table><% } %><!-- EO errors-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewReplicationTask_52.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br /> <br /><% {out.write(localizeISText("NewReplicationTask_52.ApplyToSaveTheDetailsCancelToStop.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action157 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null));String site157 = null;String serverGroup157 = null;String actionValue157 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null);if (site157 == null){  site157 = action157.getDomain();  if (site157 == null)  {      site157 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup157 == null){  serverGroup157 = action157.getServerGroup();  if (serverGroup157 == null)  {      serverGroup157 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue157, site157, serverGroup157,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%"
class="w e s">
<tr>
<td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="4" alt="" border="0" />
</td>
</tr><%
		    Long time = new Long(System.currentTimeMillis());
		    getPipelineDictionary().put("TaskID", time.toString());
		%><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewReplicationTask_52.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreateTask:TaskID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><input type="text" name="CreateTask_TaskID" maxlength="400"
size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:TaskID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="inputfield_en" readonly="readonly" /><% } else { %><input type="text" name="CreateTask_TaskID" maxlength="400"
size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TaskID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"
readonly="readonly" /><% } %></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewReplicationTask_52.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%" colspan="5"><textarea
rows="5" cols="70" name="CreateTask_Description"
class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("StartTime")); getPipelineDictionary().put("CurrentDate", temp_obj);} %><% } %><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateDay"),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductStatusDetail.StartDate.table_detail",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:StartDateDay:Value")),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 95); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateTime"),
new TagParameter("TimeString",getObject("CreateTask:StartDateTime:Value")),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 104); %></tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateDay"),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("sld_enterprise_app.DueDate.DateInputFieldLabel",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:DueDateDay:Value")),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 114); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateTime"),
new TagParameter("TimeString",getObject("CreateTask:DueDateTime:Value")),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 123); %></tr>
<tr>
<td colspan="6" class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="DatePattern"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><input
type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask_52.Apply.button",null)),null)%>" class="button" />
</td>
<td class="button"><input type="hidden" name="DefaultButton"
value="Create" /><input type="submit" name="Cancel"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask_52.Cancel.button",null)),null)%>" class="button" />
</td>
</tr>
</table></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-New",null))))),
new TagParameter("id","newReplicationTask"),
new TagParameter("text",localizeText(context.getFormattedValue("NewReplicationTask.NewReplicationTask.text",null)))}, 3); %><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTaskTabs", null, "6");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewReplicationTask.NewReplicationTask.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorDueTime")))).booleanValue() || ((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) getObject("CreateTask:StartDateTime:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewReplicationTask.ReplicationTaskCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorStartTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask.StartDateIsNotValidPleaseProvideAValidStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorDueTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask.DueDateIsNotValidPleaseProvideAValidDueDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateDay:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask.StartDayIsMandatoryPleaseProvideAStartDay.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateTime:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewReplicationTask.StartTimeIsMandatoryPleaseProvideAStartTime.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table><% } %><!-- EO errors-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewReplicationTask.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action222 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-Dispatch",null)))),null));String site222 = null;String serverGroup222 = null;String actionValue222 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-Dispatch",null)))),null);if (site222 == null){  site222 = action222.getDomain();  if (site222 == null)  {      site222 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup222 == null){  serverGroup222 = action222.getServerGroup();  if (serverGroup222 == null)  {      serverGroup222 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue222, site222, serverGroup222,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="6" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><%
			Long time = new Long(System.currentTimeMillis());
			getPipelineDictionary().put("TaskID", time.toString());
		%><tr>
<td nowrap="nowrap" class="label"><label class="label" for="CreateTask_TaskID"><% {out.write(localizeISText("NewReplicationTask.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreateTask:TaskID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><input type="text" name="CreateTask_TaskID" id="CreateTask_TaskID" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:TaskID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" readonly="readonly"/><% } else { %><input type="text" name="CreateTask_TaskID" id="CreateTask_TaskID" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TaskID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" readonly="readonly"/><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreateTask_Description"><% {out.write(localizeISText("NewReplicationTask.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%" colspan="5"><textarea rows="5" cols="70" name="CreateTask_Description" id="CreateTask_Description" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateDay"),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductStatusDetail.StartDate.table_detail",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:StartDateDay:Value")),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 61); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateTime"),
new TagParameter("TimeString",getObject("CreateTask:StartDateTime:Value")),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 70); %></tr>
<tr> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateDay"),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("sld_enterprise_app.DueDate.DateInputFieldLabel",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:DueDateDay:Value")),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 80); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateTime"),
new TagParameter("TimeString",getObject("CreateTask:DueDateTime:Value")),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 89); %></tr>
<tr>
<td colspan="6" class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="hidden" name="DefaultButton" value="Create"/>
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>
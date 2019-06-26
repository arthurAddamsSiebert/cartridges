<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>popcalendar-1.6.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>auditing.js<% out.print("</waplacement>"); %><div id="auditing-report" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>class="invalid"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-ChannelMassData",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AuditReportForm.MassDataTasks.text",null)))}, 11); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AuditReportForm.AuditReport.text",null)))}, 12); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MassData",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AuditReportForm.MassDataTasks.text1",null)))}, 14); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Paging",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AuditReportForm.AuditReport.text1",null)))}, 15); %><% } %><% URLPipelineAction action298 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Generate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuditReportForm_submit",null),context.getFormattedValue("true",null)))),null));String site298 = null;String serverGroup298 = null;String actionValue298 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Generate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuditReportForm_submit",null),context.getFormattedValue("true",null)))),null);if (site298 == null){  site298 = action298.getDomain();  if (site298 == null)  {      site298 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup298 == null){  serverGroup298 = action298.getServerGroup();  if (serverGroup298 == null)  {      serverGroup298 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Generate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuditReportForm_submit",null),context.getFormattedValue("true",null)))),null));out.print("\"");out.print(" class=\"");out.print("auditing_report_form");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("AuditReportForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue298, site298, serverGroup298,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("AuditReportForm.AuditReport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ApplicationBO:Configuration:getBoolean(\"intershop.auditing.enable\",\"(Boolean)false\")"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="information w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%"><% {out.write(localizeISText("AuditReportForm.NoteAuditingHasBeenDisabledNoNewAuditMessagesWillB",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:StartDate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% while (loop("AuditReportForm:StartDate:Errors","Error",null)) { %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("auditReportForm.StartDate.",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:EndDate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% while (loop("AuditReportForm:EndDate:Errors","Error",null)) { %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("auditReportForm.EndDate.",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:Application:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><div><% {out.write(localizeISText("AuditReportForm.ContextIsMandatoryPleaseSelectAValidContext",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:UserID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><div><% {out.write(localizeISText("AuditReportForm.UserIdIsMandatoryPleaseSelectAValidUser",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:ObjectType:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><div><% {out.write(localizeISText("AuditReportForm.ObjectTypeIsMandatoryPleaseSelectAValidObjectType",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:ActionType:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><div><% {out.write(localizeISText("AuditReportForm.ActionTypeIsMandatoryPleaseSelectAValidActionType",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("AuditReportForm.UseTheAvailableFiltersToConfigureAndCreateACustomi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("AuthorizedApplications")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditReportForm:Application:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:Application:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown label_error" for="auditreport-multiselect-users"><% {out.write(localizeISText("AuditReportForm.Context.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown" for="auditreport-multiselect-users"><% {out.write(localizeISText("AuditReportForm.Context.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="fielditem"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","AuthorizedApplications"),
new TagParameter("key0","AuditReportForm"),
new TagParameter("value1",getObject("AuthorizedApplications")),
new TagParameter("value0",getObject("AuditReportForm")),
new TagParameter("mapname","params")}, 100); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","auditing/AuditReportFormApplicationDropdown.isml"),
new TagParameter("minwidth","470"),
new TagParameter("classes","auditreport-multiselect-applications"),
new TagParameter("multiple","true"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("AuditReportForm.IslocAllManagementContextsIsloc.noneselectedtext",null))),
new TagParameter("id","auditreport-multiselect-applications"),
new TagParameter("params",getObject("params"))}, 101); %></td>
</tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:UserID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown label_error" for="auditreport-multiselect-users"><% {out.write(localizeISText("AuditReportForm.User.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown" for="auditreport-multiselect-users"><% {out.write(localizeISText("AuditReportForm.User.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="fielditem"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Users"),
new TagParameter("key0","AuditReportForm"),
new TagParameter("value1",getObject("Users")),
new TagParameter("value0",getObject("AuditReportForm")),
new TagParameter("mapname","params")}, 114); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","auditing/AuditReportFormUserDropdown.isml"),
new TagParameter("minwidth","470"),
new TagParameter("classes","auditreport-multiselect-users"),
new TagParameter("multiple","true"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("AuditReportForm.IslocAllUsersIsloc.noneselectedtext",null))),
new TagParameter("id","auditreport-multiselect-users"),
new TagParameter("params",getObject("params"))}, 115); %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:ObjectType:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown label_error" for="auditreport-multiselect-objects"><% {out.write(localizeISText("AuditReportForm.ObjectType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown" for="auditreport-multiselect-objects"><% {out.write(localizeISText("AuditReportForm.ObjectType.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="fielditem"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","AuditReportObjectTypes"),
new TagParameter("key0","AuditReportForm"),
new TagParameter("value1",getObject("AuditReportObjectTypes")),
new TagParameter("value0",getObject("AuditReportForm")),
new TagParameter("mapname","params")}, 127); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","auditing/AuditReportFormObjectDropdown.isml"),
new TagParameter("minwidth","470"),
new TagParameter("classes","auditreport-multiselect-objects"),
new TagParameter("multiple","true"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("AuditReportForm.IslocAllObjectsIsloc.noneselectedtext",null))),
new TagParameter("id","auditreport-multiselect-objects"),
new TagParameter("params",getObject("params"))}, 128); %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AuditReportForm:ActionType:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown label_error" for="auditreport-multiselect-transactions"><% {out.write(localizeISText("AuditReportForm.ActionType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td class="label_uidropdown" nowrap="nowrap"><label class="label label_uidropdown" for="auditreport-multiselect-transactions"><% {out.write(localizeISText("AuditReportForm.ActionType.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td class="fielditem"><% {Object temp_obj = (getObject("ApplicationBO:Repository(\"AuditItemBORepository\")")); getPipelineDictionary().put("AuditItemExtension", temp_obj);} %> 
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","AuditActionTypes"),
new TagParameter("key0","AuditReportForm"),
new TagParameter("value1",getObject("AuditActionTypes")),
new TagParameter("value0",getObject("AuditReportForm")),
new TagParameter("mapname","params")}, 141); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","auditing/AuditReportFormActionDropdown.isml"),
new TagParameter("minwidth","470"),
new TagParameter("classes","auditreport-multiselect-transactions"),
new TagParameter("multiple","true"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("AuditReportForm.IslocAllTransactionsIsloc.noneselectedtext",null))),
new TagParameter("id","auditreport-multiselect-transactions"),
new TagParameter("params",getObject("params"))}, 142); %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AuditReportForm:StartDate:isInvalid")).booleanValue() || ((Boolean) getObject("AuditReportForm:EndDate:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><td class="label_date" nowrap="nowrap"><label class="label label_date label_date_outside label_error" for="<%=context.getFormattedValue(getObject("AuditReportForm:StartDate:QualifiedName"),null)%>"><% {out.write(localizeISText("AuditReportForm.DateRange.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td class="label_date" nowrap="nowrap"><label class="label label_date label_date_outside" for="<%=context.getFormattedValue(getObject("AuditReportForm:StartDate:QualifiedName"),null)%>"><% {out.write(localizeISText("AuditReportForm.DateRange.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td colspan="2" class="fielditem">
<table cellspacing="0" cellpadding="0" border="0" >
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("AuditReportForm:StartDate:QualifiedName")),
new TagParameter("Readonly","false"),
new TagParameter("Required","true"),
new TagParameter("InputFieldEditClass",""),
new TagParameter("DateString",getObject("AuditReportForm:StartDate:FormattedValue")),
new TagParameter("DatePatternUserHint","true"),
new TagParameter("Invalid",getObject("AuditReportForm:StartDate:isInvalid"))}, 155); %><td nowrap="nowrap" class="infobox_item_date" valign="top">-&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("AuditReportForm:EndDate:QualifiedName")),
new TagParameter("Readonly","false"),
new TagParameter("Required","true"),
new TagParameter("InputFieldEditClass",""),
new TagParameter("DateString",getObject("AuditReportForm:EndDate:FormattedValue")),
new TagParameter("DatePatternUserHint","true"),
new TagParameter("Invalid",getObject("AuditReportForm:EndDate:isInvalid"))}, 164); %></tr>
</table>
</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditReportForm:ObjectID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("AuditReportForm.ObjectID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="fielditem">
<input class="inputfield_en" type="input" size="60"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditReportForm:ObjectID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditReportForm:ObjectID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditReportForm:ObjectID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditReportForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AuditReportForm.GenerateReport.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table width="100%" border="0" cellspacing="4" cellpadding="0" class="auditing-report-loading w e s">
<tr>
<td class="infobox_item">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif" alt="<%=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("AuditReportForm.Loading.alt",null)),null) + context.getFormattedValue("...",null),null)%>" width="32" height="32" />
<span><% {out.write(localizeISText("AuditReportForm.Loading",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</span>
<span class="info"><% {out.write(localizeISText("AuditReportForm.NarrowingTheScopeOfYourSearchCriteriaWillImprovePe",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
</td>
</tr>
<tr>
<td class="infobox_item" align="center">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input id="auditreport-cancel-ajax" type="button" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AuditReportForm.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<script language="JavaScript" type="text/javascript">
$('.auditing-report-loading').hide();
</script>
<div id="audit_report_list_container"></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AuditReportForm:Submitted")).booleanValue() && !((Boolean) (getObject("AuditReportForm:Invalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AuditReportForm_submit"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %><% } else { %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"auditing/AuditReportList", null, "234");} %><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AuditReportForm:Submitted"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
$("ul.ui-multiselect-checkboxes > li > label > input").addClass("multiselect-checkbox");
var checkBoxes = $('.multiselect-checkbox');
for (var i = 0; i < checkBoxes.length; i++) {
checkBoxes[i].click();
}
$("button.auditreport-multiselect-applications > span[class!='ui-icon ui-icon-triangle-2-n-s']").html("All Management Contexts");
$("button.auditreport-multiselect-users > span[class!='ui-icon ui-icon-triangle-2-n-s']").html("All Users");
$("button.auditreport-multiselect-objects > span[class!='ui-icon ui-icon-triangle-2-n-s']").html("All Objects");
$("button.auditreport-multiselect-transactions > span[class!='ui-icon ui-icon-triangle-2-n-s']").html("All Transactions");
</script><% } %><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% context.setCustomTagTemplateName("pageletmodelutils","content/inc/PageletModelUtils.isml",true,new String[]{"dummy"},new String[]{"PageletModelUtils"}); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 9); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletAssignment:To:ParentPagelet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletModelUtils:DisplayName(PageletAssignment:To:SlotDefinition,CurrentSession:Locale)")); getPipelineDictionary().put("DisplayName", temp_obj);} %><% } else { %><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("PageletAssignment:To")),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Print","false"),
new TagParameter("NameableDisplayName","DisplayName")}, 14); %><% } %><% {Object temp_obj = (getObject("PageletAssignment:From:Page")); getPipelineDictionary().put("IsPage", temp_obj);} %><% processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("FromClass",getObject("PageletAssignment:From:Class:Name")),
new TagParameter("ContextObject",getObject("PageletAssignment:To")),
new TagParameter("Domain",getObject("PageletAssignment:Domain"))}, 17); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentProperties.SetPriorityAndVisibility.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletAssignment-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletAssignmentUUID",null),context.getFormattedValue(getObject("PageletAssignment:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),
new TagParameter("id",context.getFormattedValue(getObject("PageletAssignment:Pagelet:UUID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("PageletAssignment:To:UUID"),null)),
new TagParameter("text",getObject("DisplayName"))}, 18); %><% {Object temp_obj = ((((context.getFormattedValue(getObject("PageletAssignment:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IsAssignmentEditable", temp_obj);} %><% URLPipelineAction action440 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletAssignment-Dispatch",null)))),null));String site440 = null;String serverGroup440 = null;String actionValue440 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletAssignment-Dispatch",null)))),null);if (site440 == null){  site440 = action440.getDomain();  if (site440 == null)  {      site440 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup440 == null){  serverGroup440 = action440.getServerGroup();  if (serverGroup440 == null)  {      serverGroup440 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PageletAssignmentPropertiesForm");out.print("\"");out.print(" class=\"");out.print("sfe-dialog-entrypoint");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue440, site440, serverGroup440,true)); %><input type="hidden" name="PageletAssignmentUUID" value="<%=context.getFormattedValue(getObject("PageletAssignment:UUID"),null)%>" />
<input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("ContentRepository:UUID"),null)%>" />
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("PageletAssignmentProperties.SetPriorityAndVisibility.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsAssignmentEditable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PageletAssignmentProperties.TheVisibilityCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletAssignmentProperties.PleaseProvideACorrectFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletAssignmentProperties.PleaseProvideACorrectUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletAssignmentProperties.InvalidVisibilityPeriodFromDateMustBeBeforeUntilDa.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %> 
</td>
</tr>
</table> 
<% } %><table border="0" cellspacing="0" cellpadding="4" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PageletAssignmentProperties.SetThePriorityAndVisibilityAndSpecifyWhenTheyShoul.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PositionableHelper:PositionablesCount")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><tr>
<td class="fielditem2"><% {out.write(localizeISText("PageletAssignmentProperties.Priority.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="fielditem2" colspan="8"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsPage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletAssignmentProperties.ThisIsTheOnlyPageItIsAssignedWithTheHighestPriorit.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletAssignmentProperties.ThisIsTheOnlyComponentItIsAssignedWithTheHighestPr.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr> 
<% } else { %><tr>
<td class="fielditem2"><% {out.write(localizeISText("PageletAssignmentProperties.Priority.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="fielditem2" colspan="3"><% processOpenTag(response, pageContext, "getcontentsharinghelper", new TagParameter[] {
new TagParameter("ContentSharingHelper","SharingHelper"),
new TagParameter("RepositoryDomain",getObject("ContentRepository:RepositoryDomain"))}, 81); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsAssignmentEditable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "positionselect", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("CurrentPosition",getObject("PageletAssignment:Position")),
new TagParameter("SelectName","AssignmentPosition"),
new TagParameter("SelectClass","inputfield_en"),
new TagParameter("Positionables",getObject("SharingHelper:LocalAssignments(SortedPageletAssignments)"))}, 83); %><% } else { %><% processOpenTag(response, pageContext, "positionselect", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("CurrentPosition",getObject("PageletAssignment:Position")),
new TagParameter("SelectName","AssignmentPosition"),
new TagParameter("SelectClass","inputfield_en"),
new TagParameter("Positionables",getObject("SortedPageletAssignments"))}, 90); %><% } %></td>
<td class="table_detail" width="30%" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsPage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("PageletAssignmentProperties.Currently0PagesAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } else { %>
(<% {out.write(localizeISText("PageletAssignmentProperties.Currently0ComponentsAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } %></td>
</tr><% } %><tr>
<td colspan="9">&nbsp;</td> 
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio" for=""><% {out.write(localizeISText("PageletAssignmentProperties.Visibility.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_radio">
<input name="AssignmentOnline" id="AssignmentOnline_false" value="false" type="radio" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PageletAssignment:Active"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="label_radio_text" colspan="6"><label class="label label_radio_text" for="AssignmentOnline_false"><% {out.write(localizeISText("PageletAssignmentProperties.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="input_radio label_fix1">
<input name="AssignmentOnline" id="AssignmentOnline_true" value="true" type="radio"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletAssignment:Active"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>checked="checked"<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text" for="AssignmentOnline_true"><% {out.write(localizeISText("PageletAssignmentProperties.Visible.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletAssignment:ValidFrom"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentProperties.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("DateObject",getObject("PageletAssignment:ValidFrom")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 128); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("DateObject",getObject("PageletAssignment:ValidFrom")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 136); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentProperties.From.InputFieldLabel",null))),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 144); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 150); %><% } %></tr>
<tr>
<td class="fielditem2" colspan="3">&nbsp;</td> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldName","ValidTo_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentProperties.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidTo_Day")),
new TagParameter("DateObject",getObject("PageletAssignment:ValidTo")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 160); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldName","ValidTo_Time"),
new TagParameter("TimeString",getObject("ValidTo_Time")),
new TagParameter("DateObject",getObject("PageletAssignment:ValidTo")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 168); %></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="fielditem2 w e s" colspan="8"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentProperties.OK.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsAssignmentEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentProperties.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td> 
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>
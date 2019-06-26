<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Paging",null))))),
new TagParameter("id","productValidation"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductValidationRuleList.ProducCompletenessRules.text",null)))}, 3); %><!-- Main Content -->
<script type="text/javascript">
$(document).ready(function(){
// on edit a validation rule
$('.validation_rule_link').click(function (ev) {
// prevent default link action
ev.preventDefault();
var validationRuleLink = $(this);
var validationRuleID = validationRuleLink.attr('validation_rule_id');
// add validarion rule id as a param
var params = 'ValidationRuleID=' + validationRuleID;
$.ajax({
cache: false,
dataType: 'json',
success: function (data, textStatus, jqXHR) {
if (data) {
// get validation rule base configuration
var validationRuleName = validationRuleLink.attr('validation_rule_name');
var validationRuleActive = validationRuleLink.attr('validation_rule_active');
var validationRuleDescriptorID = validationRuleLink.attr('validation_rule_descriptor_id');
var validationRuleActionID = validationRuleLink.attr('validation_rule_action_id');
// replace .-s with _-s
var validationRuleType = replaceAll('\\.', '_', validationRuleDescriptorID);
var validationRuleAction = replaceAll('\\.', '_', validationRuleActionID);
// get reference to the active rule div
var activeRuleDiv = $('<%=context.getFormattedValue("#",null)%>RuleDescriptorDiv_' + validationRuleType);
// update rule name
$('<%=context.getFormattedValue("#",null)%>ValidationRuleConfigurationForm_RuleName').val(validationRuleName);
// update rule type and make select disabled
$('<%=context.getFormattedValue("#",null)%>ValidationRuleConfigurationForm_RuleType').val(validationRuleType).prop('disabled', 'disabled');
// update rule action
$('<%=context.getFormattedValue("#",null)%>ValidationRuleConfigurationForm_RuleAction').val(validationRuleAction);
// update rule active
if (validationRuleActive === 'true') {
$('<%=context.getFormattedValue("#",null)%>ValidationRuleConfigurationForm_RuleActive').prop('checked', true);
}
// disable all inputs and selects for currently inactive rule divs
$('.RuleDescriptorDiv').each(function () {
if ($(this).attr('id').indexOf(validationRuleType) === -1) {
$(this).find('input,select').each(function () {
$(this).prop('disabled', 'disabled');
});
}
});
// make currently active div visible
activeRuleDiv.show();
// set hidden fields for edit mode
$('<%=context.getFormattedValue("#",null)%>ValidationRuleID').val(validationRuleID);
$('<%=context.getFormattedValue("#",null)%>ValidationRuleDescriptorID').val(validationRuleType);
// trigger onJSONReady event
activeRuleDiv.trigger('onJSONReady', data);
// open the dialog
$('<%=context.getFormattedValue("#",null)%>ProductValidationDialog').dialog('open'); 
}
else {
window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("validationRuleNotAvailable",null),context.getFormattedValue("true",null)))),null)%>';
}
},
url: '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleConfiguration-GetValidationRuleConfiguration",null)))),null)%>',
data: params
});
});
});
</script><% URLPipelineAction action4 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Dispatch",null)))),null));String site4 = null;String serverGroup4 = null;String actionValue4 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Dispatch",null)))),null);if (site4 == null){  site4 = action4.getDomain();  if (site4 == null)  {      site4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup4 == null){  serverGroup4 = action4.getServerGroup();  if (serverGroup4 == null)  {      serverGroup4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productValidationRuleList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue4, site4, serverGroup4,true)); %><input type="hidden" name="SortBy" value="<%=context.getFormattedValue(context.getFormattedValue(getObject("SortBy"),null),null)%>">
<input type="hidden" name="SortDirection" value="<%=context.getFormattedValue(context.getFormattedValue(getObject("SortDirection"),null),null)%>">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="table_title w e n s"><% {out.write(localizeISText("product.validationrules.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("validationRuleNotAvailable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("product.validationrules.rulenotavailable","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><!-- delete confirmation if one is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelProductValidationRuleList.User.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelProductValidationRuleList.DoYouReallyWantToDeleteTheSelectedCompletenessRules.message",null)))}, 103); %><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("product.validationrules.delete.warning.text1","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("product.validationrules.delete.warning.text2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- activate confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("activate")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("product.validationrules.activate.warning.text1","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("product.validationrules.activate.warning.text2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- deactivate confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("deactivate")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("product.validationrules.deactivate.warning.text1","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("product.validationrules.deactivate.warning.text2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("product.validationrules.heading.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductValidationRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("product.validationrules.heading.description.norules","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><tr>
<td align="left" class="w e s">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="button" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationRuleList.New.button",null)),null)%>" class="button" data-action="dialog-open <%=context.getFormattedValue("#",null)%>ProductValidationDialog"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductValidationRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><td width="30">&nbsp;</td>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="activate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationRuleList.Activate.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="deactivate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationRuleList.Deactivate.button",null)),null)%>" class="button"/></td>
<td width="30">&nbsp;</td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationRuleList.Delete.button",null)),null)%>" class="button"/></td> 
<% } %></tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductValidationRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ProductValidationRulePermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortDirection")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortDirection"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("SortBy")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","SortBy"),
new TagParameter("mapname","params")}, 189); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","product/ChannelProductValidationRuleListColumns.isml"),
new TagParameter("configuration","productvalidationrulelist"),
new TagParameter("datatemplate","product/ChannelProductValidationRuleListData.isml"),
new TagParameter("pageable",getObject("ProductValidationRules")),
new TagParameter("id","ProductValidationRuleList"),
new TagParameter("pageablename","ProductValidationRules"),
new TagParameter("params",getObject("params"))}, 196); %><!-- EO Page Cursor -->
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "211");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ChannelProductValidationRule.isml", null, "213");} %><% printFooter(out); %>
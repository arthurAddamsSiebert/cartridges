<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="org.apache.commons.lang.StringUtils"%><%@page import="com.intershop.beehive.core.capi.webform.FormParameter"%><%@page import="java.util.ArrayList"%><%@page import="java.util.HashMap"%><%@page import="com.intershop.beehive.core.capi.webform.Form"%><%@page import="com.intershop.component.foundation.capi.action.ActionDescriptor"%><%@page import="java.util.Iterator"%><%@page import="com.intershop.component.foundation.capi.action.ActionDescriptorRegistry"%><%
	 ArrayList<ActionDescriptor> typeActionDescriptors = new ArrayList<ActionDescriptor>();
	 HashMap<String, String> typesMap = new HashMap<String, String>();
	 
	 String selectedType = null;
	 Form form = getObject("NewActionForm")==null ? (Form) getObject("ActionForm") : (Form) getObject("NewActionForm");
	 if (form!=null) {
	 	FormParameter param = form.getParameter("ActionType");
	 	if (param!=null) selectedType = (String) param.getValue();
	 }
	 
	 ActionDescriptorRegistry reg = (ActionDescriptorRegistry) getObject("ActionDescriptorRegistry");
     Iterator<ActionDescriptor> descriptors = reg.sortDescriptorsByName(reg.getDescriptors()).iterator();
	 
	 // collect descriptor information
	 while (descriptors.hasNext()) {
	 	ActionDescriptor desc = descriptors.next();
	 	if (!desc.isConfigurable(getObject("ContextObject"))) 
	 		continue;		// check if action is configurable
	 	if (selectedType!=null && desc.getType().equals(selectedType)) 
	 		typeActionDescriptors.add(desc);
	 	if (StringUtils.isNotBlank(desc.getType())) 
	 		typesMap.put(desc.getType(), desc.getTypeName());
	 }
	 
	 getPipelineDictionary().put("TypeActionDescriptors", typeActionDescriptors.iterator());
	 getPipelineDictionary().put("ActionTypes", typesMap.keySet().iterator());
	 getPipelineDictionary().put("ActionTypesMap", typesMap);
	 
%><script type="text/javascript">
function preSubmit(event)
{
if (event.keyCode == 13)
{
if (document.DiscountRuleForm.jumpActionIncExc)
{
// document.DiscountRuleForm.removeChild(document.DiscountRuleForm.jumpActionIncExc);
window.setTimeout(function() { document.DiscountRuleForm.removeChild(document.DiscountRuleForm.jumpActionIncExc); }, 50);
var element = document.createElement("input");
element.type = "hidden";
element.name = "updateAction";
element.value = "OK";
document.DiscountRuleForm.appendChild(element);
}
document.DiscountRuleForm.submit();
}
}
</script>
<!-- Discount Actions --><% URLPipelineAction action245 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null)))),null));String site245 = null;String serverGroup245 = null;String actionValue245 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null)))),null);if (site245 == null){  site245 = action245.getDomain();  if (site245 == null)  {      site245 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup245 == null){  serverGroup245 = action245.getServerGroup();  if (serverGroup245 == null)  {      serverGroup245 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DiscountRuleForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue245, site245, serverGroup245,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr><td colspan=3><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="20" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="table_title3 n w100"><% {out.write(localizeISText("ActionEditor.PromotionDiscount.table_title3",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail n right"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionOverrideApplicationExclusionsForms:get(Rebate:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionOverrideApplicationExclusionsForms:get(Rebate:UUID):Selection:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionOverrideApplicationExclusionsForms:get(Rebate:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionOverrideApplicationExclusionsForms:get(Rebate:UUID):Selection:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td>
<td nowrap="nowrap" class="table_detail n right"><% {out.write(localizeISText("ActionEditor.OverrideApplicationLevelExclusions.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- delete confirmation if one is selected and error if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("TargetActionID"),null).equals(context.getFormattedValue(getObject("ContextObject:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteAction")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="confirm_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActionClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageletPromotionAssignments.Actions.table_header",null))),
new TagParameter("cancelbtnname","cancelAction"),
new TagParameter("okbtnname","deleteAction"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ActionEditor.DeleteAllSelectedDiscounts.message",null)))}, 95); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageletPromotionAssignments.Actions.table_header",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ActionEditor.PleaseSelectAtLeastOneDiscount.message",null)))}, 98); %><% } %></table>
</td>
</tr>
</table><% } %><input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="RebateID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TargetActionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObject:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (hasLoopElements("Rebate:Actions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NewActionForm")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("TargetActionID"),null).equals(context.getFormattedValue(getObject("ContextObject:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><!-- There is no sub condition -->
<table border="0" cellpadding="0" cellspacing="4" width="100%" class="w e s">
<tr>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% {out.write(localizeISText("ActionEditor.CurrentlyThereIsNoDiscountDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ActionEditor.CurrentlyThereIsNoDiscountDefined.noPermissions.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ActionEditor.Apply.button",null)),null)%>" name="applyAction"/></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ActionEditor.New.button",null)),null)%>" name="newAction" /></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table border="0" cellpadding="0" cellspacing="4" width="100%" class="e w s">
<tr>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NewActionForm")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("TargetActionID"),null).equals(context.getFormattedValue(getObject("ContextObject:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionActionNew", null, "148");} %><% } %><% while (loop("Rebate:Actions","ThisAction",null)) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionAction", null, "152");} %><% } %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Rebate:Actions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ThisEditMode")))).booleanValue() && ((Boolean) getObject("ThisEditMode")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ActionEditor.Apply.button",null)),null)%>" name="applyAction" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ActionEditor.Delete.button",null)),null)%>" name="confirmDeleteAction" disabled="disabled" /></td><% } else { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ActionEditor.Apply.button",null)),null)%>" name="applyAction"/></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ActionEditor.Delete.button",null)),null)%>" name="confirmDeleteAction"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>
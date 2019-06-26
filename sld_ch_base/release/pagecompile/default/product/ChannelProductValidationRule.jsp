<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="ProductValidationDialog" class="js-dialog" data-title="<% {out.write(localizeISText("app.Dialog.ProductCompletenessRule.Title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="650" height="650"><% URLPipelineAction action14 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null)))),null));String site14 = null;String serverGroup14 = null;String actionValue14 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null)))),null);if (site14 == null){  site14 = action14.getDomain();  if (site14 == null)  {      site14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup14 == null){  serverGroup14 = action14.getServerGroup();  if (serverGroup14 == null)  {      serverGroup14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductValidationRuleForm");out.print("\"");out.print(" id=\"");out.print("ProductValidationRuleForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue14, site14, serverGroup14,true)); %><div class="dialog-content">
<table border="0" cellspacing="0" cellpadding="4" class="error_box">
<tr id="ValidationRuleConfigurationForm_RuleName_ErrorContainer" class="ErrorContainer" style="display:none;">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.ruleNameRequired","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
<tr id="ValidationRuleConfigurationForm_RuleType_ErrorContainer" class="ErrorContainer" style="display:none;">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.ruleTypeRequired","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="left" nowrap="nowrap" class="label" width="130"><label class="label label_dialog" for="ValidationRuleConfigurationForm_RuleName"><% {out.write(localizeISText("validationrule.page.name","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td align="left" class="table_detail_without_bground"><input type="text" id="ValidationRuleConfigurationForm_RuleName" name="ValidationRuleConfigurationForm_RuleName" class="rule_configuration_input inputfield_en" style="width: 250px;"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label" width="130"><label class="label label_dialog" for="ValidationRuleConfigurationForm_RuleType"><% {out.write(localizeISText("validationrule.page.validationType","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail_without_bground">
<select id="ValidationRuleConfigurationForm_RuleType" name="ValidationRuleConfigurationForm_RuleType" class="rule_configuration_input select inputfield_en" style="width: 260px;">
<option value=""></option><% while (loop("ValidationRuleConfigurationBORepository:AllValidationRuleDescriptors","RuleDescriptor",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("RuleDescriptor:ValidationRuleID"),null),(String)("\\."),(String)("_")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("validationrule.",null) + context.getFormattedValue(getObject("RuleDescriptor:ValidationRuleID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
</td>
</tr>
<tr>
<td></td>
<td>
<table>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ValidationRuleConfigurationForm_RuleActive" name="ValidationRuleConfigurationForm_RuleActive" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text" for="ValidationRuleConfigurationForm_RuleActive"><% {out.write(localizeISText("validationrule.page.active","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td> 
</tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label" width="130"><label class="label label_dialog" for="ValidationRuleConfigurationForm_RuleAction"><% {out.write(localizeISText("validationrule.page.ifValidationFails","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail_without_bground">
<select id="ValidationRuleConfigurationForm_RuleAction" name="ValidationRuleConfigurationForm_RuleAction" class="rule_configuration_input select inputfield_en" style="width: 260px;">
<option value=""><% {out.write(localizeISText("validationrule.action.no.selected.actions","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ValidationRuleConfigurationBORepository:AllValidationRuleActions","RuleAction",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("RuleAction:ValidationActionID"),null),(String)("\\."),(String)("_")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("validationrule.action.",null) + context.getFormattedValue(getObject("RuleAction:ValidationActionID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
</td>
</tr>
</table>
</td>
<td>
<input type="hidden" id="ValidationRuleID" name="ValidationRuleID">
<input type="hidden" id="ValidationRuleDescriptorID" name="ValidationRuleDescriptorID">
</td>
</tr>
<tr>
<td><img height="20" border="0" width="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
<tr>
<td valign="center"><% while (loop("ValidationRuleConfigurationBORepository:AllValidationRuleDescriptors","RuleDescriptor",null)) { %><div id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("RuleDescriptorDiv_",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("RuleDescriptor:ValidationRuleID"),null),(String)("\\."),(String)("_")),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="RuleDescriptorDiv" style="display: none;"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("RuleDescriptor:EditingTemplate"),null), null, "70");} %></div><% } %></td>
</tr>
</table>
</div>
<div class="dialog-buttons">
<input type="button" class="button" id="applyRuleConfiguration" value="<% {out.write(localizeISText("app.Dialog.ProductValidationRule.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="apply" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>disabled="true"<% } %> />
<input type="button" class="button" id="cancelRuleConfiguration" value="<% {out.write(localizeISText("app.Dialog.ProductValidationRule.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-action="dialog-close" name="cancel" />
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ChannelProductValidationRuleDialogScript.isml", null, "81");} %><% out.print("</form>"); %></div><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>validation/selectAssignment.js<% out.print("</waplacement>"); %><script type="text/javascript">
$(document).ready(function() {
$(document).delegate('#' + 'RuleDescriptorDiv_com_intershop_component_product_validation_internal_rules_customattribute_ProductBOCustomAttributeValidationRuleDescriptor', 'onJSONReady', function(ev, data) {
$.each(data, function(key, value) {
var cfgKey = key;
$(this).each(function(key, value) {
if (cfgKey === 'CustomAttributes') {
var labelsarray=value.split(',');
$("#labelselect").select2("val", labelsarray); 
$("#ProductCustomAttributesValidationRuleConfigurationForm_CustomAttributes").val(value); 
}
if (cfgKey === 'Locales') {
var localeInformations = value.split(',');
var assignedLocales = $('#AssignedLocales:enabled');
var availableLocales = $('#AvailableLocales:enabled');
for (var i = 0; i < localeInformations.length; i++) {
var localeInformation = localeInformations[i].split(':');
assignedLocales.append('<option value=' + localeInformation[0] + '>' + localeInformation[1] + '</option>');
availableLocales.children("option[value='" + localeInformation[0] + "']").remove();
}
} 
});
});
setupRuleLocales();
});
});
</script>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr id="ProductCustomAttributesValidationRuleConfigurationForm_CustomAttributes_ErrorContainer" class="ErrorContainer" style="display:none;"> 
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error" width="100%"><% {out.write(localizeISText("validationrule.page.enterAtLeastOneAttribute","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="" width="100%"> 
<tr>
<td class="label" nowrap="nowrap" width="9%">
<label class="label label_dialog" for="ProductCustomAttributesValidationRuleConfigurationForm_CustomAttributes"><% {out.write(localizeISText("validationrule.product.custom.attr.page.attribute","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span>
</label>
<input type="hidden" name=ProductCustomAttributesValidationRuleConfigurationForm_CustomAttributes id="ProductCustomAttributesValidationRuleConfigurationForm_CustomAttributes">
</td>
<td width="40%" class="table_detail_without_bground"><% processOpenTag(response, pageContext, "labelmultiselect", new TagParameter[] {
new TagParameter("jscustomization","/js/isselect2single.js"),
new TagParameter("AssignedLabels",getObject("AssignedLabels"))}, 55); %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<th align="left" class="table_detail_without_bground"><label for="AvailableLocales" class="label_select label_light"><% {out.write(localizeISText("validationrule.page.availableLocales","",null,null,null,null,null,null,null,null,null,null,null));} %></label></th>
<th></th>
<th align="left" class="table_detail_without_bground"><label for="AssignedLocales" class="label_select label_light"><% {out.write(localizeISText("validationrule.page.selectedLocales","",null,null,null,null,null,null,null,null,null,null,null));} %></label></th>
</tr>
<tr>
<td class="table_detail_without_bground" width="38%">
<select id="AvailableLocales" name="AvailableLocales" class="select inputfield_en w100 rule_configuration_input availableSelect" multiple="multiple" size="8"><% while (loop("Locales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td nowrap="nowrap" width="1%">
<table border="0" cellpadding="3" cellspacing="0">
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="assignCustAttrLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductCustomAttributeValidationRule.Add.button",null)),null)%> &gt;" class="button shuttleButton localeShuttleButton locale rule_configuration_input" style="width:110px; white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="assignAllCustAttrLocales" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductCustomAttributeValidationRule.AddAll.button",null)),null)%> &gt;&gt;" class="button shuttleButton localeShuttleButton rule_configuration_input" style="width:110px; white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="unassignAllCustAttrLocales" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductCustomAttributeValidationRule.RemoveAll.button",null)),null)%>" class="button shuttleButton localeShuttleButton rule_configuration_input" style="width:110px; white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="unassignCustAttrLocale" value="&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductCustomAttributeValidationRule.Remove.button",null)),null)%>" class="button shuttleButton localeShuttleButton rule_configuration_input" style="width:110px; white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
</table>
</td>
<td class="table_detail_without_bground" width="38%">
<input type="hidden" id="RuleLocales" name="RuleLocales" />
<input type="hidden" id="AllLocales" name="AllLocales" value="<% while (loop("Locales","Locale",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Locale") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>;<% } %><% } %>" />
<select id="AssignedLocales" name="AssignedLocales" class="select inputfield_en w100 rule_configuration_input assignedSelect" multiple="multiple" size="8"/>
</td>
</tr>
</table> 
</td>
</tr>
</table><% printFooter(out); %>
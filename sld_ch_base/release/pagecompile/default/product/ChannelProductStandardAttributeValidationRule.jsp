<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>validation/selectAssignment.js<% out.print("</waplacement>"); %><script type="text/javascript">
$(document).ready(function() {
$(document).delegate('#' + 'RuleDescriptorDiv_com_intershop_component_product_validation_internal_rules_standardattribute_ProductBOStandardAttributeValidationRuleDescriptor', 'onJSONReady', function(ev, data) {
$.each(data, function(key, value){
var cfgKey = key;
$(this).each(function(key, value){
if (cfgKey === 'Attributes') {
var attributes = value.split(',');
for (var i = 0; i < attributes.length; i++) { 
$('#ProductStandardAttributesValidationRuleConfigurationForm_' + attributes[i]).prop('checked', 'true');
}
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
<tr valign="top">
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><th colspan="2" align="left" class="table_detail_without_bground" width="100%"><% {out.write(localizeISText("validationrule.product.standard.attr.page.checkForStandardAttributes","",null,null,null,null,null,null,null,null,null,null,null));} %>:</th></tr>
<tr id="ProductStandardAttributesValidationRuleConfigurationForm_EmptyRuleParameter_ErrorContainer" class="ErrorContainer" style="display:none;">
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.selectAtLeastOneAttribute","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
</td>
</tr>
<tr valign="top">
<td width="50%">
<table border="0" cellpadding="3" cellspacing="0">
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_SKU" name="ProductStandardAttributesValidationRuleConfigurationForm_SKU" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_SKU"><% {out.write(localizeISText("validationrule.product.standard.attr.page.sku","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_SupplierName" name="ProductStandardAttributesValidationRuleConfigurationForm_SupplierName" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_SupplierName"><% {out.write(localizeISText("validationrule.product.standard.attr.page.supplierName","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_SupplierSKU" name="ProductStandardAttributesValidationRuleConfigurationForm_SupplierSKU" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_SupplierSKU"><% {out.write(localizeISText("validationrule.product.standard.attr.page.suppliersku","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_manufacturerName" name="ProductStandardAttributesValidationRuleConfigurationForm_manufacturerName" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_manufacturerName"><% {out.write(localizeISText("validationrule.product.standard.attr.page.manufacturerName","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_manufacturerSKU" name="ProductStandardAttributesValidationRuleConfigurationForm_manufacturerSKU" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_manufacturerSKU"><% {out.write(localizeISText("validationrule.product.standard.attr.page.manufacturersku","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_EANCode" name="ProductStandardAttributesValidationRuleConfigurationForm_EANCode" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_EanCode"><% {out.write(localizeISText("validationrule.product.standard.attr.page.eanCode","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_FreightClassID" name="ProductStandardAttributesValidationRuleConfigurationForm_FreightClassID" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_FreightClassID"><% {out.write(localizeISText("validationrule.product.standard.attr.page.freightClassID","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
<td width="50%">
<table border="0" cellpadding="3" cellspacing="0">
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_MinOrderQuantity" name="ProductStandardAttributesValidationRuleConfigurationForm_MinOrderQuantity" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_MinOrderQuantity"><% {out.write(localizeISText("validationrule.product.standard.attr.page.minOrderQuantity","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_MaxOrderQuantity"/ name="ProductStandardAttributesValidationRuleConfigurationForm_MaxOrderQuantity" class="rule_configuration_input"></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_MaxOrderQuantity"><% {out.write(localizeISText("validationrule.product.standard.attr.page.maxOrderQuantity","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_StepQuantity" name="ProductStandardAttributesValidationRuleConfigurationForm_StepQuantity" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_StepQuantity"><% {out.write(localizeISText("validationrule.product.standard.attr.page.stepQuantity","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td> 
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_BaseUnit" name="ProductStandardAttributesValidationRuleConfigurationForm_BaseUnit" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_BaseUnit"><% {out.write(localizeISText("validationrule.product.standard.attr.page.baseUnit","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_QuantityUnit" name="ProductStandardAttributesValidationRuleConfigurationForm_QuantityUnit" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_QuantityUnit"><% {out.write(localizeISText("validationrule.product.standard.attr.page.quantityUnit","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_RatioBasePackingUnit" name="ProductStandardAttributesValidationRuleConfigurationForm_RatioBasePackingUnit" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_RatioBasePackingUnit"><% {out.write(localizeISText("validationrule.product.standard.attr.page.ratioBasePackingUnit","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMin" name="ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMin" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMin"><% {out.write(localizeISText("validationrule.product.standard.attr.page.readyForShipmentMin","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMax" name="ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMax" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMax"><% {out.write(localizeISText("validationrule.product.standard.attr.page.readyForShipmentMax","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><th align="left" class="table_detail_without_bground"><% {out.write(localizeISText("validationrule.page.checkLocalizedAttributesForSelectedLocales","",null,null,null,null,null,null,null,null,null,null,null));} %>:</th></tr>
<tr id="ProductStandardAttributesValidationRuleConfigurationForm_InvalidLocalesParameter_ErrorContainer" class="ErrorContainer" style="display:none;">
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.selectLocaleWhenLocalizedAttributesAreSelected","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
</td>
</tr>
<tr valign="top">
<td>
<table border="0" cellpadding="3" cellspacing="">
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_name" name="ProductStandardAttributesValidationRuleConfigurationForm_name" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_name"><% {out.write(localizeISText("validationrule.product.standard.attr.page.name","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_shortDescription" name="ProductStandardAttributesValidationRuleConfigurationForm_shortDescription" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_shortDescription"><% {out.write(localizeISText("validationrule.product.standard.attr.page.shortDescription","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_checkbox"><input type="checkbox" id="ProductStandardAttributesValidationRuleConfigurationForm_longDescription" name="ProductStandardAttributesValidationRuleConfigurationForm_longDescription" class="rule_configuration_input"/></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ProductStandardAttributesValidationRuleConfigurationForm_longDescription"><% {out.write(localizeISText("validationrule.product.standard.attr.page.longDescription","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table> 
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%">
<tr>
<th align="left" class="table_detail_without_bground"><label for="AvailableLocales" class="label_select label_light"><% {out.write(localizeISText("validationrule.page.availableLocales","",null,null,null,null,null,null,null,null,null,null,null));} %></label></th>
<th></th>
<th align="left" class="table_detail_without_bground"><label for="AssignedLocales" class="label_select label_light"><% {out.write(localizeISText("validationrule.page.selectedLocales","",null,null,null,null,null,null,null,null,null,null,null));} %></label></th>
</tr>
<tr>
<td class="table_detail_without_bground" width="38%">
<select id="AvailableLocales" name="AvailableLocales" class="select inputfield_en w100 rule_configuration_input availableSelect" multiple="multiple" size="9"><% while (loop("Locales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td nowrap="nowrap" width="24%">
<table border="0" cellpadding="3" cellspacing="0">
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="assignStadardAttrLocale" value="<% {out.write(localizeISText("validationrule.page.add","",null,null,null,null,null,null,null,null,null,null,null));} %> &gt;" class="button shuttleButton localeShuttleButton locale rule_configuration_input w100" style="white-space: pre-wrap; height: auto; word-wrap:break-word;" /></td></tr>
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="assignAllStadardAttrLocales" value="<% {out.write(localizeISText("validationrule.page.addAll","",null,null,null,null,null,null,null,null,null,null,null));} %> &gt;&gt;" class="button shuttleButton localeShuttleButton rule_configuration_input w100" style="white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="unassignAllStadardAttrLocales" value="&lt;&lt; <% {out.write(localizeISText("validationrule.page.removeAll","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button shuttleButton localeShuttleButton rule_configuration_input w100" style="white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
<tr><td class="button table_detail_without_bgrond_and_padding"><input type="button" id="unassignStadardAttrLocale" value="&lt; <% {out.write(localizeISText("validationrule.page.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button shuttleButton localeShuttleButton rule_configuration_input w100" style="white-space: pre-wrap; height: auto; word-wrap:break-word;"/></td></tr>
</table>
</td>
<td class="table_detail_without_bground" width="38%">
<input type="hidden" id="RuleLocales" name="RuleLocales" />
<input type="hidden" id="AllLocales" name="AllLocales" value="<% while (loop("Locales","Locale",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Locale") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>;<% } %><% } %>" />
<select id="AssignedLocales" name="AssignedLocales" class="select inputfield_en w100 rule_configuration_input assignedSelect" multiple="multiple" size="9"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>
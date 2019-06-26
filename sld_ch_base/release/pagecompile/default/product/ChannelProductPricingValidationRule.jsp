<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>validation/selectAssignment.js<% out.print("</waplacement>"); %><script type="text/javascript">
$(document).ready(function() {
$(document).delegate('#' + 'RuleDescriptorDiv_com_intershop_component_product_validation_internal_rules_pricing_ProductBOPricingAttributeValidationRuleDescriptor', 'onJSONReady', function(ev, data) {
$.each(data, function(key, value) {
var cfgKey = key;
$(this).each(function(key, value) {
if (cfgKey === 'Prices') {
var prices = value.split(',');
for (var i = 0; i < prices.length; i++) {
$('#ProductPricingValidationRuleConfigurationForm_' + prices[i]).prop('checked', 'true');
}
}
if (cfgKey === 'Currencies') {
var currencyInformations = value.split(',');
var assignedCurrencies = $('#AssignedCurrencies:enabled');
var availableCurrencies = $('#AvailableCurrencies:enabled');
for (var i = 0; i < currencyInformations.length; i++) {
var currencyInformation = currencyInformations[i].split(':');
assignedCurrencies.append('<option value=' + currencyInformation[0] + '>' + currencyInformation[1] + '</option>');
availableCurrencies.children("option[value='" + currencyInformation[0] + "']").remove();
}
}
});
});
setupRuleCurrencies();
});
});
</script>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<th align="left" class="table_detail_without_bground"><% {out.write(localizeISText("validationrule.product.pricing.checkStandardPricesForSelectedCurrencies","",null,null,null,null,null,null,null,null,null,null,null));} %>:</th>
</tr>
<tr
id="ProductPricingValidationRuleConfigurationForm_EmptyRuleParameter_ErrorContainer"
class="ErrorContainer" style="display: none;">
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16"
height="15" alt="" border="0" /></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.selectAtLeastOneProductPrice","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
</td>
</tr>
<tr
id="ProductPricingValidationRuleConfigurationForm_InvalidCurrenciesParameter_ErrorContainer"
class="ErrorContainer" style="display: none;">
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16"
height="15" alt="" border="0" /></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.selectCurrencyWhenProductPriceIsSelected","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td nowrap="nowrap" class="table_detail_without_bground"><label for="ProductPricingValidationRuleConfigurationForm_ListPrice"><% {out.write(localizeISText("validationrule.product.pricing.page.listPrice","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td><input id="ProductPricingValidationRuleConfigurationForm_ListPrice" name="ProductPricingValidationRuleConfigurationForm_ListPrice" type="checkbox" /></td>
</tr>
<tr>
<td nowrap="nowrap" class="table_detail_without_bground"><label for="ProductPricingValidationRuleConfigurationForm_CostPrice"><% {out.write(localizeISText("validationrule.product.pricing.page.costPrice","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td><input id="ProductPricingValidationRuleConfigurationForm_CostPrice" name="ProductPricingValidationRuleConfigurationForm_CostPrice" type="checkbox" /></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><img height="20" border="0" width="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<th align="left" class="table_detail_without_bground"><label for="AvailableCurrencies" class="label_select label_light"><% {out.write(localizeISText("validationrule.page.availableCurrencies","",null,null,null,null,null,null,null,null,null,null,null));} %></label></th>
<th></th>
<th align="left" class="table_detail_without_bground"><label for="AssignedCurrencies" class="label_select label_light"><% {out.write(localizeISText("validationrule.page.selectedCurrencies","",null,null,null,null,null,null,null,null,null,null,null));} %></label></th>
</tr>
<tr>
<td class="table_detail_without_bground" width="45%"><select
id="AvailableCurrencies" name="AvailableCurrencies"
class="select inputfield_en w100 rule_configuration_input availableSelect"
multiple="multiple" size="8"><% while (loop("SystemCurrencies","Currency",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select></td>
<td nowrap="nowrap" width="10%">
<table border="0" cellpadding="3" cellspacing="0">
<tr>
<td class="button table_detail_without_bgrond_and_padding"><input type="button" id="assignPricingCurrency" value="<% {out.write(localizeISText("validationrule.page.add","",null,null,null,null,null,null,null,null,null,null,null));} %> &gt;" class="button shuttleButton currencyShuttleButton rule_configuration_input" style="width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;" /></td>
</tr>
<tr>
<td class="button table_detail_without_bgrond_and_padding"><input type="button" id="assignAllPricingCurrencies" value="<% {out.write(localizeISText("validationrule.page.addAll","",null,null,null,null,null,null,null,null,null,null,null));} %> &gt;&gt;" class="button shuttleButton currencyShuttleButton rule_configuration_input" style="width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;" /></td>
</tr>
<tr>
<td class="button table_detail_without_bgrond_and_padding"><input type="button" id="unassignAllPricingCurrencies" value="&lt;&lt; <% {out.write(localizeISText("validationrule.page.removeAll","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button shuttleButton currencyShuttleButton rule_configuration_input" style="width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;" /></td>
</tr>
<tr>
<td class="button table_detail_without_bgrond_and_padding"><input type="button" id="unassignPricingCurrency" value="&lt; <% {out.write(localizeISText("validationrule.page.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button shuttleButton currencyShuttleButton rule_configuration_input" style="width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;" /></td>
</tr>
</table>
</td>
<td class="table_detail_without_bground" width="45%">
<input type="hidden" id="RuleCurrencies" name="RuleCurrencies" />
<input type="hidden" id="AllCurrencies" name="AllCurrencies" value="<% while (loop("SystemCurrencies","Currency",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Currency") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>;<% } %><% } %>" />
<select id="AssignedCurrencies" name="AssignedCurrencies" class="select inputfield_en w100 rule_configuration_input assignedSelect" multiple="multiple" size="8" />
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>
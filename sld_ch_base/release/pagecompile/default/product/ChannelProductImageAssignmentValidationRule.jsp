<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$(document).ready(function() {
$(document).delegate('#' + 'RuleDescriptorDiv_com_intershop_component_product_validation_internal_rules_imageassignment_ProductBOImageAssignmentValidationRuleDescriptor', 'onJSONReady', function(ev, data) {
$.each(data, function(key, value){
var cfgKey = key;
$(this).each(function(key, value){
if (cfgKey === 'AssignedToAllImages' && (value != 'off')) {
$('#ProductImageAssignmentValidationRuleConfigurationForm_assignedToAllImages').prop('checked', 'true');
} 
if (cfgKey === 'AssignedToOneImage' && (value != 'off')) {
$('#ProductImageAssignmentValidationRuleConfigurationForm_assignedToOneImage').prop('checked', 'true');
}
});
});
});
});
</script>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr valign="top">
<td>
<table border="0" cellpadding="0" cellspacing="" width="100%">
<tr>
<th nowrap="nowrap" class="table_detail_without_bground" align="left"><% {out.write(localizeISText("validationrule.product.imageassignment.page.imageassignments","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr>
<tr
id="ProductImageAssignmentValidationRuleConfigurationForm_EmptyRuleParameter_ErrorContainer"
class="ErrorContainer" style="display: none;">
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16"
height="15" alt="" border="0" /></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("validationrule.page.selectAtLeastOneImageAssignment","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="3" cellspacing="" width="100%">
<tr>
<td class="input_checkbox" width="4%">
<input type="checkbox" id="ProductImageAssignmentValidationRuleConfigurationForm_assignedToAllImages" name="ProductImageAssignmentValidationRuleConfigurationForm_assignedToAllImages" class="rule_configuration_input"/>
</td>
<td nowrap="nowrap" class="label_checkbox_text">
<label class="label label_checkbox_text label_light" for="ProductImageAssignmentValidationRuleConfigurationForm_assignedToAllImages"><% {out.write(localizeISText("validationrule.product.imageassignment.page.allimagesassignments","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="input_checkbox" width="4%">
<input type="checkbox" id="ProductImageAssignmentValidationRuleConfigurationForm_assignedToOneImage" name="ProductImageAssignmentValidationRuleConfigurationForm_assignedToOneImage" class="rule_configuration_input"/>
</td>
<td nowrap="nowrap" class="label_checkbox_text">
<label class="label label_checkbox_text label_light" for="ProductImageAssignmentValidationRuleConfigurationForm_assignedToOneImage"><% {out.write(localizeISText("validationrule.product.imageassignment.page.atleastoneimagesassignments","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>
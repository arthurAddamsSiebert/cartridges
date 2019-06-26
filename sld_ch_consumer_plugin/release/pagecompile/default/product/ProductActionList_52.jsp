<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--ProductActionList.isml-->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductActionList_52.EditSelectedProductsStep1SelectAction.text",null))),
new TagParameter("id","Select Action")}, 6); %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ActionCount", temp_obj);} %><% URLPipelineAction action49 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site49 = null;String serverGroup49 = null;String actionValue49 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site49 == null){  site49 = action49.getDomain();  if (site49 == null)  {      site49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup49 == null){  serverGroup49 = action49.getServerGroup();  if (serverGroup49 == null)  {      serverGroup49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue49, site49, serverGroup49,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% {out.write(localizeISText("ProductActionList_52.Step1SelectAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15"
alt="" border="0" /></td>
<td class="error top" width="100%"><% {out.write(localizeISText("sld_enterprise_app.NoLabelsToBeUnassigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionListFormSubmitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15"
alt="" border="0" /></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ProductActionList_52.YouHaveNotSelectedAnActionSelectAnAction.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }} %><tr>
<td class="w e s table_title_description" colspan="2"
nowrap="nowrap"><% {out.write(localizeISText("ProductActionList_52.Step1SelectProductProcessingAction.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="8" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateStandardProductAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="UpdateStandardProductAttributes"
id="UpdateStandardProductAttributes" checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="UpdateStandardProductAttributes"
id="UpdateStandardProductAttributes" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="UpdateStandardProductAttributes"><% {out.write(localizeISText("ProductActionList_52.UpdateStandardProductAttributes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateCustomProductAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="UpdateCustomProductAttribute"
id="UpdateCustomProductAttribute" checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="UpdateCustomProductAttribute"
id="UpdateCustomProductAttribute" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="UpdateCustomProductAttribute"><% {out.write(localizeISText("ProductActionList_52.UpdateCreateCustomProductAttribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateProductStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="UpdateProductStatus" id="UpdateProductStatus"
checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="UpdateProductStatus" id="UpdateProductStatus" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="UpdateProductStatus"><% {out.write(localizeISText("ProductActionList_52.UpdateProductStatus.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteCustomProductAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="DeleteCustomProductAttribute"
id="DeleteCustomProductAttribute" checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="DeleteCustomProductAttribute"
id="DeleteCustomProductAttribute" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="DeleteCustomProductAttribute"><% {out.write(localizeISText("ProductActionList_52.DeleteCustomProductAttribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductToCatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="AssignProductToCatalogCategory"
id="AssignProductToCatalogCategory" checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="AssignProductToCatalogCategory"
id="AssignProductToCatalogCategory" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="AssignProductToCatalogCategory"><% {out.write(localizeISText("ProductActionList_52.AssignProductsToCatalogCategory.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductToClassificationCatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="AssignProductToClassificationCatalogCategory"
id="AssignProductToClassificationCatalogCategory"
checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="AssignProductToClassificationCatalogCategory"
id="AssignProductToClassificationCatalogCategory" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="AssignProductToClassificationCatalogCategory"><% {out.write(localizeISText("ProductActionList_52.AssignProductsToClassificationCatalogCategories.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="AssignProductLinks" id="AssignProductLinks"
checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="AssignProductLinks" id="AssignProductLinks" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="AssignProductLinks"><% {out.write(localizeISText("ProductActionList_52.AssignProductCategoryLinks.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignProductLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="UnassignProductLinks" id="UnassignProductLinks"
checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="UnassignProductLinks" id="UnassignProductLinks" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="UnassignProductLinks"><% {out.write(localizeISText("ProductActionList_52.UnassignProductCategoryLinks.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("CopyProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="CopyProducts"
id="CopyProducts" checked="checked" /><% } else { %><input type="radio" name="ActionID" value="CopyProducts"
id="CopyProducts" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="CopyProducts"><% {out.write(localizeISText("ProductActionList_52.CopyProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="DeleteProducts"
id="DeleteProducts" checked="checked" /><% } else { %><input type="radio" name="ActionID" value="DeleteProducts"
id="DeleteProducts" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="DeleteProducts"><% {out.write(localizeISText("ProductActionList_52.DeleteProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",244,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",249,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignLabel"
id="AssignLabel" checked="checked" /><% } else { %><input type="radio" name="ActionID" value="AssignLabel"
id="AssignLabel" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="AssignLabel"><% {out.write(localizeISText("ProductActionList_52.AssignLabel.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",263,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",266,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="UnassignLabel"
id="UnassignLabel" checked="checked" /><% } else { %><input type="radio" name="ActionID" value="UnassignLabel"
id="UnassignLabel" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="UnassignLabel"><% {out.write(localizeISText("ProductActionList_52.UnassignLabel.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DATA_REPLICATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",280,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("ReplicateProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><input type="radio" name="ActionID"
value="ReplicateProducts" id="ReplicateProducts"
checked="checked" /><% } else { %><input type="radio" name="ActionID"
value="ReplicateProducts" id="ReplicateProducts" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="ReplicateProducts"><% {out.write(localizeISText("ProductActionList_52.ReplicateProductsToAnotherIS7Cluster.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",300,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("CSVExport",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",305,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="CSVExport"
id="CSVExport" checked="checked" /><% } else { %><input type="radio" name="ActionID" value="CSVExport"
id="CSVExport" /><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><label
for="CSVExport"><% {out.write(localizeISText("ProductActionList_52.ExportToCSV.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %></table>
</tr>
</td>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ActionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",324,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0"
cellpadding="0">
<tr>
<td class="table_detail top"><% {out.write(localizeISText("ProductActionList_52.ThereAreNoActionsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0"
cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "341");} %> <input
type="hidden" name="ActionListFormSubmitted" value="true" /> <input
type="hidden" name="SelectedMenuItem" value="ChannelProducts" />
<input type="hidden" name="IsSearchFired"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {346}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> <input
type="submit" name="selectAction"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductActionList_52.Next.button",null)),null)%>&nbsp;&gt;&gt;"
class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ActionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",350,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="button"><a
href="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationState:LastListView:Link"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {353}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="button"><% {out.write(localizeISText("ProductActionList_52.Cancel.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
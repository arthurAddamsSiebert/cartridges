<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--ProductActionList.isml-->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EditAll")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EditAll"),null).equals(context.getFormattedValue("Edit All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","Select Action"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.EditAllProductsSelectAction.text",null)))}, 8); %><% } else { %> 
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","Select Action"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.EditSelectedProductsStep1SelectAction.text",null)))}, 12); %> 
<% } %> 
<% URLPipelineAction action110 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-Dispatch",null)))),null));String site110 = null;String serverGroup110 = null;String actionValue110 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-Dispatch",null)))),null);if (site110 == null){  site110 = action110.getDomain();  if (site110 == null)  {      site110 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup110 == null){  serverGroup110 = action110.getServerGroup();  if (serverGroup110 == null)  {      serverGroup110 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue110, site110, serverGroup110,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EditAll")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EditAll"),null).equals(context.getFormattedValue("Edit All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.EditAllProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.EditSelectedProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %>
- <% {out.write(localizeISText("sld_enterprise_app.SelectAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("sld_enterprise_app.NoLabelsToBeUnassigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionListFormSubmitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnActionSelectAnActionAndThenCli.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }} %><tr>
<td class="w e s table_title_description" colspan = "2" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Step1SelectProductProcessingActionNextStepsDependO.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="8"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateStandardProductAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="UpdateStandardProductAttributes" id="UpdateStandardProductAttributes" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="UpdateStandardProductAttributes" id="UpdateStandardProductAttributes"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="UpdateStandardProductAttributes"><% {out.write(localizeISText("sld_enterprise_app.UpdateStandardProductAttributesProductStatusAvaila.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateCustomProductAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="UpdateCustomProductAttribute" id="UpdateCustomProductAttribute" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="UpdateCustomProductAttribute" id="UpdateCustomProductAttribute"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="UpdateCustomProductAttribute"><% {out.write(localizeISText("sld_enterprise_app.UpdateCreateCustomProductAttribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteCustomProductAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="DeleteCustomProductAttribute" id="DeleteCustomProductAttribute" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="DeleteCustomProductAttribute" id="DeleteCustomProductAttribute"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="DeleteCustomProductAttribute"><% {out.write(localizeISText("sld_enterprise_app.DeleteCustomProductAttribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductToCatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignProductToCatalogCategory" id="AssignProductToCatalogCategory" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignProductToCatalogCategory" id="AssignProductToCatalogCategory"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="AssignProductToCatalogCategory"><% {out.write(localizeISText("sld_enterprise_app.AssignProductsToCatalogCategory.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductToClassificationCatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignProductToClassificationCatalogCategory" id="AssignProductToClassificationCatalogCategory" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignProductToClassificationCatalogCategory" id="AssignProductToClassificationCatalogCategory"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="AssignProductToClassificationCatalogCategory"><% {out.write(localizeISText("sld_enterprise_app.AssignProductsToClassificationCatalogCategory.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignProductLinks" id="AssignProductLinks" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignProductLinks" id="AssignProductLinks"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="AssignProductLinks"><% {out.write(localizeISText("sld_enterprise_app.AssignProductCategoryLinks.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignProductLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="UnassignProductLinks" id="UnassignProductLinks" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="UnassignProductLinks" id="UnassignProductLinks"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="UnassignProductLinks"><% {out.write(localizeISText("sld_enterprise_app.UnassignProductCategoryLinks.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("CopyProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="CopyProducts" id="CopyProducts" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="CopyProducts" id="CopyProducts"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="CopyProducts"><% {out.write(localizeISText("sld_enterprise_app.CopyProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="DeleteProducts" id="DeleteProducts" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="DeleteProducts" id="DeleteProducts"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="DeleteProducts"><% {out.write(localizeISText("sld_enterprise_app.DeleteProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignLabel" id="AssignLabel" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignLabel" id="AssignLabel"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="AssignLabel"><% {out.write(localizeISText("sld_enterprise_app.AssignLabel.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="UnassignLabel" id="UnassignLabel" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="UnassignLabel" id="UnassignLabel"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="UnassignLabel"><% {out.write(localizeISText("sld_enterprise_app.UnassignLabel.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("ReplicateProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="ReplicateProducts" id="ReplicateProducts" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="ReplicateProducts" id="ReplicateProducts"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="ReplicateProducts"><% {out.write(localizeISText("sld_enterprise_app.ReplicateProductsToAnotherIntershop7Cluster.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("CSVExport",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="CSVExport" id="CSVExport" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="CSVExport" id="CSVExport"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap">
<label for="CSVExport"><% {out.write(localizeISText("sld_enterprise_app.ExportToCSV.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %></table>
</tr>
</td>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "250");} %><input type="hidden" name="ActionListFormSubmitted" value="true"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {252}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationState:LastListView:Link"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {256}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="button"><% {out.write(localizeISText("sld_enterprise_app.Cancel.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
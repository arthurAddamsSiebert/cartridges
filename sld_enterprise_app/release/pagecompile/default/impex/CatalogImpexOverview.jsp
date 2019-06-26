<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Catalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ManufacturerAlias.MasterCatalogs.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex-Status",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ImportExport.text",null)))}, 6); %><!-- EO Page Navigator --><% URLPipelineAction action596 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex-Dispatch",null)))),null));String site596 = null;String serverGroup596 = null;String actionValue596 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex-Dispatch",null)))),null);if (site596 == null){  site596 = action596.getDomain();  if (site596 == null)  {      site596 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup596 == null){  serverGroup596 = action596.getServerGroup();  if (serverGroup596 == null)  {      serverGroup596 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue596, site596, serverGroup596,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedMenuItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><input type="hidden" name="SelectedMenuItem" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogsImportExport.ImportExport.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductImageUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview.ManageProductImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview.CreateADirectoryStructureAndUpload.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductImages" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImportSourceFiles.Upload.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductAttachmentUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseSecureDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview.ManageProductAttachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview.CreateADirectoryStructureAndUploadFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductAttachments" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImportSourceFiles.Upload.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.CategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageCatalogXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="CategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.CategoriesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageCatalogCSVImports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CSVImport",null),context.getFormattedValue("CSVImport",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CategoryCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageProductXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductExport-Search",null)))),null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductsCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageProductCSVImports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CSVImport",null),context.getFormattedValue("CSVImport",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ClassificationCategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageClassificationCatalogXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-SelectClassificationCatalogFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport-SelectClassificationCatalog",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ClassificationCategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ClassificationCategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductsAndCategoriesBMEcat.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageBMEcatImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="BMEcatImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="BMEcatExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ImageViewsImageTypesAndImageSetsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageImageViewsTypesSetsXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-SelectConfiguration",null)))),null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImageMetadataImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ImageMetadataExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.VariationTypesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageVariationTypeXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeExport-ListAll",null)))),null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="VariationTypeImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="VariationTypeExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.VariationTypesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageVariationTypeCSVImports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CSVImport",null),context.getFormattedValue("CSVImport",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="VariationTypeCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductAttributeGroupsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ManageProductAttributeGroupXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport-ListAll",null)))),null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductAttributeGroupImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductAttributeGroupExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview.ImportFilesAndDownloadExportFiles.link",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExportFiles-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImportSourceFiles.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogImpex"),
new TagParameter("readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("impejobs",getObject("ImpexJobs"))}, 276); %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogImpexOverview", null, "282");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex-Status",null)))),null)%>'", 10000)
</script><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
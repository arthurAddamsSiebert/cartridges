<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_32-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview_32.ChannelCatalogs.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_32-Status",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview_32.ImportExport.text",null)))}, 4); %><% URLPipelineAction action283 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_32-Dispatch",null)))),null));String site283 = null;String serverGroup283 = null;String actionValue283 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_32-Dispatch",null)))),null);if (site283 == null){  site283 = action283.getDomain();  if (site283 == null)  {      site283 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup283 == null){  serverGroup283 = action283.getServerGroup();  if (serverGroup283 == null)  {      serverGroup283 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue283, site283, serverGroup283,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ImportExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ProductImageUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments_32-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProductImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_32.CreateADirectoryStructureAndUploadProductImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductImages" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Upload.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ProductAttachmentUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments_32-BrowseSecureDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProductAttachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_32.CreateADirectoryStructureAndUploadFilesEGSpecifica.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductAttachments" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Upload.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.CategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageCatalog",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_32-SelectFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageCatalogImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> &amp; <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport_32-SelectCatalog",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageCatalogExports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportOrExportCatalogCategoriesOrWholeCatalogsFrom.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="CategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.CategoriesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageCatalog",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_32-SelectCSVFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageCatalogImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportCatalogCategoriesOrWholeCatalogsFromCSVSourc.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CategoryCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ProductsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProduct",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_32-SelectFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProductImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> &amp; <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductExport_32-Search",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProductExports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportOrExportProductsFromOrIntoXMLFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ProductsCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProduct",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_32-SelectCSVFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProductImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportProductsFromASCIIFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ClassificationCategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageClassificationCatalog",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_32-SelectClassificationCatalogFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageClassificationCatalogImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> &amp; <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport_32-SelectClassificationCatalog",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageClassificationCatalogExports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportOrExportClassificationCatalogCategoriesOrWho.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ClassificationCategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ClassificationCategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ProductsAndCategoriesBMEcat.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageBMEcat",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-SelectFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageBMEcatImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> &amp; <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport_32-SelectCatalog",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageBMEcatExports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportAndExportProductsAndCategoriesFromOrIntoXMLF.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="BMEcatImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="BMEcatExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ImageViewsImageTypesAndImageSetsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageImageViewsImageTypesAndImageSets.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataImport_32-SelectFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageImageImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_32.ManageImageAnd.link",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport_32-SelectConfiguration",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageImageExports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportOrExportImageViewsImageTypesImageSetsFromOrI.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImageMetadataImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ImageMetadataExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.VariationTypesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageVariationType",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport_32-SelectFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageVariationTypeImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> &amp; <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeExport_32-ListAll",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageVariationTypeExports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportOrExportVariationTypesFromOrIntoXMLFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="VariationTypeImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="VariationTypeExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.VariationTypesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageVariationType",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport_32-SelectCSVFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageVariationTypeImports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>. <% {out.write(localizeISText("CatalogImpexOverview_32.ImportVariationTypesFromCSVFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="VariationTypeCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ProductAttributeGroupsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_32.ManageProductAttributeGroupsWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport_32-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_32-ListAll",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductAttributeGroupImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductAttributeGroupExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_32.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_32-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.Upload.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_32.UploadImportFilesAnd.link",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExportFiles_32-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_32.Download.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_32.DownloadExportFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_32.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogImpex_32"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )}, 286); %><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogImpexOverview_32", null, "289");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_32-Status",null)))),null)%>'", 10000)
</script> 
<% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
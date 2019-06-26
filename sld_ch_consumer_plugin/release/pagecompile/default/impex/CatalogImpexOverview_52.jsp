<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview_52.ChannelCatalogs.text",null)))}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview_52.ImportAndExport_Plain",null)))}, 7); %><!-- EO Page Navigator --><% URLPipelineAction action466 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Dispatch",null)))),null));String site466 = null;String serverGroup466 = null;String actionValue466 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Dispatch",null)))),null);if (site466 == null){  site466 = action466.getDomain();  if (site466 == null)  {      site466 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup466 == null){  serverGroup466 = action466.getServerGroup();  if (serverGroup466 == null)  {      serverGroup466 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue466, site466, serverGroup466,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("AdvancedShippingOverview_52.ImportAndExport_HTMLEntity",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductImageUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments_52-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageProductImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_52.CreateADirectoryStructureAndUploadProductImages",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ProductImages" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Upload.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductAttachmentUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments_52-BrowseSecureDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageProductAttachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("CatalogImpexOverview_52.CreateADirectoryStructureAndUploadFiles",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ProductAttachments" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Upload.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.CategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageCatalogWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport_52-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="CategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.CategoriesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageCatalogWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CategoryCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageProductWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductExport_52-Search",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductsCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageProductWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ClassificationCategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageClassificationWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_52-SelectClassificationCatalogFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport_52-SelectClassificationCatalog",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ClassificationCategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ClassificationCategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductsAndCategoriesBMEcat.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageBMEcatWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport_52-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="BMEcatImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="BMEcatExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.CatalogViewsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageCatalogViewsWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterExport-SelectFilters",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="CatalogFilterImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="CatalogFilterExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductFiltersXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageProductFiltersWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionImport-SelectProductFilterFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionExport-ListAllProductFilters",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductFilterImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductFilterExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.PriceListsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManagePriceListWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListExport-ListAll",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="PriceListImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="PriceListExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.PriceListsCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManagePriceListWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListImport-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="PriceListCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.VariationTypesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageVariationTypeWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeExport_52-ListAll",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="VariationTypeImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="VariationTypeExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.VariationTypesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageVariationTypeWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="VariationTypeCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ProductAttributeGroupsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.ManageProductAttributeGroupsWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_52-ListAll",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ProductAttributeGroupImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ProductAttributeGroupExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview_52.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("CatalogImpexOverview_52.UploadImportFilesAndDownloadExportFiles.link",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExportFiles_52-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right" class="button_background_color">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogImpex_52"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )}, 332); %><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogImpexOverview_52", null, "335");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",337,e);}if (_boolean_result) { %><script language="JavaScript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Status",null)))),null)%>'", 10000)
</script> 
<% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","false"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImpex_52-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ShippingImpexOverview_52.ImportExport_Plain",null)))}, 6); %><!-- EO Page Navigator --><% URLPipelineAction action478 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImpex_52-Dispatch",null)))),null));String site478 = null;String serverGroup478 = null;String actionValue478 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImpex_52-Dispatch",null)))),null);if (site478 == null){  site478 = action478.getDomain();  if (site478 == null)  {      site478 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup478 == null){  serverGroup478 = action478.getServerGroup();  if (serverGroup478 == null)  {      serverGroup478 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImpex_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue478, site478, serverGroup478,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingImpexOverview_52.ImportExport_HTMLEntity",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingImpexOverview_52.FreightClassesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("ShippingImpexOverview_52.ManageFreightClassesWithXML",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelFreightClassImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelFreightClassExport-SelectConfiguration",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="FreightClassesImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="FreightClassesExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingImpexOverview_52.ShippingMethodsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("ShippingImpexOverview_52.ManageShippingMethodsWithXML",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodExport-SelectConfiguration",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ShippingMethodImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ShippingMethodExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingImpexOverview_52.RegionsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("ShippingImpexOverview_52.ManageRegionsWithXML",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelRegionImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelRegionExport-SelectConfiguration",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="RegionImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="RegionExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingImpexOverview_52.ShippingRulesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("ShippingImpexOverview_52.ManageShippingRulesWithXML",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingRuleImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingRuleExport-SelectConfiguration",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ShippingRuleImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ShippingRuleExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CalendarImpexOverview_52.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CalendarImpexOverview_52.UploadImportFilesDownloadExportFiles",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportCalendarFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImpexOverview_52.Upload.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingImpexOverview_52.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("ShippingImpexOverview_52.UploadImportFilesDownloadExportFiles",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImportFiles_52-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingExportFiles_52-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingImpexOverview_52.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewShippingImpex_52"),
new TagParameter("impexjobs",getObject("ImpexJobs"))}, 144); %><% } else { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewShippingImpex_52"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true")}, 146); %><% } %> 
</td>
</tr>
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><script language="JavaScript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImpex_52-Status",null)))),null)%>'", 10000)
</script> 
<% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletImpexOverview.MasterContent.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PageletImpexOverview.ContentImportExport.text",null)))}, 6); %><!-- EO Page Navigator --><% {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><% URLPipelineAction action418 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Dispatch",null)))),null));String site418 = null;String serverGroup418 = null;String actionValue418 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Dispatch",null)))),null);if (site418 == null){  site418 = action418.getDomain();  if (site418 == null)  {      site418 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup418 == null){  serverGroup418 = action418.getServerGroup();  if (serverGroup418 == null)  {      serverGroup418 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue418, site418, serverGroup418,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.ImportExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.Content.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.content.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))),null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)%>"/>
<input type="submit" class="button" name="PageletContentImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>"/>
</td>
<td class="button">
<input type="submit" class="button" name="PageletContentExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Pages -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.Pages.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.page.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("Page",null))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Includes -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.Includes.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.include.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("Include",null)).addURLParameter(context.getFormattedValue("ExportExecutionDomainUUID",null),context.getFormattedValue(getObject("CurrentChannel:RepositoryDomain:UUID"),null))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="IncludeExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Page Templates -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.PageTemplates.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.pagetemplate.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("PageVariantTemplate",null))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageVariantTemplateExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Component Templates -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.ComponentTemplates.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.componenttemplate.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("ComponentTemplate",null))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ComponentTemplateExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Page Variants -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.PageVariants.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.pagevariant.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("PageVariant",null))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageVariantExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Components -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.Components.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.component.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("Component",null))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ComponentExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: View Contexts -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.ViewContexts.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("PageletImpexOverview.Imports.manage.viewcontext.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextExport-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))),null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ViewContextExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><!-- IMPEX: Upload & Download -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletImpexOverview.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",243,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletImpexOverview.Imports.files.upload.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImportFiles-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExportFiles-BrowseDirectory",null)))),null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletImpexOverview.Imports.files.view.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImportFiles-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExportFiles-BrowseDirectory",null)))),null,null,null,null,null,null,null,null));} %><% } %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 271); %><% } else { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true"),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 273); %><% } %><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogImpexOverview_52", null, "277");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",279,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Status",null)))),null)%>'", 10000)
</script><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
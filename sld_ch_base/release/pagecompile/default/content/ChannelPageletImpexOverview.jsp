<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Content.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.ImportAndExport.text",null)))}, 6); %><!-- EO Page Navigator --><% URLPipelineAction action75 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null)))),null));String site75 = null;String serverGroup75 = null;String actionValue75 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null)))),null);if (site75 == null){  site75 = action75.getDomain();  if (site75 == null)  {      site75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup75 == null){  serverGroup75 = action75.getServerGroup();  if (serverGroup75 == null)  {      serverGroup75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue75, site75, serverGroup75,true)); %><% {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)%>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.title")}, 14); %></td>
</tr>
</table> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmPrepareChannel")))).booleanValue() && ((Boolean) (getObject("ShowConfirmMessage"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><input type="hidden" name="ImportMode" value="REPLACE"/>
<input type="hidden" name="JobDescription" value="Imports components."/>
<table cellspacing="0" cellpadding="0" border="0" width="100%"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Page.subject",null))),
new TagParameter("cancelbtnname","CancelPrepare"),
new TagParameter("disableparameters","true"),
new TagParameter("okbtnname","Prepare"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.DoYouReallyWantToReplaceTheCurrentContent.message",null))),
new TagParameter("type","mdc")}, 22); %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ERROR_JobAlreadyRunning"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box s">
<tr>
<td class="error_icon e w"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
border="0" /></td>
<td class="error e" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","pagelet.impex.jobalreadyrunning.error")}, 33); %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.title")}, 42); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.content.text"),
new TagParameter("parameter1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))))}, 48); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageletContentImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Import.button",null)),null)%>"/>
</td>
<td class="button">
<input type="submit" class="button" name="PageletContentExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Pages -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pages.title")}, 71); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.page.text")}, 77); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Includes -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.includes.title")}, 96); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("IncludeExport",null),context.getFormattedValue("Export",null)).addURLParameter(context.getFormattedValue("ExportExecutionDomainUUID",null),context.getFormattedValue(getObject("CurrentChannel:RepositoryDomain:UUID"),null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.include.text")}, 102); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="IncludeExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Page Templates -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagetemplates.title")}, 121); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageVariantTemplateExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.pagetemplate.text")}, 127); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageVariantTemplateExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Component Templates -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.componenttemplates.title")}, 146); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ComponentTemplateExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.componenttemplate.text")}, 152); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ComponentTemplateExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Page Variants -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagevariants.title")}, 171); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageVariantExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.pagevariant.text")}, 177); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="PageVariantExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Components -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.components.title")}, 196); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ComponentExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.component.text")}, 202); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ComponentExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WhiteChannelContent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %><!-- IMPEX: Components -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.whitestore.header")}, 222); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.whitestore.description")}, 227); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ConfirmPrepareChannel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Prepare.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><!-- IMPEX: View Contexts -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.viewcontexts.title")}, 244); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextExport-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.viewcontext.text")}, 250); %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="ViewContextExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- IMPEX: Upload & Download -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.files.title")}, 269); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImportFiles-BrowseDirectory",null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.files.upload.text"),
new TagParameter("parameter1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletExportFiles-BrowseDirectory",null)))))}, 276); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImportFiles-BrowseDirectory",null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.files.view.text"),
new TagParameter("parameter1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletExportFiles-BrowseDirectory",null)))))}, 281); %><% } %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewChannelPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 302); %><% } else { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewChannelPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true"),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 304); %><% } %><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ChannelPageletImpexOverview", null, "308");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",310,e);}if (_boolean_result) { %><script language="JavaScript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Status",null)))),null)%>'", 10000)
</script> 
<% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
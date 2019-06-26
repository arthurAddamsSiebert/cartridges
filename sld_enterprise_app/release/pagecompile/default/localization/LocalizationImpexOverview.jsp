<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations-Start",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Localization.text",null)))}, 3); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ImportExport.text",null)))}, 4); %>
<% URLPipelineAction action314 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Dispatch",null)))),null));String site314 = null;String serverGroup314 = null;String actionValue314 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Dispatch",null)))),null);if (site314 == null){  site314 = action314.getDomain();  if (site314 == null)  {      site314 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup314 == null){  serverGroup314 = action314.getServerGroup();  if (serverGroup314 == null)  {      serverGroup314 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue314, site314, serverGroup314,true)); %>	
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
		<tr>
			<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImportExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0" /></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			<tr>
				<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.TextLocalizationXLIFF.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			<tr class="table_title_description">
				<td width="100%"><% {out.write(localizeISText("sld_enterprise_app.ManageTextLocalization",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-SelectFile",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Imports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> &amp; <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-ExportToXliff",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Exports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% {out.write(localizeISText("sld_enterprise_app.ImportOrExportStorefrontLocalizationTextFromOrInto.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td>
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" class="button" name="LocalizationImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Import.button",null)),null)%>" /></td>
							<td class="button"><input type="submit" class="button" name="LocalizationExportXliff" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Export.button",null)),null)%>" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			<tr>
				<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.TextLocalizationProperties.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			<tr class="table_title_description">
				<td width="100%"><% {out.write(localizeISText("sld_enterprise_app.ManageTextLocalization1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-ExportToProperties",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Exports.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% {out.write(localizeISText("sld_enterprise_app.ExportStorefrontLocalizationTextIntoPropertiesFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td>
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" class="button" name="LocalizationExportProperties" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Export.button",null)),null)%>" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr class="table_title_description">
			<td width="100%">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
					<a  href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Upload.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("sld_enterprise_app.ImportFilesAnd.link",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExportFiles-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Download.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("sld_enterprise_app.ExportFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>
					<% {out.write(localizeISText("sld_enterprise_app.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a  href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Uploaded.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("sld_enterprise_app.ImportFilesAnd.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExportFiles-BrowseDirectory",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Download.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("sld_enterprise_app.ExportFiles.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
			<td>
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Upload.button",null)),null)%>" /></td>
						<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Download.button",null)),null)%>" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewLocalizationImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs"))}, 81); %>
	<% } else { %>
		<% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewLocalizationImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true")}, 83); %>
	<% } %>
<% out.print("</form>"); %>

<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"LocalizationImpexOverview", null, "87");} %>
<% printFooter(out); %>
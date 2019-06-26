<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Paging",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationImportSelectFile_52.LocalizationImportStep1SelectFile.text",null)))}, 4); %>

<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
	<tr>
		<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectFile_52.LocalizationImportSelectFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidateFile")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:SelectedFile:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr>
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%"><% {out.write(localizeISText("LocalizationImportSelectFile_52.YouHaveNotSelectedAFileToImport.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
<% } %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td class="table_title_description" width="100%">
			<% {out.write(localizeISText("LocalizationImportSelectFile_52.Step1Of3NextStepValidateImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>
<% URLPipelineAction action264 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Dispatch",null)))),null));String site264 = null;String serverGroup264 = null;String actionValue264 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Dispatch",null)))),null);if (site264 == null){  site264 = action264.getDomain();  if (site264 == null)  {      site264 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup264 == null){  serverGroup264 = action264.getServerGroup();  if (serverGroup264 == null)  {      serverGroup264 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue264, site264, serverGroup264,true)); %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/ImportFileList", null, "28");} %>
	
	<table class="w e s" width="100%" border="0" cellspacing="0">
		<tr>
			<td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="JobDescription" value="Validate localization import file"/>
							<input type="submit" name="ValidateFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSelectFile_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CSVImport")))).booleanValue() && !((Boolean) ((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
						</td>
						<td class="button">
							<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSelectFile_52.Cancel.button",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!-- Start Page Cursor -->
	<table width="100%">
		<tr>
			<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 54); %>
	<% } %>
<% out.print("</form>"); %>
<% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("start","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ImpexOverview.ImportExport.text",null)))}, 4); %><% URLPipelineAction action58 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null));String site58 = null;String serverGroup58 = null;String actionValue58 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null);if (site58 == null){  site58 = action58.getDomain();  if (site58 == null)  {      site58 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup58 == null){  serverGroup58 = action58.getServerGroup();  if (serverGroup58 == null)  {      serverGroup58 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue58, site58, serverGroup58,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.ImportExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td class="table_header" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.ClassificationCategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ImpexOverview.ManageClassificationCatalog.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-SelectFile",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="ImportCatalogType" value="classification"/><input type="submit" class="button" name="CategoryImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="CategoryExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.PostalData.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ImpexOverview.ManagePostalData.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPostalDataImport-SelectFile",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPostalDataExport-SelectConfiguration",null)))),"selection_link",null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="PostalDataImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="PostalDataExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImpexOverview.UploadImpexFiles.link",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExportFiles-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ImpexOverview.ViewUploadedImpexFiles.link",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExportFiles-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null,null));} %><% } %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.Status.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteImpexJobs")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ImpexOverview.AreYouSureThatYouWantToDeleteTheseImpexProcesses.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="DeleteImpexJobs" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.OK.button",null)),null)%>" class="button"/></td>
<td ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
<td class="button"><input type="submit" name="Refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr> 
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ImpexOverview.YouHaveNotSelectedAnyImportExportProcesses.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><!-- EO delete confirmation --><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("FinishedImpexJobCount", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImpexJobs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td width="100%" class="s" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap" width="1%"><div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('ImpexForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ImpexOverview.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('ImpexForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ImpexOverview.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.Process.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.Start.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexOverview.Duration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s"><% {out.write(localizeISText("ImpexOverview.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ImpexJobs","ImpexJob",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><td class="e s center"><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ImpexJob:UUID"),null)%>"/><input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ImpexJob:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ImpexJob:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ImpexJob:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("ImpexJob:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>disabled<% } else { %><% {Object temp_obj = ((new Double( ((Number) getObject("FinishedImpexJobCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("FinishedImpexJobCount", temp_obj);} %><% } %>/></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImpexJob:ProcessPipelineStartNode"),null).equals(context.getFormattedValue("Validate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImpexJob:ProcessPipelineName"),null).equals(context.getFormattedValue("ProcessCatalogImport",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("ImpexJob:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null))),null)%>" class="table_detail_link2"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","BOType")}, 150); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","ImpexType")}, 150); %> &lt;<% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&gt;</a>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImpexJob:ProcessPipelineName"),null).equals(context.getFormattedValue("ProcessGeoObjectImport",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPostalDataImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("ImpexJob:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null))),null)%>" class="table_detail_link2"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","BOType")}, 152); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","ImpexType")}, 152); %> &lt;<% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&gt;</a>&nbsp;</td><% } else { %><td class="table_detail e s top" nowrap="nowrap">&nbsp;</td><% }} %><% } else { %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("ImpexJob:UUID"),null)))),null)%>" class="table_detail_link2"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","BOType")}, 157); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","ImpexType")}, 157); %> &lt;<% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&gt;</a>&nbsp;</td><% } %><td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","LastExecutionTime")}, 159); %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:LastExecutionDuration"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {out.write(localizeISText("ImpexOverview.Seconds.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","Status")}, 161); %></td> 
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail" colspan="3"><% {out.write(localizeISText("ImpexOverview.ThereAreCurrentlyNoImportOrExportProcesses.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Refresh.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES")))).booleanValue() && ((Boolean) ((( ((Number) getObject("FinishedImpexJobCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ConfirmDeleteImpexJobs" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexOverview.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td><% } %></tr>
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %><script type="text/javascript" language="JavaScript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Start",null)))),null)%>'", 10000)
</script><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
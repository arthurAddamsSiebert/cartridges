<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerManagement_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CustomerImpexOverview_52.Customers.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Status",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CustomerImpexOverview_52.ImportExport_Plain",null)))}, 4); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CustomerImpexOverview_52.ImportExport_HTMLEntity",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CustomerImpexOverview_52.OnlyIndividualCustomersXMLOldXMLFormat.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CustomerImpexOverview_52.ManageCustomer",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IndividualCustomers:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("CustomerImpexOverview_52.Exports",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExport_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OnlyB2C",null),context.getFormattedValue("true",null)))),null)%>" class="selection_link"><% {out.write(localizeISText("CustomerImpexOverview_52.Exports.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> 
<% } %><% {out.write(localizeISText("CustomerImpexOverview_52.InTheOldXmlFileFormat.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% URLPipelineAction action528 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Dispatch",null)))),null));String site528 = null;String serverGroup528 = null;String actionValue528 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Dispatch",null)))),null);if (site528 == null){  site528 = action528.getDomain();  if (site528 == null)  {      site528 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup528 == null){  serverGroup528 = action528.getServerGroup();  if (serverGroup528 == null)  {      serverGroup528 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexFormB2C");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue528, site528, serverGroup528,true)); %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="OnlyB2C" value="true"/>
<input type="submit" class="button" name="UserExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerImpexOverview_52.Export.button",null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IndividualCustomers:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% } %><% URLPipelineAction action529 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Dispatch",null)))),null));String site529 = null;String serverGroup529 = null;String actionValue529 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Dispatch",null)))),null);if (site529 == null){  site529 = action529.getDomain();  if (site529 == null)  {      site529 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup529 == null){  serverGroup529 = action529.getServerGroup();  if (serverGroup529 == null)  {      serverGroup529 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue529, site529, serverGroup529,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CustomerImpexOverview_52.CustomersXML.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CustomerImpexOverview_52.ManageCustomerWithXML",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExport_52-List",null)))),"selection_link",null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="UserImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerImpexOverview_52.Import.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="UserExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerImpexOverview_52.Export.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CustomerImpexOverview_52.IndividualCustomersCSV.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% {out.write(localizeISText("CustomerImpexOverview_52.ManageIndividualCustomerWithCSV",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="UserCSVImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerImpexOverview_52.Import.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CustomerImpexOverview_52.ImportAndExportFiles.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {out.write(localizeISText("CustomerImpexOverview_52.UploadImportFilesDownloadExportFiles",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImportFiles_52-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExportFiles_52-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CustomerImpexOverview_52.ViewUploadedImportFilesDownloadExportFiles",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImportFiles_52-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExportFiles_52-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null));} %> 
<% } %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="ImportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerImpexOverview_52.Upload.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerImpexOverview_52.Download.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewCustomerImpex_52"),
new TagParameter("impexjobs",getObject("ImpexJobs"))}, 117); %><% } else { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewCustomerImpex_52"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true")}, 119); %><% } %><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerImpexOverview_52", null, "123");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><script language="javascript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerImpex_52-Status",null)))),null)%>'", 10000)
</script><% } %><% printFooter(out); %>
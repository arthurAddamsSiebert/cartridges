<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><script language="JavaScript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),null)%>'", 10000)
</script><% } %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","GetImpexType")}, 9); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexMonitor.Monitor.text1",null)),null)),
new TagParameter("text",getObject("ImpexType"))}, 10); %><% URLPipelineAction action59 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null));String site59 = null;String serverGroup59 = null;String actionValue59 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null);if (site59 == null){  site59 = action59.getDomain();  if (site59 == null)  {      site59 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup59 == null){  serverGroup59 = action59.getServerGroup();  if (serverGroup59 == null)  {      serverGroup59 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue59, site59, serverGroup59,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 14); %> <% {out.write(localizeISText("CatalogImpexMonitor.Monitor.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" wrap width="100%"><% {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 20); %> <% {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part2",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),"breadcrumb",null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 25); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 25); %> <% {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndIsCurrentlyRunning.table_detail",null,null,context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:LastExecutionTime"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:LastExecutionTime"),new Integer(DATE_TIME)),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s" width="1%" nowrap><% {out.write(localizeISText("CatalogImpexMonitor.CurrentAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;<% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 30); %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" wrap width="100%"><% {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 36); %> <% {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part2",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 41); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 41); %> <% {out.write(localizeISText("CatalogImpexMonitor.JobIsCurrentlyRunning.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s" width="1%" nowrap><% {out.write(localizeISText("CatalogImpexMonitor.CurrentActionPreparing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 46); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 46); %>...</td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 53); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 53); %> <% {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndAborted.table_detail1.part1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionTime")}, 53); %> <% {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndAborted.table_detail1.part2",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionEndTime")}, 53); %>.</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("JobConfiguration:ProcessPipelineName"),null).equals(context.getFormattedValue("ProcessBMEcatImport",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:UnknownLanguage")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:LocaleNotInstalled")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.TheLanguageCodeSpecifiedYourBMEImportFileNotSupported.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SameVersionAndLanguage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.ThereAlreadyExistsACatalogWithTheSameVersionAndLanguage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:AnotherVersionInstalled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.ThereAlreadyExistsACatalogWithTheSameIDAndLanguage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:InitialImportRequired"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.CatalogUpdatesCanOnlyBeDoneAfterAnInitial.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:CatalogVersionsNotEqual"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.TheCatalogVersionInYourBMEImportFileDoesNotMatch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:InvalidTransactionType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.InvalidBMETransactionDetected.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:UpdateCountIsValid")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:UpdateCountIsValid"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_detail error e w s" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.TheUpdateCountIsInvalid.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 115); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 115); %> <% {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndFinished.table_detail2.part1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionTime")}, 115); %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:LogCount_Error")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LogCount_Warn")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndFinished.table_detail2.part2a",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndFinished.table_detail2.part2b",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionEndTime")}, 115); %>.</td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.LogFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="fielditem2" wrap width="100%"><textarea class="inputfield_en" cols="70" rows="15"><% {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null))),null)%>" class="table_detail_link2"><% {out.write(localizeISText("CatalogImpexMonitor.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><% {out.write(localizeISText("CatalogImpexMonitor.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("JobConfiguration:ProcessPipelineStartNode"),null).equals(context.getFormattedValue("Export",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s n">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexMonitor.ExportFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:ExportFileDoesNotExist"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(context.getFormattedValue("export/",null) + context.getFormattedValue(getObject("JobConfiguration:ExportDirectory"),null),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("JobConfiguration:SelectedFile"),null))),null)%>" class="selection_link"><% {out.write(localizeISText("CatalogImpexMonitor.DownloadExportFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} %> &lt;<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&gt;</a></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><% {out.write(localizeISText("CatalogImpexMonitor.AnExportFileDoesNotExistOrItHasNoContent.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% }} %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "185");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
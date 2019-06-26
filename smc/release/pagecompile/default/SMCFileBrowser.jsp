<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% URLPipelineAction action92 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Dispatch",null)))),null));String site92 = null;String serverGroup92 = null;String actionValue92 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Dispatch",null)))),null);if (site92 == null){  site92 = action92.getDomain();  if (site92 == null)  {      site92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup92 == null){  serverGroup92 = action92.getServerGroup();  if (serverGroup92 == null)  {      serverGroup92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("fileBrowserForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue92, site92, serverGroup92,true)); %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("SMCFileBrowser-Browse",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "9");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("smc.FileBrowser.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling -->
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FILE_NOT_READABLE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.TheFilesYouVeRequestedCouldNotBeRead.error","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ERROR_CODE_TMP_ZIP_CREATION",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.ThereWasAnErrorCreatingYourZipFile.error","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ERROR_CODE_ZIP_FAULTY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.SomeOfTheFilesYouRequestedCouldNotBePacked.error","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SessionKeyFaultTempZip"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.YouCanDownloadTheIncompleteZipFile.error",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-DownloadTempFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ZipFile",null),context.getFormattedValue(getObject("SessionKeyFaultTempZip"),null)))),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SMCFileBrowser.PleaseTryAgain.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ERROR_CODE_FILE_NOT_FOUND",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.TheFileYouRequestedCouldNotBeFound.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("GENERAL_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.ThereWasAnErrorDownloadingYourFiles.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% }}}}} %></tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("downloadSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><iframe src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-DownloadTempFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ZipFile",null),context.getFormattedValue(getObject("SessionKeyFaultTempZip"),null)))),null)%>" style="visibility:hidden" width="0" height="0">
</iframe><% } else { %> 
<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("smc.FileBrowser.subject",null))),
new TagParameter("okbtnname","Download selected"),
new TagParameter("type","nse")}, 62); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("downloadAll")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SessionKeyFaultTempZip")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><iframe src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-DownloadTempFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ZipFile",null),context.getFormattedValue(getObject("SessionKeyFaultTempZip"),null)))),null)%>" style="visibility:hidden" width="0" height="0">
</iframe><% }}} %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("SMCFileBrowser.SelectAnApplicationServerAndBrowseTheFileSystem.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("FileBrowserFile")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box aldi">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SMCFileBrowser.ThisDirectoryCouldNotBeBrowsed.error","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else { %><!-- Main Area -->
<tr>
<!-- Main Content -->
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="aldi">
<colgroup>
<col width="5%">
<col width="5%">
<col width="50%">
<col width="8%">
<col width="20%">
<col width="12%">
</colgroup><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Pageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td colspan="6" class="table_detail" nowrap="nowrap"><% {Object temp_obj = (getObject("FileBrowserFile:ParentsIterator")); getPipelineDictionary().put("Iterator", temp_obj);} %><% while (loop("Iterator","CurrentFile",null)) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("CurrentFile:FormattedPath"),null)))),null)%>" class="breadcrumb"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentFile:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.Overview.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentFile:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></a> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("CurrentFile") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
&gt;
<% } %><% } %></td>
</tr>
<tr>
<td class="table_header e n" align="center">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_detail_link center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('fileBrowserForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("smc.SelectAll.link1","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_detail_link center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('fileBrowserForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("smc.ClearAll.link1","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td> 
<td class="table_header e n" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortField"),null).equals(context.getFormattedValue("Type",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("Type",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null))),null)%>"><% {out.write(localizeISText("smc.Type.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("Type",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null))),null)%>"><% {out.write(localizeISText("smc.Type.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td class="table_header e n"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortField"),null).equals(context.getFormattedValue("Name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("Name",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null))),null)%>"><% {out.write(localizeISText("smc.Name.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("Name",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null))),null)%>"><% {out.write(localizeISText("smc.Name.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td class="table_header e n"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortField"),null).equals(context.getFormattedValue("Size",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("Size",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null))),null)%>"><% {out.write(localizeISText("smc.Size.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("Size",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null))),null)%>"><% {out.write(localizeISText("smc.Size.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td class="table_header e n" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortField"),null).equals(context.getFormattedValue("LastModified",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("LastModified",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null))),null)%>"><% {out.write(localizeISText("smc.LastModified.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null))).addURLParameter(context.getFormattedValue("SortField",null),context.getFormattedValue("LastModified",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null))),null)%>"><% {out.write(localizeISText("smc.LastModified.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td class="table_header n"><% {out.write(localizeISText("SMCFileBrowser.Download.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Pageable","File",null)) { %><% 
									String selectedIDs = String.valueOf(getPipelineDictionary().get("SelectedIDs"));
									if (selectedIDs != null && !selectedIDs.isEmpty())
									{
										String objectID = String.valueOf(getObject("File:FormattedPath"));
										if (objectID != null && !objectID.isEmpty() && (selectedIDs.startsWith(objectID + ";") || selectedIDs.indexOf(";" + objectID + ";" ) != -1))
										{
											getPipelineDictionary().put("select", objectID);
										}
									}	
								%><tr>
<td class="table_detail_link e s" align="center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FormattedPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FormattedPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("select")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("select"),null).equals(context.getFormattedValue(getObject("File:FormattedPath"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %> checked="checked"<% } %> />
</td>
<td class="table_detail e s" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("File:File")).booleanValue() || ((Boolean) getObject("File:Directory")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("File:Directory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("File:FormattedPath"),null)))),null)%>" class="table_detail_link">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/folder.png" border="0" alt=""/>
</a><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:Size"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/file.png" border="0" alt=""/><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("file",null),context.getFormattedValue(getObject("File:FormattedPath"),null))).addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("dir"),null))),null)%>" class="table_detail_link2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/file.png" border="0" alt=""/>
</a><% } %><% }} %></td>
<td class="table_detail top e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("File:File")).booleanValue() || ((Boolean) getObject("File:Directory")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("File:Name(FileBrowserFile:Root)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("File:Directory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("File:FormattedPath"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("File:Name(FileBrowserFile:Root)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:Size"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("file",null),context.getFormattedValue(getObject("File:FormattedPath"),null))).addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("dir"),null))),null)%>" class="table_detail_link2"><% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %><% }} %></td>
<td class="table_detail top e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("File:File"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %><% 
												Long sizeInByte = (Long) getObject("File:Size");
												String unit = null;
												java.math.BigDecimal size = null;
												
												if (sizeInByte > (1024 * 1024)) // MB
												{
													unit = "MB";
													size = new java.math.BigDecimal(sizeInByte)
																		.divide(new java.math.BigDecimal(1024).pow(2), 
																					2, 
																					java.math.BigDecimal.ROUND_HALF_UP);
												}
												else if (sizeInByte > 1024) // KB
												{
													unit = "KB";
													size = new java.math.BigDecimal(sizeInByte)
																		.divide(new java.math.BigDecimal(1024), 
																					2, 
																					java.math.BigDecimal.ROUND_HALF_UP);
												}
												else // byte
												{
													unit = "B";
													size = new java.math.BigDecimal(sizeInByte);
												}
												
												getPipelineDictionary().put("unit", unit);
												getPipelineDictionary().put("calculatedSite", size);
											%><% {String value = null;try{value=context.getFormattedValue(getObject("calculatedSite"),"#.##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail top e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("File:File")).booleanValue() || ((Boolean) getObject("File:Directory")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",260,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"yyyy-MM-dd hh:mm:ss",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {261}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail top s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("File:File")).booleanValue() || ((Boolean) getObject("File:Directory")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCFileBrowser-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("file",null),context.getFormattedValue(getObject("File:FormattedPath"),null))).addURLParameter(context.getFormattedValue("asZip",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("dir",null),context.getFormattedValue(getObject("dir"),null))),null)%>" class="table_detail_link2"><% {out.write(localizeISText("SMCFileBrowser.DownloadZip.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %>
&nbsp;
<% } %></td>
</tr><% } %><tr>
<td colspan="6">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="submit" name="downloadAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCFileBrowser.DownloadAll.button",null)),null)%>" class="button"/>
<input type="hidden" name="dir" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FileBrowserFile:FormattedPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="hidden" name="SortField" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortField"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {287}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="hidden" name="SortOrder" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortOrder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {288}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="button">
<input type="submit" name="downloadSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCFileBrowser.DownloadSelected.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr><% } else { %><tr>
<td class="table_detail top" colspan="6"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FileBrowserFile:Root"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCFileBrowser.NoDirectoriesConfigured.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SMCFileBrowser.ThisDirectoryIsEmpty.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
</td>
</tr>
<tr><td><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div></td></tr>
<!-- Start Page Cursor -->
<tr><td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Pageable"),
new TagParameter("variablepagesize","true")}, 317); %></td></tr>
<!-- EO Start Page Cursor -->
<!-- /Content Area --><% } %></table><% out.print("</form>"); %><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.ImportFiles.text",null)))}, 5); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CalendarImportSourceFiles_52.UploadImportFiles.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% URLPipelineAction action508 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null));String site508 = null;String serverGroup508 = null;String actionValue508 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null);if (site508 == null){  site508 = action508.getDomain();  if (site508 == null)  {      site508 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup508 == null){  serverGroup508 = action508.getServerGroup();  if (serverGroup508 == null)  {      serverGroup508 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OverwriteConfirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue508, site508, serverGroup508,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("CalendarImportSourceFiles_52.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% while (loop("ExistingFiles",null,null)) { %>- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %><% {out.write(localizeISText("CalendarImportSourceFiles_52.OverwriteAll.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
<td valign="bottom">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="FileName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.OK.button",null)),null)%>" class="button"/>
</td>
<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="button">
<input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><% } %><% URLPipelineAction action509 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null));String site509 = null;String serverGroup509 = null;String actionValue509 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null);if (site509 == null){  site509 = action509.getDomain();  if (site509 == null)  {      site509 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup509 == null){  serverGroup509 = action509.getServerGroup();  if (serverGroup509 == null)  {      serverGroup509 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue509, site509, serverGroup509,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.Files.subject",null))),
new TagParameter("cancelbtnname","Paging"),
new TagParameter("okbtnname","DeleteFiles"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.DeleteAllSelectedFiles.message",null)))}, 48); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles")))).booleanValue() && !((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.Files.subject",null))),
new TagParameter("type","nse")}, 50); %><% }} %></table><% out.print("</form>"); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("CalendarImportSourceFiles_52.TheTableBelowShowsTheCalendarImportFiles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CalendarImportSourceFiles_52.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.SizeOfSelectedFileExceedsAllowedSize.message",null)))}, 67); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.SelectedFileNotBeUploadedCausedByNetworkOrFileNotBeStoredAtServer.message",null)))}, 69); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileIsEmpty",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.SelectedFileNotBeUploadedBecauseFileLengthZeroOrFileNotExist.message",null)))}, 71); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AcquisitionFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.CannotDeleteThisObject",null)),null) + context.getFormattedValue(":",null) + context.getFormattedValue(getObject("AcquisitionResult:ContentionResource:Name"),null) + context.getFormattedValue(". ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.ItIsUsedByTheFollowingProcess",null)),null) + context.getFormattedValue(":",null) + context.getFormattedValue(getObject("AcquisitionResult:ContentionProcess:Name"),null) + context.getFormattedValue(".",null))}, 73); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.HaveNotSelectedFileToUpload.message",null)))}, 75); %><% }}}}} %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% URLPipelineAction action510 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Upload",null)))),null));String site510 = null;String serverGroup510 = null;String actionValue510 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Upload",null)))),null);if (site510 == null){  site510 = action510.getDomain();  if (site510 == null)  {      site510 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup510 == null){  serverGroup510 = action510.getServerGroup();  if (serverGroup510 == null)  {      serverGroup510 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ImportFileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue510, site510, serverGroup510,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox w e s"> 
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %> 
<tr>
<td class="infobox_title" width="1%" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("CalendarImportSourceFiles_52.UploadFile.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="left"><input type="file" name="File" value="" class="inputfield_en" size="60"/></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0"/></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.Upload.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td width="100%">&nbsp;</td>
</tr><% } %><tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% out.print("</form>"); %><% } %><% URLPipelineAction action511 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null));String site511 = null;String serverGroup511 = null;String actionValue511 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null);if (site511 == null){  site511 = action511.getDomain();  if (site511 == null)  {      site511 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup511 == null){  serverGroup511 = action511.getServerGroup();  if (serverGroup511 == null)  {      serverGroup511 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCalendarImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportFilesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue511, site511, serverGroup511,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CalendarImportSourceFiles_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CalendarImportSourceFiles_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header s"><% {out.write(localizeISText("CalendarImportSourceFiles_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("CalendarImportSourceFiles_52.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Files","File",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><td class="e s center" width="1%">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td><% } %> 
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 145); %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s"><% {out.write(localizeISText("CalendarImportSourceFiles_52.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CalendarImportSourceFiles_52.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><!-- Start Page Cursor -->
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 177); %><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
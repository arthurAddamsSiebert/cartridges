<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.ShippingMethodsImportStep1SelectFile.text",null))),
new TagParameter("id","1")}, 4); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingMethodImportSelectFile.ShippingMethodsImportSelectFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShippingImportForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ShippingMethodImportSelectFile.HaveNotSelectedFileToImport.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% URLPipelineAction action440 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Dispatch",null)))),null));String site440 = null;String serverGroup440 = null;String actionValue440 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Dispatch",null)))),null);if (site440 == null){  site440 = action440.getDomain();  if (site440 == null)  {      site440 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup440 == null){  serverGroup440 = action440.getServerGroup();  if (serverGroup440 == null)  {      serverGroup440 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OverwriteConfirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue440, site440, serverGroup440,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ShippingMethodImportSelectFile.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% while (loop("ExistingFiles",null,null)) { %>- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %><% {out.write(localizeISText("ShippingMethodImportSelectFile.OverwriteAll.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
<td valign="bottom">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="FileName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.OK.button",null)),null)%>" class="button"/>
</td>
<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="button">
<input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ShippingMethodImportSelectFile.Step1Of3NextStepValidateImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ShippingMethodImportSelectFile.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.SizeOfSelectedFileExceedsTheAllowedSize.message",null)))}, 65); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.SelectedFileCouldNotBeUploadedCausedByNetworkOrFileNotBeStoredAtServer.message",null)))}, 67); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileIsEmpty",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.SelectedFileCouldNotBeUploadedBecauseFileLengthZeroOrFileNotExist.message",null)))}, 69); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AcquisitionFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.CannotDeleteThisObject",null)),null) + context.getFormattedValue(":",null) + context.getFormattedValue(getObject("AcquisitionResult:ContentionResource:Name"),null) + context.getFormattedValue(". ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.ItIsUsedByTheFollowingProcess",null)),null) + context.getFormattedValue(":",null) + context.getFormattedValue(getObject("AcquisitionResult:ContentionProcess:Name"),null) + context.getFormattedValue(".",null))}, 71); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.HaveNotSelectedFileToUpload.message",null)))}, 73); %><% }}}}} %></table><% URLPipelineAction action441 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Upload",null)))),null));String site441 = null;String serverGroup441 = null;String actionValue441 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Upload",null)))),null);if (site441 == null){  site441 = action441.getDomain();  if (site441 == null)  {      site441 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup441 == null){  serverGroup441 = action441.getServerGroup();  if (serverGroup441 == null)  {      serverGroup441 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ImportFileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue441, site441, serverGroup441,true)); %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox w e s"> 
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr> 
<tr>
<td class="infobox_title" width="1%" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ShippingMethodImportSelectFile.UploadFile.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="left"><input type="file" name="File" value="" class="inputfield_en" size="60"/></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0"/></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.Upload.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action442 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Dispatch",null)))),null));String site442 = null;String serverGroup442 = null;String actionValue442 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Dispatch",null)))),null);if (site442 == null){  site442 = action442.getDomain();  if (site442 == null)  {      site442 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup442 == null){  serverGroup442 = action442.getServerGroup();  if (serverGroup442 == null)  {      serverGroup442 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelShippingMethodImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShippingMethodImportSelectFileForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue442, site442, serverGroup442,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
<tr>
<td class="table_header s center"><% {out.write(localizeISText("ShippingMethodImportSelectFile.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("ShippingMethodImportSelectFile.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("ShippingMethodImportSelectFile.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Files","File",null)) { %><tr>
<td class="s center top" width="70">
<input type="radio" name="ShippingImportForm_SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("ShippingImportForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("File:FullName"),null).equals(context.getFormattedValue(getObject("ShippingImportForm:SelectedFile:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedFile")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("File:FullName"),null).equals(context.getFormattedValue(getObject("SelectedFile"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="table_detail w s"><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 118); %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("ShippingMethodImportSelectFile.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ValidateFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodImportSelectFile.Cancel.button",null)),null)%>" class="button"/></td>
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
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 147); %><% } %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
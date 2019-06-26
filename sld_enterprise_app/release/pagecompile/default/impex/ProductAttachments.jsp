<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview.ProductAttachmentUpload.table_header",null)))}, 5); %><% {Object temp_obj = ("Attachments"); getPipelineDictionary().put("AttachmentsTitle", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttachments.AttachmentSearch.value",null))); getPipelineDictionary().put("AttachmentsSearchTitle", temp_obj);} %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview.ProductImageUpload.table_header",null)))}, 9); %><% {Object temp_obj = ("Images"); getPipelineDictionary().put("AttachmentsTitle", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttachments.ImageSearch.value",null))); getPipelineDictionary().put("AttachmentsSearchTitle", temp_obj);} %><% } %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductAttachmentUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttachments.ProductAttachments.value",null))); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %><% } else { %><td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImpexOverview.ProductImageUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttachments.ProductImages.value",null))); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %><% } %></tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ProductAttachments.YouCanUploadAndManageFilesForOtherLanguages.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action597 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));String site597 = null;String serverGroup597 = null;String actionValue597 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null);if (site597 == null){  site597 = action597.getDomain();  if (site597 == null)  {      site597 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup597 == null){  serverGroup597 = action597.getServerGroup();  if (serverGroup597 == null)  {      serverGroup597 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SetLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue597, site597, serverGroup597,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="BrowseDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title_description" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductAttachments.TheTreeShowsTheProductDirectoyStructure.table_title_attachment_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductAttachments.TheTreeShowsTheProductDirectoyStructure.table_title_image_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> <% {out.write(localizeISText("ProductAttachments.TheTreeShowsTheProductDirectoyStructure.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
<br/><% {out.write(localizeISText("ProductAttachments.TheTableBelowTheTreeShowsTheContents.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ContentSelect.Directories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("StartsOrEndsWithDot",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ContainsInvalidCharacters",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("IsInvalidName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("StartsOrEndsWithWhiteSpace",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ProductAttachments.DirectoryCouldNotBeCreatedOrRenamed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% } %><% URLPipelineAction action598 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));String site598 = null;String serverGroup598 = null;String actionValue598 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null);if (site598 == null){  site598 = action598.getDomain();  if (site598 == null)  {      site598 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup598 == null){  serverGroup598 = action598.getServerGroup();  if (serverGroup598 == null)  {      serverGroup598 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddDirFile");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue598, site598, serverGroup598,true)); %><table class="infobox w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="DirectoryName"><% {out.write(localizeISText("ImageFileUpload.NewDirectory.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="text" name="DirectoryName" id="DirectoryName" class="inputfield_en" maxlength="40" size="40" />
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="AddDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentProcessingSelectLabel.Add.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action599 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));String site599 = null;String serverGroup599 = null;String actionValue599 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null);if (site599 == null){  site599 = action599.getDomain();  if (site599 == null)  {      site599 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup599 == null){  serverGroup599 = action599.getServerGroup();  if (serverGroup599 == null)  {      serverGroup599 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DirForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue599, site599, serverGroup599,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteDirectory")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedDirectoryPath")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttachments.Directory.subject",null))),
new TagParameter("cancelbtnname","Paging"),
new TagParameter("okbtnname","DeleteDirectory"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ContentUpload.DeleteSelectedDirectory.message",null)))}, 117); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteDirectory")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("SelectedDirectoryPath")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttachments.Directory.subject",null))),
new TagParameter("type","nse")}, 119); %><% }} %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="s w e">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EditDirectorySelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Locale:LocaleID")),
new TagParameter("editDirectorySelection","yes"),
new TagParameter("handlerPipeline","ViewProductAttachments"),
new TagParameter("parametername1","Secure"),
new TagParameter("parametervalue1",getObject("Secure")),
new TagParameter("parametername","LocaleId"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("directorySelection","yes")}, 131); %><% } else { %><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Locale:LocaleID")),
new TagParameter("handlerPipeline","ViewProductAttachments"),
new TagParameter("parametername1","Secure"),
new TagParameter("parametervalue1",getObject("Secure")),
new TagParameter("parametername","LocaleId"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("directorySelection","yes")}, 142); %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="EditDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowser.Rename",null)),null)%>" class="button"/>
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="button">
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ConfirmDeleteDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentsTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttachments.Files.subject",null))),
new TagParameter("cancelbtnname","Paging"),
new TagParameter("okbtnname","DeleteFiles"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("sld_enterprise_app.DeleteAllSelectedFiles.message",null)))}, 186); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles")))).booleanValue() && !((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttachments.Files.subject",null))),
new TagParameter("type","nse")}, 188); %><% }} %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% {Object temp_obj = (split(context.getFormattedValue(getObject("FileName"),null),(String)("\\."))); getPipelineDictionary().put("extension", temp_obj);} %><% while (loop("extension","ext",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasNext("ext") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ext")); getPipelineDictionary().put("FileNameExtension", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FileNameExtension"),null).equals(context.getFormattedValue("zip",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><input type="hidden" name="FileName_<% {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% while (loop("ExistingFiles",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FileNameExtension"),null).equals(context.getFormattedValue("zip",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %>
- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:RelativePath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } else { %>
- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
<input type="hidden" name="FileName_<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><% {out.write(localizeISText("ProductAttachments.OverwriteAll.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
<td valign="bottom">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCategory.OK.button",null)),null)%>" class="button"/>
</td>
<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUploadErrors.isml", null, "238");} %></table>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr>
<td class="infobox_title" width="100%" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentsSearchTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {242}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table border="0" cellpadding="0" cellspacing="1" width="100%" class="infobox w e s">
<tr>
<td class="infobox_item left" width="100%"><% URLPipelineAction action600 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseDirectory",null)))),null));String site600 = null;String serverGroup600 = null;String actionValue600 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseDirectory",null)))),null);if (site600 == null){  site600 = action600.getDomain();  if (site600 == null)  {      site600 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup600 == null){  serverGroup600 = action600.getServerGroup();  if (serverGroup600 == null)  {      serverGroup600 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-BrowseDirectory",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue600, site600, serverGroup600,true)); %><table width="80%">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="Expression"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="text" name="Expression" id="Expression" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Expression"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {258}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {264}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {265}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="search" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentUpload.Search.button",null)),null)%>" class="button"/>
<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {267}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
<td class="infobox_item right"><% URLPipelineAction action601 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Upload",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(getObject("Secure"),null))),null));String site601 = null;String serverGroup601 = null;String actionValue601 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Upload",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(getObject("Secure"),null))),null);if (site601 == null){  site601 = action601.getDomain();  if (site601 == null)  {      site601 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup601 == null){  serverGroup601 = action601.getServerGroup();  if (serverGroup601 == null)  {      serverGroup601 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Upload",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(getObject("Secure"),null))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ProductAttachmentsUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue601, site601, serverGroup601,true)); %><table>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="UploadFile"><% {out.write(localizeISText("sld_enterprise_app.UploadFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="file" name="File" id="UploadFile" value="" class="inputfield_en" size="60"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {289}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {290}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImportSourceFiles.Upload.button",null)),null)%>" class="button"/>
<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {292}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {293}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",305,e);}if (_boolean_result) { %><% URLPipelineAction action602 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));String site602 = null;String serverGroup602 = null;String actionValue602 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null);if (site602 == null){  site602 = action602.getDomain();  if (site602 == null)  {      site602 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup602 == null){  serverGroup602 = action602.getServerGroup();  if (serverGroup602 == null)  {      serverGroup602 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue602, site602, serverGroup602,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",308,e);}if (_boolean_result) { %><!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
<tr>
<td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("NewProductSetChannelAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header s"><% {out.write(localizeISText("ChannelColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" width="100%"><% {out.write(localizeISText("ContentSelect.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Files","File",null)) { %><tr>
<td class="e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {337}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {338}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",338,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",341,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>" class="table_detail_link"><% } else { %><a href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null)),null)%>" class="table_detail_link" target="_blank"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {346}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 348); %></td>
</tr><% } %><tr>
<td align="right" width="100%" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {357}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {358}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {359}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {360}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td class="table_detail" colspan="3"><% {out.write(localizeISText("PageletImportSourceFiles.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<!-- Start Page Cursor -->
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table><% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Files"),
new TagParameter("variablepagesize","true")}, 379); %><% out.print("</form>"); %><% } else { %><% URLPipelineAction action603 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));String site603 = null;String serverGroup603 = null;String actionValue603 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null);if (site603 == null){  site603 = action603.getDomain();  if (site603 == null)  {      site603 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup603 == null){  serverGroup603 = action603.getServerGroup();  if (serverGroup603 == null)  {      serverGroup603 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue603, site603, serverGroup603,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","checkbox"),
new TagParameter("ThumbnailTemplate","inc/ProductThumbnail"),
new TagParameter("FilesIterator",getObject("Files"))}, 386); %><!-- the functional buttons at the bottom -->
<table class="w e s" width="100%" border="0" cellspacing="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",392,e);}if (_boolean_result) { %><tr>
<td class="table_detail"><% {out.write(localizeISText("PageletImportSourceFiles.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td align="left" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td nowrap="nowrap" class="button">
<div id="A"><input onclick = "javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" type="button" name="selectrall" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletLabels.SelectAll.link",null)),null)%>" class="button"/></div>
<div id="B" style="display:none"><input onclick = "javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" type="button" name="selectrall" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSetChannelAssignment.ClearAll.link",null)),null)%>" class="button"/></div>
</td>
</tr>
</table>
</td>
<td align="right" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {412}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {413}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {414}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {415}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan = "5"><% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("parametervalue",getObject("Expression")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Files"),
new TagParameter("parametername","Expression"),
new TagParameter("variablepagesize","true")}, 429); %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
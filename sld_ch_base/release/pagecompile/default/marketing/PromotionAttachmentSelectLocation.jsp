<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionAttachment-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionAttachmentSelectLocation.SelectFile.text",null)))}, 5); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.SelectFileFromPromotionDirectory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% {Object temp_obj = ("Promotion Attachments"); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttachmentFormLocationNotSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.FileIsMandatoryPleaseSelectAFile.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.ClickOnTheFolderNameToViewTheContents.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n s w e">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("RootDirectory:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Promotion:UUID")),
new TagParameter("parametervalue7",getObject("LocaleId")),
new TagParameter("parametervalue6",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("AttachmentForm:Location:Value")),
new TagParameter("parametervalue3",getObject("AttachmentForm:Description:Value")),
new TagParameter("parametername1",getObject("AttachmentForm:ContentType:QualifiedName")),
new TagParameter("parametervalue2",getObject("AttachmentForm:DisplayName:Value")),
new TagParameter("parametervalue1",getObject("AttachmentForm:ContentType:Value")),
new TagParameter("parametername2",getObject("AttachmentForm:DisplayName:QualifiedName")),
new TagParameter("parametername3",getObject("AttachmentForm:Description:QualifiedName")),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("handlerPipeline","ViewPromotionAttachment"),
new TagParameter("parametername4",getObject("AttachmentForm:Location:QualifiedName")),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","PromotionUUID"),
new TagParameter("parametername6","ChannelID"),
new TagParameter("parametername7","LocaleId")}, 42); %> 
<% } else { %><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Promotion:UUID")),
new TagParameter("parametervalue7",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("AttachmentForm:Location:Value")),
new TagParameter("parametervalue4",getObject("AttachmentForm:Description:Value")),
new TagParameter("parametervalue3",getObject("AttachmentForm:DisplayName:Value")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametervalue2",getObject("AttachmentForm:ContentType:Value")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("parametername2",getObject("AttachmentForm:ContentType:QualifiedName")),
new TagParameter("parametername3",getObject("AttachmentForm:DisplayName:QualifiedName")),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("handlerPipeline","ViewPromotionAttachment"),
new TagParameter("parametername4",getObject("AttachmentForm:Description:QualifiedName")),
new TagParameter("parametername5",getObject("AttachmentForm:Location:QualifiedName")),
new TagParameter("parametername","PromotionUUID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 54); %> 
<% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% URLPipelineAction action315 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionAttachment-Dispatch",null)))),null));String site315 = null;String serverGroup315 = null;String actionValue315 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionAttachment-Dispatch",null)))),null);if (site315 == null){  site315 = action315.getDomain();  if (site315 == null)  {      site315 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup315 == null){  serverGroup315 = action315.getServerGroup();  if (serverGroup315 == null)  {      serverGroup315 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionAttachment-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue315, site315, serverGroup315,true)); %><input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:ContentType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:ContentType:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProcessType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DirectoryPath"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><input type="hidden" name="KeyPrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("KeyPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><tr>
<td class="table_header s"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Files","File",null)) { %><tr>
<td class="table_detail center s" width="1%"><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:Location:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:ContentDescriptor"),null).equals(context.getFormattedValue(getObject("Attachment_Location"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail w s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(pad(context.getFormattedValue(getObject("File:ContentDescriptor"),null),((Number)(new Double(4))).intValue()),null).toLowerCase()),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link" target="_blank"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>" class="table_detail_link"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 100); %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("PromotionAttachmentSelectLocation.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><input type="submit" name="SelectedLocation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionAttachmentSelectLocation.OK.button",null)),null)%>" class="button"/><% } %></td>
<td class="button">
<input type="hidden" name="OldLocation" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttachmentForm:Location:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CancelLocationSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionAttachmentSelectLocation.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Promotion:UUID")),
new TagParameter("parametervalue7",getObject("DirectoryPath")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("AttachmentForm:Location:Value")),
new TagParameter("parametervalue4",getObject("AttachmentForm:Description:Value")),
new TagParameter("parametervalue3",getObject("AttachmentForm:DisplayName:Value")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametervalue2",getObject("AttachmentForm:ContentType:Value")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("parametername2",getObject("AttachmentForm:ContentType:QualifiedName")),
new TagParameter("parametername3",getObject("AttachmentForm:DisplayName:QualifiedName")),
new TagParameter("pageable","Files"),
new TagParameter("pipeline","ViewPromotionAttachment-Paging"),
new TagParameter("parametername4",getObject("AttachmentForm:Description:QualifiedName")),
new TagParameter("parametername5",getObject("AttachmentForm:Location:QualifiedName")),
new TagParameter("parametername","PromotionUUID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","DirectoryPath"),
new TagParameter("parametername8","ChannelID"),
new TagParameter("parametername9","LocaleId"),
new TagParameter("parametervalue9",getObject("LocaleId")),
new TagParameter("parametervalue8",getObject("CurrentChannel:UUID"))}, 143); %> 
</tr>
</table><% } else { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Promotion:UUID")),
new TagParameter("parametervalue7",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue6",getObject("DirectoryPath")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("AttachmentForm:Location:Value")),
new TagParameter("parametervalue3",getObject("AttachmentForm:Description:Value")),
new TagParameter("parametername1",getObject("AttachmentForm:ContentType:QualifiedName")),
new TagParameter("parametervalue2",getObject("AttachmentForm:DisplayName:Value")),
new TagParameter("parametervalue1",getObject("AttachmentForm:ContentType:Value")),
new TagParameter("parametername2",getObject("AttachmentForm:DisplayName:QualifiedName")),
new TagParameter("parametername3",getObject("AttachmentForm:Description:QualifiedName")),
new TagParameter("pageable","Files"),
new TagParameter("pipeline","ViewPromotionAttachment-Paging"),
new TagParameter("parametername4",getObject("AttachmentForm:Location:QualifiedName")),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","PromotionUUID"),
new TagParameter("parametername6","DirectoryPath"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 160); %> 
</tr>
</table> 
<% } %><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
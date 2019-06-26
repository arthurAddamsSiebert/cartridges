<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttachmentSelectLocation_52.SelectFile.text",null)))}, 4); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.SelectFileFromContentDirectory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegFormLocationNotSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top" width="100%"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.FileIsMandatoryPleaseSelectAFile.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr> 
<% } %> 
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.ClickOnTheFolderNameToViewTheContentsOfFolder.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n s w e">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("LocaleId")),
new TagParameter("parametervalue6",getObject("ChannelID")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("RegForm_Location")),
new TagParameter("parametervalue3",getObject("RegForm_Description")),
new TagParameter("parametername1","RegForm_ContentType"),
new TagParameter("parametervalue2",getObject("RegForm_DisplayName")),
new TagParameter("parametervalue1",getObject("RegForm_ContentType")),
new TagParameter("parametername2","RegForm_DisplayName"),
new TagParameter("parametername3","RegForm_Description"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("handlerPipeline","ViewProductAttachment_52"),
new TagParameter("parametername4","RegForm_Location"),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ChannelID"),
new TagParameter("parametername7","LocaleId"),
new TagParameter("parametername8","Secure"),
new TagParameter("parametervalue8","true")}, 43); %> 
<% } else { %><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("ChannelID")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("RegForm_Location")),
new TagParameter("parametervalue4",getObject("RegForm_Description")),
new TagParameter("parametervalue3",getObject("RegForm_DisplayName")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametervalue2",getObject("RegForm_ContentType")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("parametername2","RegForm_ContentType"),
new TagParameter("parametername3","RegForm_DisplayName"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("handlerPipeline","ViewProductAttachment_52"),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","true"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 55); %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% URLPipelineAction action136 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null));String site136 = null;String serverGroup136 = null;String actionValue136 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null);if (site136 == null){  site136 = action136.getDomain();  if (site136 == null)  {      site136 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup136 == null){  serverGroup136 = action136.getServerGroup();  if (serverGroup136 == null)  {      serverGroup136 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttachmentSelectLocationForm_52");out.print("\"");out.print(" id=\"");out.print("ProductAttachmentSelectLocationForm_52");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue136, site136, serverGroup136,true)); %><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="hidden" name="RegForm_ContentType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm_ContentType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="RegForm_DisplayName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm_DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="RegForm_Description" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm_Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProcessType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Secure" value="true"/><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><input type="hidden" name="KeyPrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("KeyPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><tr>
<td class="table_header s"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Files","File",null)) { %><tr class="file">
<td class="table_detail center s" width="1%">
<input type="radio" name="RegForm_Location" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:ContentDescriptor"),null).equals(context.getFormattedValue(getObject("RegForm_Location"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="tempFileSize" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail w s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(pad(context.getFormattedValue(getObject("File:ContentDescriptor"),null),((Number)(new Double(4))).intValue()),null).toLowerCase()),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link" target="_blank"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>" class="table_detail_link"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 102); %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("ProductAttachmentSelectLocation_52.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><input type="submit" name="SelectedLocation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttachmentSelectLocation_52.OK.button",null)),null)%>" class="button"/><% } %></td>
<td class="button">
<input type="hidden" name="RegForm_Location" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm_Location"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CancelLocationSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttachmentSelectLocation_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("DirectoryPath")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("RegForm_Location")),
new TagParameter("parametervalue4",getObject("RegForm_Description")),
new TagParameter("parametervalue3",getObject("RegForm_DisplayName")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametervalue2",getObject("RegForm_ContentType")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("parametername2","RegForm_ContentType"),
new TagParameter("parametername3","RegForm_DisplayName"),
new TagParameter("pageable","Files"),
new TagParameter("pipeline","ViewProductAttachment_52-Paging"),
new TagParameter("parametervalue10","true"),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","DirectoryPath"),
new TagParameter("parametername10","Secure"),
new TagParameter("parametername8","ChannelID"),
new TagParameter("parametername9","LocaleId"),
new TagParameter("parametervalue9",getObject("LocaleId")),
new TagParameter("parametervalue8",getObject("ChannelID"))}, 145); %></tr>
</table><% } else { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("ChannelID")),
new TagParameter("parametervalue6",getObject("DirectoryPath")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("RegForm_Location")),
new TagParameter("parametervalue3",getObject("RegForm_Description")),
new TagParameter("parametername1","RegForm_ContentType"),
new TagParameter("parametervalue2",getObject("RegForm_DisplayName")),
new TagParameter("parametervalue1",getObject("RegForm_ContentType")),
new TagParameter("parametername2","RegForm_DisplayName"),
new TagParameter("parametername3","RegForm_Description"),
new TagParameter("pageable","Files"),
new TagParameter("pipeline","ViewProductAttachment_52-Paging"),
new TagParameter("parametername4","RegForm_Location"),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","DirectoryPath"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","true"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 163); %></tr>
</table> 
<% } %><% } %><script>
$("<%=context.getFormattedValue("#",null)%>ProductAttachmentSelectLocationForm_52").submit(function( event ) {
$("tr.file").each(function(i, tr) {
var radioButton = $("input:radio", tr);
if(radioButton.attr('checked') == 'checked')
{
debugger;
var tempValue = $("input[name=tempFileSize]", tr).attr('value');
var element = $('<input>').attr({
type: 'hidden',
name: 'fileSize'
}).appendTo("<%=context.getFormattedValue("#",null)%>ProductAttachmentSelectLocationForm_52");
element.attr('value', tempValue);
}
});
});
</script>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
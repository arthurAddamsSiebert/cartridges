<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("ImageTypeSelectImage_32.SelectImage.text",null)))}, 5); %><% {Object temp_obj = ("Product Images"); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title n s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImageTypeSelectImage_32.SelectDefaultImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NO_IMAGE_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","no_image_selected"),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ImageTypeSelectImage_32.PleaseSelectAnImage.message",null)))}, 13); %><% } %><tr>
<td class="table_title_description"><% {out.write(localizeISText("ImageTypeSelectImage_32.ClickTheDirectoryNameToBrowseTheSubDirectoriesOf.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action91 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageType_32-BrowseDirectory",null)))),null));String site91 = null;String serverGroup91 = null;String actionValue91 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageType_32-BrowseDirectory",null)))),null);if (site91 == null){  site91 = action91.getDomain();  if (site91 == null)  {      site91 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup91 == null){  serverGroup91 = action91.getServerGroup();  if (serverGroup91 == null)  {      serverGroup91 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageType_32-BrowseDirectory",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue91, site91, serverGroup91,true)); %><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageTypeID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><input type="hidden" name="ImageTypeID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageTypeID"),null)),null)%>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("OriginalLocaleID"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><input type="hidden" name="OriginalLocaleID" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else { %><input type="hidden" name="OriginalLocaleID" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("OriginalLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox_locale w e n">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ImageTypeSelectImage_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="select"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr><td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageTypeSelectImage_32.Apply.button",null)),null)%>" class="button"/></td></tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("ImageTypeID")),
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
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("handlerPipeline","ViewImageType_32"),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","ImageTypeID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","false"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 58); %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table><% URLPipelineAction action92 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageType_32-Dispatch",null)))),null));String site92 = null;String serverGroup92 = null;String actionValue92 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageType_32-Dispatch",null)))),null);if (site92 == null){  site92 = action92.getDomain();  if (site92 == null)  {      site92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup92 == null){  serverGroup92 = action92.getServerGroup();  if (serverGroup92 == null)  {      serverGroup92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageType_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue92, site92, serverGroup92,true)); %><input name="OrganizationType" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OriginalLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageTypeID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><input type="hidden" name="ImageTypeID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageTypeID"),null)),null)%>" /><% } %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr><td class="infobox_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImageTypeSelectImage_32.ImageSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="1" width="100%" class="infobox w e s">
<tr>
<td class="infobox_item left" width="100%">
<table width="80%">
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ImageTypeSelectImage_32.Name.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<input type="text" name="Expression" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Expression"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr><td class="button"><input type="submit" name="searchImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageTypeSelectImage_32.Search.button",null)),null)%>" class="button"/></td></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% {Object temp_obj = ("Image"); getPipelineDictionary().put("ImageType", temp_obj);} %><% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","radio"),
new TagParameter("ThumbnailTemplate","inc/ChannelProductThumbnail"),
new TagParameter("FilesIterator",getObject("Files"))}, 115); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Directory:Directories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e">
<tr><td class="table_detail s"><% {out.write(localizeISText("ImageTypeSelectImage_32.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class = "w e">
<tr>
<td align="right" colspan="3" class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>n <% } %>s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="setImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageTypeSelectImage_32.OK.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancelImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageTypeSelectImage_32.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan = "5"><% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Files"),
new TagParameter("variablepagesize","true")}, 143); %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
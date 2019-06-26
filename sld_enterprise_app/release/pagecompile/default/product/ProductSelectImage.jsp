<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.SelectImage.text",null)))}, 4); %><% {Object temp_obj = ("Product Images"); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title n s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.SelectImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoImageSelectedError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnything.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_enterprise_app.ClickTheDirectoryNameToBrowseTheSubDirectoriesOfTh.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action130 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Expand",null)))),null));String site130 = null;String serverGroup130 = null;String actionValue130 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Expand",null)))),null);if (site130 == null){  site130 = action130.getDomain();  if (site130 == null)  {      site130 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup130 == null){  serverGroup130 = action130.getServerGroup();  if (serverGroup130 == null)  {      serverGroup130 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Expand",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue130, site130, serverGroup130,true)); %><input type="hidden" name="BrowseDirectoryContext" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null)%>" />
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CurrentChannel:UUID"),null)),null)%>" />
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e n">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("sld_enterprise_app.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0" /></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0" /></td>
<td width="100%"><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue7",getObject("ChannelID")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("RegForm_Location")),
new TagParameter("parametervalue4",getObject("RegForm_Description")),
new TagParameter("parametervalue3",getObject("RegForm_DisplayName")),
new TagParameter("parametervalue2",getObject("RegForm_ContentType")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("parametervalue10",getObject("BrowseDirectoryContext")),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","false"),
new TagParameter("parametervalue8",getObject("LocaleId")),
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametername2","RegForm_ContentType"),
new TagParameter("parametername3","RegForm_DisplayName"),
new TagParameter("handlerPipeline","ViewProductImage"),
new TagParameter("parametername10","BrowseDirectoryContext")}, 70); %></td>
</tr>
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" />
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Images.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% URLPipelineAction action131 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null));String site131 = null;String serverGroup131 = null;String actionValue131 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null);if (site131 == null){  site131 = action131.getDomain();  if (site131 == null)  {      site131 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup131 == null){  serverGroup131 = action131.getServerGroup();  if (serverGroup131 == null)  {      serverGroup131 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductImageCopyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue131, site131, serverGroup131,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% while (loop("ExistingFiles",null,null)) { %>
- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
<input type="hidden" name="FileName_<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% {out.write(localizeISText("sld_enterprise_app.OverwriteAll.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
<td valign="bottom">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/>
<input type="hidden" name="BrowseDirectoryContext" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null)%>" />
<input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" />
</td>
<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="button"><input type="submit" name="CancelCopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUploadErrors.isml", null, "146");} %></table>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr>
<td class="infobox_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImageSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="1" width="100%" class="infobox w e s">
<tr>
<td class="infobox_item left" width="100%"><% URLPipelineAction action132 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null));String site132 = null;String serverGroup132 = null;String actionValue132 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null);if (site132 == null){  site132 = action132.getDomain();  if (site132 == null)  {      site132 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup132 == null){  serverGroup132 = action132.getServerGroup();  if (serverGroup132 == null)  {      serverGroup132 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue132, site132, serverGroup132,true)); %><table width="40%">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="Expression"><% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="text" name="Expression" id="Expression" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Expression"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="searchImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Search.button",null)),null)%>" class="button" />
<input type="hidden" name="BrowseDirectoryContext" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null)%>" />
<input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_UPLOAD_IMAGES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %> 
<% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Upload",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BrowseDirectoryContext",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)).addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)))); getPipelineDictionary().put("uploadURL", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVERBROWSER")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UnitDomain:DomainID"),null).equals(context.getFormattedValue(getObject("CurrentOrganization:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-UploadLocalOnly",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BrowseDirectoryContext",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)).addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)))); getPipelineDictionary().put("uploadURL", temp_obj);} %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("uploadURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><td class="infobox_item right"><% URLPipelineAction action133 = new URLPipelineAction(context.getFormattedValue(getObject("uploadURL"),null));String site133 = null;String serverGroup133 = null;String actionValue133 = context.getFormattedValue(getObject("uploadURL"),null);if (site133 == null){  site133 = action133.getDomain();  if (site133 == null)  {      site133 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup133 == null){  serverGroup133 = action133.getServerGroup();  if (serverGroup133 == null)  {      serverGroup133 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("uploadURL"),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ProductAttachmentsUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue133, site133, serverGroup133,true)); %><table>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="File"><% {out.write(localizeISText("sld_enterprise_app.UploadFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="file" name="File" id="File" value="" class="inputfield_en" size="60"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Upload.button",null)),null)%>" class="button"/>
<input type="hidden" name="BrowseDirectoryContext" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null)%>" />
<input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" /> 
</td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %> 
</td> 
<% } %> 
</tr>
</table><% URLPipelineAction action134 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null));String site134 = null;String serverGroup134 = null;String actionValue134 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null);if (site134 == null){  site134 = action134.getDomain();  if (site134 == null)  {      site134 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup134 == null){  serverGroup134 = action134.getServerGroup();  if (serverGroup134 == null)  {      serverGroup134 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageAssignmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue134, site134, serverGroup134,true)); %><input type="hidden" name="BrowseDirectoryContext" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("BrowseDirectoryContext"),null)),null)%>" />
<input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" />
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","radio"),
new TagParameter("ThumbnailTemplate","inc/ProductThumbnail"),
new TagParameter("FilesIterator",getObject("Files"))}, 243); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Directory:Directories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Expression"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.NoImagesFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% }}} %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td align="right" colspan="3" class="s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { %><td class="button">
<input type="submit" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",272,e);}if (_boolean_result) { %>name="SetImage"<% } else { %>name="BackFromImageSelection"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button" />
</td><% } %><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",276,e);}if (_boolean_result) { %><input type="submit" name="ManageCA" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button" /><% } else { %><input type="submit" name="BackFromImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button" /><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" /></div>
</td>
</tr>
</table><% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("parametervalue",getObject("KeyPrefix")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("RegForm_Location")),
new TagParameter("parametervalue3",getObject("RegForm_Description")),
new TagParameter("parametername1","RegForm_ContentType"),
new TagParameter("parametervalue2",getObject("RegForm_DisplayName")),
new TagParameter("parametervalue1",getObject("RegForm_ContentType")),
new TagParameter("parametername2","RegForm_DisplayName"),
new TagParameter("parametername3","RegForm_Description"),
new TagParameter("pageable","Files"),
new TagParameter("variablepagesize","true"),
new TagParameter("parametername4","RegForm_Location"),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","KeyPrefix")}, 291); %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
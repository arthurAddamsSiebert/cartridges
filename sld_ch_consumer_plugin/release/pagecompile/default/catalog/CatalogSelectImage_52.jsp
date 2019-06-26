<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSelectImage_52.SelectImage.text",null)))}, 5); %><% {Object temp_obj = (localizeText(context.getFormattedValue("CategorytSelectImage_52.CategoryImages.value",null))); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" data-testing-id="bo-catalog-category-properties-image-selection-channel">
<tr>
<td class="table_title n s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductSelectImage_52.SelectImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoImageSelectedError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ProductSelectImage_52.YouHaveNotSelectedAnything.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description"><% {out.write(localizeISText("ProductSelectImage_52.ClickTheDirectoryNameToBrowseTheSubDirectories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action359 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Expand",null)))),null));String site359 = null;String serverGroup359 = null;String actionValue359 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Expand",null)))),null);if (site359 == null){  site359 = action359.getDomain();  if (site359 == null)  {      site359 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup359 == null){  serverGroup359 = action359.getServerGroup();  if (serverGroup359 == null)  {      serverGroup359 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Expand",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue359, site359, serverGroup359,true)); %><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CurrentChannel:UUID"),null)),null)%>" />
<input type="hidden" name="CatalogID" value="<%=context.getFormattedValue(getObject("CatalogID"),null)%>" />
<input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("CatalogUUID"),null)%>" /> 
<input type="hidden" name="CatalogDomainID" value="<%=context.getFormattedValue(getObject("CatalogDomainID"),null)%>" />
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("CatalogCategoryID"),null)%>" />
<input type="hidden" name="FromCategory" value="<%=context.getFormattedValue(getObject("FromCategory"),null)%>" />
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e n">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductSelectImage_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.Apply.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi" data-testing-id="bo-catalog-category-properties-image-selection-directory-table">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0" /></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
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
new TagParameter("parametervalue10",getObject("CatalogUUID")),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","CatalogID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametervalue13",getObject("FromCategory")),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","false"),
new TagParameter("parametervalue11",getObject("CatalogDomainID")),
new TagParameter("parametervalue8",getObject("LocaleId")),
new TagParameter("parametervalue12",getObject("CatalogCategoryID")),
new TagParameter("parametervalue",getObject("CatalogID")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametername2","RegForm_ContentType"),
new TagParameter("parametername3","RegForm_DisplayName"),
new TagParameter("handlerPipeline","ViewCategoryImage_52"),
new TagParameter("parametername10","CatalogUUID"),
new TagParameter("parametername11","CatalogDomainID"),
new TagParameter("parametername12","CatalogCategoryID"),
new TagParameter("parametername13","FromCategory")}, 80); %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" /></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductSelectImage_52.Images.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% URLPipelineAction action360 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null));String site360 = null;String serverGroup360 = null;String actionValue360 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null);if (site360 == null){  site360 = action360.getDomain();  if (site360 == null)  {      site360 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup360 == null){  serverGroup360 = action360.getServerGroup();  if (serverGroup360 == null)  {      serverGroup360 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductImageCopyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue360, site360, serverGroup360,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSelectImage_52.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% while (loop("ExistingFiles",null,null)) { %>
- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
<input type="hidden" name="FileName_<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% {out.write(localizeISText("ProductSelectImage_52.OverwriteAll.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
<td valign="bottom">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.OK.button",null)),null)%>" class="button"/>
<input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="CatalogID" value="<%=context.getFormattedValue(getObject("CatalogID"),null)%>" />
<input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("CatalogUUID"),null)%>" /> 
<input type="hidden" name="CatalogDomainID" value="<%=context.getFormattedValue(getObject("CatalogDomainID"),null)%>" />
<input type="hidden" name="FromCategory" value="<%=context.getFormattedValue(getObject("FromCategory"),null)%>" />
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("CatalogCategoryID"),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" />
</td>
<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="button"><input type="submit" name="CancelCopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUploadErrors_52.isml", null, "159");} %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr>
<td class="infobox_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductSelectImage_52.ImageSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="1" width="100%" class="infobox w e s"> 
<tr>
<td class="infobox_item left" width="100%"><% URLPipelineAction action361 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null));String site361 = null;String serverGroup361 = null;String actionValue361 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null);if (site361 == null){  site361 = action361.getDomain();  if (site361 == null)  {      site361 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup361 == null){  serverGroup361 = action361.getServerGroup();  if (serverGroup361 == null)  {      serverGroup361 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue361, site361, serverGroup361,true)); %><input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="CatalogID" value="<%=context.getFormattedValue(getObject("CatalogID"),null)%>" />
<input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("CatalogUUID"),null)%>" /> 
<input type="hidden" name="CatalogDomainID" value="<%=context.getFormattedValue(getObject("CatalogDomainID"),null)%>" />
<input type="hidden" name="FromCategory" value="<%=context.getFormattedValue(getObject("FromCategory"),null)%>" />
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("CatalogCategoryID"),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" />
<table width="40%">
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ProductSelectImage_52.Name.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<input type="text" name="Expression" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Expression"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="searchImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.Search.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %> 
<% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Upload",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null))).addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("CatalogDomainID",null),context.getFormattedValue(getObject("CatalogDomainID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null)).addURLParameter(context.getFormattedValue("FromCategory",null),context.getFormattedValue(getObject("FromCategory"),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)))); getPipelineDictionary().put("uploadURL", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("uploadURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { %><td class="infobox_item right"><% URLPipelineAction action362 = new URLPipelineAction(context.getFormattedValue(getObject("uploadURL"),null));String site362 = null;String serverGroup362 = null;String actionValue362 = context.getFormattedValue(getObject("uploadURL"),null);if (site362 == null){  site362 = action362.getDomain();  if (site362 == null)  {      site362 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup362 == null){  serverGroup362 = action362.getServerGroup();  if (serverGroup362 == null)  {      serverGroup362 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("uploadURL"),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ProductAttachmentsUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue362, site362, serverGroup362,true)); %><table>
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ProductSelectImage_52.UploadFile.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
<td class="infobox_item">
<input type="file" name="File" value="" class="inputfield_en" size="60"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.Upload.button",null)),null)%>" class="button"/>
<input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="CatalogID" value="<%=context.getFormattedValue(getObject("CatalogID"),null)%>" />
<input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("CatalogUUID"),null)%>" /> 
<input type="hidden" name="CatalogDomainID" value="<%=context.getFormattedValue(getObject("CatalogDomainID"),null)%>" />
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("CatalogCategoryID"),null)%>" />
<input type="hidden" name="FromCategory" value="<%=context.getFormattedValue(getObject("FromCategory"),null)%>" />
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
</table><% URLPipelineAction action363 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null));String site363 = null;String serverGroup363 = null;String actionValue363 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null);if (site363 == null){  site363 = action363.getDomain();  if (site363 == null)  {      site363 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup363 == null){  serverGroup363 = action363.getServerGroup();  if (serverGroup363 == null)  {      serverGroup363 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageAssignmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue363, site363, serverGroup363,true)); %><input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="DisplayedDirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="OrganizationType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)%>" />
<input type="hidden" name="Secure" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)%>" /> 
<input type="hidden" name="CatalogID" value="<%=context.getFormattedValue(getObject("CatalogID"),null)%>" />
<input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("CatalogUUID"),null)%>" /> 
<input type="hidden" name="CatalogDomainID" value="<%=context.getFormattedValue(getObject("CatalogDomainID"),null)%>" />
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("CatalogCategoryID"),null)%>" /> 
<input type="hidden" name="FromCategory" value="<%=context.getFormattedValue(getObject("FromCategory"),null)%>" /> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("ThumbnailTemplate","inc/ChannelProductThumbnail"),
new TagParameter("Inputtype","radio"),
new TagParameter("FilesIterator",getObject("Files"))}, 270); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Directory:Directories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("ProductSelectImage_52.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Expression"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("ProductSelectImage_52.NoImagesFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",283,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("ProductSelectImage_52.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% }}} %><table border="0" cellpadding="0" cellspacing="0" width="100%" class = "w e">
<tr>
<td align="right" colspan="3" class="s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="BackFromImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.OK.button",null)),null)%>" class="button" />
</td><% } %><td class="button">
<input type="submit" name="CancelImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSelectImage_52.Cancel.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" /></div>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" /></td>
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
new TagParameter("parametername","KeyPrefix")}, 318); %><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.SelectImage.text",null)))}, 4); %><% {Object temp_obj = (localizeText(context.getFormattedValue("sld_enterprise_app.ContentDirectory.label",null))); getPipelineDictionary().put("RootDirectoryName", temp_obj);} %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" data-testing-id="bo-catalog-category-properties-image-selection-organization">
<tr>
<td class="table_title n s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.SelectImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoImageSelectedError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnything.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_enterprise_app.ClickTheDirectoryNameToBrowseTheSubDirectoriesOfTh.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action501 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Expand",null)))),null));String site501 = null;String serverGroup501 = null;String actionValue501 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Expand",null)))),null);if (site501 == null){  site501 = action501.getDomain();  if (site501 == null)  {      site501 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup501 == null){  serverGroup501 = action501.getServerGroup();  if (serverGroup501 == null)  {      serverGroup501 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Expand",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue501, site501, serverGroup501,true)); %><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CurrentChannel:UUID"),null)),null)%>" />
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
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button" /></td>
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
new TagParameter("handlerPipeline","ViewCategoryImage"),
new TagParameter("parametername10","CatalogUUID"),
new TagParameter("parametername11","CatalogDomainID"),
new TagParameter("parametername12","CatalogCategoryID"),
new TagParameter("parametername13","FromCategory")}, 78); %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" /></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Images.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% URLPipelineAction action502 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null));String site502 = null;String serverGroup502 = null;String actionValue502 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null);if (site502 == null){  site502 = action502.getDomain();  if (site502 == null)  {      site502 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup502 == null){  serverGroup502 = action502.getServerGroup();  if (serverGroup502 == null)  {      serverGroup502 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductImageCopyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue502, site502, serverGroup502,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% while (loop("ExistingFiles",null,null)) { %>
- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
<input type="hidden" name="FileName_<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% {out.write(localizeISText("sld_enterprise_app.OverwriteAll.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
<td valign="bottom">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/>
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
<td class="button"><input type="submit" name="CancelCopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUploadErrors.isml", null, "156");} %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr>
<td class="infobox_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImageSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="1" width="100%" class="infobox w e s"> 
<tr>
<td class="infobox_item left" width="100%"><% URLPipelineAction action503 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null));String site503 = null;String serverGroup503 = null;String actionValue503 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null);if (site503 == null){  site503 = action503.getDomain();  if (site503 == null)  {      site503 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup503 == null){  serverGroup503 = action503.getServerGroup();  if (serverGroup503 == null)  {      serverGroup503 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue503, site503, serverGroup503,true)); %><input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
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
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<input type="text" name="Expression" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Expression"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="searchImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Search.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %> 
<% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Upload",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null))).addURLParameter(context.getFormattedValue("DisplayedDirectoryPath",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("OrganizationType"),null)),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("CatalogDomainID",null),context.getFormattedValue(getObject("CatalogDomainID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null)).addURLParameter(context.getFormattedValue("FromCategory",null),context.getFormattedValue(getObject("FromCategory"),null)).addURLParameter(context.getFormattedValue("Secure",null),context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Secure"),null)),null)))); getPipelineDictionary().put("uploadURL", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("uploadURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %><td class="infobox_item right"><% URLPipelineAction action504 = new URLPipelineAction(context.getFormattedValue(getObject("uploadURL"),null));String site504 = null;String serverGroup504 = null;String actionValue504 = context.getFormattedValue(getObject("uploadURL"),null);if (site504 == null){  site504 = action504.getDomain();  if (site504 == null)  {      site504 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup504 == null){  serverGroup504 = action504.getServerGroup();  if (serverGroup504 == null)  {      serverGroup504 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("uploadURL"),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ProductAttachmentsUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue504, site504, serverGroup504,true)); %><table>
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("sld_enterprise_app.UploadFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
<td class="infobox_item">
<input type="file" name="File" value="" class="inputfield_en" size="60"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Upload.button",null)),null)%>" class="button"/>
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
</table><% URLPipelineAction action505 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null));String site505 = null;String serverGroup505 = null;String actionValue505 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null);if (site505 == null){  site505 = action505.getDomain();  if (site505 == null)  {      site505 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup505 == null){  serverGroup505 = action505.getServerGroup();  if (serverGroup505 == null)  {      serverGroup505 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageAssignmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue505, site505, serverGroup505,true)); %><input type="hidden" name="DirectoryPath" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DirectoryPath"),null)),null)%>" />
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
new TagParameter("ThumbnailTemplate","inc/ProductThumbnail"),
new TagParameter("Inputtype","radio"),
new TagParameter("FilesIterator",getObject("Files"))}, 267); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Directory:Directories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Expression"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",274,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.NoImagesFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",280,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThisDirectoryDoesNotContainAnyImages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% }}} %><table border="0" cellpadding="0" cellspacing="0" width="100%" class = "w e">
<tr>
<td align="right" colspan="3" class="s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",292,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="BackFromImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button" />
</td><% } %><td class="button">
<input type="submit" name="CancelImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button" />
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
new TagParameter("parametername","KeyPrefix")}, 315); %><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
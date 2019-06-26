<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexValueMappingSelectImage-SelectImage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexValueMappingSelectImage.SelectImage.text",null)))}, 4); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexValueMappingSelectImage.SelectImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMessage")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorMessage"),null).equals(context.getFormattedValue("ImageNotSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("SearchIndexValueMappingSelectImage.Image.subject",null))),
new TagParameter("type","mae")}, 15); %><% } %></td> 
</tr>
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("SearchIndexValueMappingSelectImage.ClickTheDirectoryNameToBrowseTheSubDirectories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("LocaleId")),
new TagParameter("handlerPipeline","ViewSearchIndexValueMappingSelectImage"),
new TagParameter("parametername1","Secure"),
new TagParameter("parametervalue2",getObject("SelectedConfigurationParameterName")),
new TagParameter("parametervalue1","false"),
new TagParameter("parametername2","SelectedConfigurationParameterName"),
new TagParameter("parametername","LocaleId"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname","Images")}, 33); %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% URLPipelineAction action157 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexValueMappingSelectImage-Dispatch",null)))),null));String site157 = null;String serverGroup157 = null;String actionValue157 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexValueMappingSelectImage-Dispatch",null)))),null);if (site157 == null){  site157 = action157.getDomain();  if (site157 == null)  {      site157 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup157 == null){  serverGroup157 = action157.getServerGroup();  if (serverGroup157 == null)  {      serverGroup157 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexValueMappingSelectImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddImagesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue157, site157, serverGroup157,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% {Object temp_obj = ("Image"); getPipelineDictionary().put("ImageType", temp_obj);} %><input name="SelectedConfigurationParameterName" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedConfigurationParameterName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","radio"),
new TagParameter("FilesIterator",getObject("Files"))}, 55); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>n<% } %>">
<tr>
<td align="right" colspan="3" class="s">
<input name="OrganizationType" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="SetImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexValueMappingSelectImage.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="BackFromImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexValueMappingSelectImage.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
</td>
</tr>
</table><% out.print("</form>"); %><!-- Start Page Cursor -->
<table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewSearchIndexValueMappingSelectImage-Paging"),
new TagParameter("parametervalue",getObject("DirectoryPath")),
new TagParameter("parametervalue3",getObject("ChannelID")),
new TagParameter("parametername1","LocaleId"),
new TagParameter("parametervalue2",getObject("false")),
new TagParameter("parametervalue1",getObject("LocaleId")),
new TagParameter("parametername2","Secure"),
new TagParameter("parametername3","ChannelID"),
new TagParameter("pageable","Files"),
new TagParameter("parametername","DirectoryPath")}, 98); %></tr>
</table><% } %> <% printFooter(out); %>
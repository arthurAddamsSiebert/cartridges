<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameterSelectImage-SelectImage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelConfigurationParameterSelectImage.SelectImage.text",null)))}, 6); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ChannelConfigurationParameterSelectImage.SelectImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMessage")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorMessage"),null).equals(context.getFormattedValue("ImageNotSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelConfigurationParameterSelectImage.Image.subject",null))),
new TagParameter("type","mae")}, 14); %><% } %><tr>
<td class="table_title_description w e s" width="100%"><% {out.write(localizeISText("ChannelConfigurationParameterSelectImage.ClickTheDirectoryNameToBrowse.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("LocaleId")),
new TagParameter("parametervalue3",getObject("PageLocatorName")),
new TagParameter("handlerPipeline","ViewChannelConfigurationParameterSelectImage"),
new TagParameter("parametername1","Secure"),
new TagParameter("parametervalue2",getObject("SelectedConfigurationParameterName")),
new TagParameter("parametervalue1","false"),
new TagParameter("parametername2","SelectedConfigurationParameterName"),
new TagParameter("parametername3","PageLocatorName"),
new TagParameter("parametername","LocaleId"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname","Content")}, 30); %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% URLPipelineAction action81 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameterSelectImage-Dispatch",null)))),null));String site81 = null;String serverGroup81 = null;String actionValue81 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameterSelectImage-Dispatch",null)))),null);if (site81 == null){  site81 = action81.getDomain();  if (site81 == null)  {      site81 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup81 == null){  serverGroup81 = action81.getServerGroup();  if (serverGroup81 == null)  {      serverGroup81 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameterSelectImage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageSelectForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue81, site81, serverGroup81,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="SelectedConfigurationParameterName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedConfigurationParameterName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><tr>
<td><% {Object temp_obj = ("Image"); getPipelineDictionary().put("ImageType", temp_obj);} %><% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","radio"),
new TagParameter("ThumbnailTemplate","inc/ContentThumbnail"),
new TagParameter("FilesIterator",getObject("Files"))}, 55); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td align="right" colspan="3">
<input type="hidden" name="OrganizationType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Directory:Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="SetImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameterSelectImage.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="BackFromImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameterSelectImage.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr><td class="table_detail w e s"><% {out.write(localizeISText("ChannelConfigurationParameterSelectImage.ThereAreNoImagesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="BackFromImageSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameterSelectImage.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewChannelConfigurationParameterSelectImage-Paging"),
new TagParameter("parametervalue",getObject("DirectoryPath")),
new TagParameter("parametervalue4",getObject("PageLocatorName")),
new TagParameter("parametervalue3",getObject("ChannelID")),
new TagParameter("parametername1","LocaleId"),
new TagParameter("parametervalue2",getObject("false")),
new TagParameter("parametervalue1",getObject("LocaleId")),
new TagParameter("parametername2","Secure"),
new TagParameter("parametername3","ChannelID"),
new TagParameter("parametername4","PageLocatorName"),
new TagParameter("pageable","Files"),
new TagParameter("parametername","DirectoryPath")}, 105); %></tr>
</table><% } %> <% printFooter(out); %>
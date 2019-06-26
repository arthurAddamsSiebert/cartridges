<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-SelectFromPage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("ExportScope",null),context.getFormattedValue(getObject("ExportScope"),null)).addURLParameter(context.getFormattedValue("SelectedEditionID",null),context.getFormattedValue(getObject("SelectedEditionID"),null)).addURLParameter(context.getFormattedValue("ZipFileName",null),context.getFormattedValue(getObject("ZipFileName"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentExportSelectFromSite_52.Step3SelectFromSite.text",null)))}, 3); %><!-- Page Navigator --><% URLPipelineAction action484 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null));String site484 = null;String serverGroup484 = null;String actionValue484 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null);if (site484 == null){  site484 = action484.getDomain();  if (site484 == null)  {      site484 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup484 == null){  serverGroup484 = action484.getServerGroup();  if (serverGroup484 == null)  {      serverGroup484 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue484, site484, serverGroup484,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ContentExportSelectFromSite_52.SelectFromPublication.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ContentExportSelectFromSite_52.Step3Of3PreviousStepSelectEdition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegExMatcherCreationFailed"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ContentExportSelectFromSite_52.TheRegularExpressionYouEnteredIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="table_detail">
<input type="checkbox" name="RecursiveBoolean" value="true"/>&nbsp;<% {out.write(localizeISText("ContentExportSelectFromSite_52.AddSubfoldersRecursively.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s"><% while (loop("PublicationsIterator","pubs",null)) { %><tr>
<td class="table_detail3"><% {String value = null;try{value=context.getFormattedValue(getObject("pubs:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:
<% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("parametervalue",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue4",getObject("ExportApprovedElements")),
new TagParameter("rootfolderuuid",getObject("pubs:RootFolderID")),
new TagParameter("parametervalue3",getObject("ZipFileName")),
new TagParameter("regexmatcher",getObject("RegExMatcher")),
new TagParameter("parametername1","ExportScope"),
new TagParameter("parametervalue2",getObject("SelectedEditionID")),
new TagParameter("editable","no"),
new TagParameter("parametervalue1",getObject("ExportScope")),
new TagParameter("parametername2","SelectedEditionID"),
new TagParameter("selectable","yes"),
new TagParameter("parametername3","ZipFileName"),
new TagParameter("elementfilter","DFolder,DPage"),
new TagParameter("multipleselection","all"),
new TagParameter("currentidx",new Double(1)),
new TagParameter("handlerPipeline","ViewContentExport_52"),
new TagParameter("parametername4","ExportApprovedElements"),
new TagParameter("parametername","ChannelID"),
new TagParameter("sitefolder",getObject("pubs:RootFolder")),
new TagParameter("elementcount",new Double(1))}, 44); %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/>
</td>
</tr><% } %><tr>
<td align="left" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ExportScope" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportScope"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedEditionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedEditionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ZipFileName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ZipFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ExportApprovedElements" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportApprovedElements"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SelectEdition" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectFromSite_52.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ContentRepositoryDomainID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:RepositoryDomain:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProcessDescription" value="Export content resources from channel content repository of <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobPipelineName" value="BatchProcessContentExport"/>
<input type="hidden" name="JobPipelineStartNode" value="Start"/>
<input type="hidden" name="JobName" value="ContentImpex"/>
<input type="hidden" name="JobNamePrefix" value="Content"/>
<input type="submit" name="StartExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectFromSite_52.Export.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectFromSite_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
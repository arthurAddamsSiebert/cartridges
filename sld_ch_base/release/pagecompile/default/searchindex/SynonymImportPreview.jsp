<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SynonymImportPreview.ImportSynonyms.text",null)))}, 4); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/inc/SynonymImportSelectFileInc", null, "6");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% URLPipelineAction action158 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DispatchImport",null)))),null));String site158 = null;String serverGroup158 = null;String actionValue158 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DispatchImport",null)))),null);if (site158 == null){  site158 = action158.getDomain();  if (site158 == null)  {      site158 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup158 == null){  serverGroup158 = action158.getServerGroup();  if (serverGroup158 == null)  {      serverGroup158 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DispatchImport",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportSynonymsPreviewForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue158, site158, serverGroup158,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr class="infobox">
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr class="infobox">
<td class="infobox_title" colspan="3" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("SynonymImportPreview.SynonymsToBeImported.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr class="infobox">
<td class="s" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_title_description s" colspan="3" width="100%"><% {out.write(localizeISText("SynonymImportPreview.TheListShowsTheContentOfTheImportedFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header s"><% {out.write(localizeISText("SynonymImportPreview.Keyword.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("SynonymImportPreview.Synonym.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" width="1%"><% {out.write(localizeISText("SynonymImportPreview.Bidirectional.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Synonyms","Synonym",null)) { %><tr>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Synonym:Keyword"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s"><% {String value = null;try{value=context.getFormattedValue(getObject("Synonym:Synonym"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Synonym:Bidirectional"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/check.png" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynonymImportPreview.Bidirectional.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynonymImportPreview.Bidirectional.title",null)),null)%>" border="0"/><% } else { %>&nbsp;
<% } %></td>
</tr> 
<% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="startImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynonymImportPreview.Import.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancelImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynonymImportPreview.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Synonyms") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Synonyms")}, 65); %><% } %><% out.print("</form>"); %><% printFooter(out); %>
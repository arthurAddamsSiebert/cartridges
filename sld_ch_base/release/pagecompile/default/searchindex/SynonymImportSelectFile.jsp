<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-ImportSelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndexID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("SynonymImportSelectFile.ImportSynonyms.text",null)))}, 4); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/inc/SynonymImportSelectFileInc", null, "6");} %><% URLPipelineAction action177 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DispatchImport",null)))),null));String site177 = null;String serverGroup177 = null;String actionValue177 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DispatchImport",null)))),null);if (site177 == null){  site177 = action177.getDomain();  if (site177 == null)  {      site177 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup177 == null){  serverGroup177 = action177.getServerGroup();  if (serverGroup177 == null)  {      serverGroup177 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DispatchImport",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportSynonymsFormCancel");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue177, site177, serverGroup177,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="cancelImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynonymImportSelectFile.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>
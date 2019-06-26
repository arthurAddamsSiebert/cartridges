<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextExport-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))))),
new TagParameter("id","ViewContextExport"),
new TagParameter("text",localizeText(context.getFormattedValue("ViewContextExport.ExportViewContexts.text",null)))}, 4); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value0",getObject("ContentRepositoryUUID")),
new TagParameter("mapname","TargetPipelineParameters")}, 6); %><% processOpenTag(response, pageContext, "viewcontextsearch", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("SubmitButtonsTemplate","content/viewcontext/ViewContextExportButtons"),
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("SortBy",getObject("SortBy")),
new TagParameter("HeaderTemplate","content/viewcontext/ViewContextExportHeader"),
new TagParameter("CurrentDomain",getObject("CurrentDomain")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("TargetViewPipeline","ViewViewContextExport-Dispatch"),
new TagParameter("StartDate",getObject("StartDate")),
new TagParameter("PerformSearch",getObject("PerformSearch")),
new TagParameter("SortDirection",getObject("SortDirection")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Clipboard",getObject("ViewContextClipboard")),
new TagParameter("TargetViewPipelineParams",getObject("TargetPipelineParameters")),
new TagParameter("InsertIntoExport",getObject("InsertIntoExport"))}, 10); %><% printFooter(out); %>
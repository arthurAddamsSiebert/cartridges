<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: ComponentFilter.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/PageletSearchModuleInternal", null, "3");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearchComponentFilter-BackToFilter",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)))),
new TagParameter("id","PageletSearch_ComponentFilter"),
new TagParameter("text",localizeText(context.getFormattedValue("ComponentFilter.ComponentFilter.text",null)))}, 6); %><!-- EO Page Navigator --><% processOpenTag(response, pageContext, "pageletsearchinternal", new TagParameter[] {
new TagParameter("sortdirection",getObject("SortDirection")),
new TagParameter("submitbuttonstemplate","content/search/inc/PageletFilterButtons"),
new TagParameter("filtermode","true"),
new TagParameter("currentrequest",getObject("CurrentRequest")),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("channel",getObject("CurrentChannel")),
new TagParameter("sortby",getObject("SortBy")),
new TagParameter("page","false"),
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("uniqueid",getObject("UniquePageletSearchID")),
new TagParameter("performsearch",getObject("PerformPageletSearch"))}, 9); %><% printFooter(out); %>
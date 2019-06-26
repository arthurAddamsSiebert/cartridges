<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ChannelModules", null, "3");} %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPages.Content.text",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue("ChannelPages",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","PageSearchContainer"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPages.PageVariants.text",null)))}, 8); %><!-- EO Page Navigator --><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("template","false"),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("submitbuttonincludetype","objectlist"),
new TagParameter("start",getObject("StartFlag")),
new TagParameter("confirmPreview",getObject("confirmPreview")),
new TagParameter("submitbuttonstemplate","content/search/inc/PageComponentsButtons"),
new TagParameter("confirmdelete",getObject("confirmDelete")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("page","true"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("targetpageletviewpipeline","ViewChannelPages-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("uniqueid","ChannelPages")}, 10); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>
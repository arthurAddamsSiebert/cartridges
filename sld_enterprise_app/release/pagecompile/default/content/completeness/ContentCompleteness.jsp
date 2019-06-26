<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentCompleteness.MasterContent.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentCompleteness-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("id","ContentCompleteness"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentCompleteness.MasterContentOverview.text",null)))}, 6); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value0",getObject("ContentRepository:UUID")),
new TagParameter("mapname","ContextPipelineMap")}, 8); %><% processOpenTag(response, pageContext, "contentsummary", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextPipeline","ViewContentCompleteness-Start"),
new TagParameter("ContextPipelineMap",getObject("ContextPipelineMap"))}, 12); %> 
<div>&nbsp;</div><% processOpenTag(response, pageContext, "completenessproblemstatistic", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextPipeline","ViewContentCompleteness-Start"),
new TagParameter("ContextPipelineMap",getObject("ContextPipelineMap")),
new TagParameter("RevalidationPipeline","ViewContentCompleteness-Revalidate"),
new TagParameter("Initial",getObject("initial")),
new TagParameter("NeedRevalidate",getObject("NeedRevalidate"))}, 19); %><% printFooter(out); %>
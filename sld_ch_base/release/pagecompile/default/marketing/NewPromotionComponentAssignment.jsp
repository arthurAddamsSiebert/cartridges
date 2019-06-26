<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContentAssignment-AssignComponentsPaging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("PageFlag"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObjectUUID"),null)))),
new TagParameter("id","AssignPageToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("NewPromotionComponentAssignment.AssignComponent.text",null)))}, 5); %> 
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","assign"),
new TagParameter("key2","selectedPageletCount"),
new TagParameter("key0","ContextObjectUUID"),
new TagParameter("value2",getObject("selectedPageletCount")),
new TagParameter("value1",getObject("assign")),
new TagParameter("value0",getObject("ContextObjectUUID")),
new TagParameter("mapname","TargetPipelineParams")}, 6); %><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("selectedmenuitem","OnlineMarketing"),
new TagParameter("excludedpagelets",getObject("PageletsAssignedToPromotion")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParams")),
new TagParameter("start",getObject("SearchStartFlag")),
new TagParameter("extendedheadingtemplate","marketing/inc/PromotionContentAssignmentProperties"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","marketing/inc/PromotionContentPageletAssignmentButtons"),
new TagParameter("page","false"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("targetpageletviewpipeline","ViewPromotionContentAssignment-DispatchComponentAssignment"),
new TagParameter("uniqueid","NewPromotionComponentAssignment")}, 12); %><% printFooter(out); %>
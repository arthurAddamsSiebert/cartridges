<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-ContentPaging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTestGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null))).addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null)))),
new TagParameter("id","AssignPageToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("CampaignContentAssignment_52.AssignContent.text",null)))}, 5); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CampaignUUID"),
new TagParameter("key2","selectedType"),
new TagParameter("value5",getObject("assign")),
new TagParameter("key0","SelectedTestGroupID"),
new TagParameter("value2",getObject("selectedType")),
new TagParameter("key5","assign"),
new TagParameter("value1",getObject("Campaign:UUID")),
new TagParameter("key3","PageFlag"),
new TagParameter("value4",getObject("CurrentChannel:UUID")),
new TagParameter("value3",getObject("page")),
new TagParameter("key4","CurrentChannelUUID"),
new TagParameter("mapname","TargetPipelineParams"),
new TagParameter("value0",getObject("UserGroup:ID"))}, 7); %><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("excludedpagelets",getObject("PageletsAssignedToPromotion")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParams")),
new TagParameter("start",getObject("PageSearchStartFlag")),
new TagParameter("extendedheadingtemplate","marketing/CampaignContentAssignmentProperties_52"),
new TagParameter("selectionlisting","true"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","marketing/inc/CampaignPageletAssignmentButtons"),
new TagParameter("page",getObject("page")),
new TagParameter("pageletclipboard",getObject("Clipboard")),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("targetpageletviewpipeline","ViewCampaignAssignments_52-DispatchContentAssignment"),
new TagParameter("uniqueid","CampaignContentPageletAssignment_52")}, 16); %><% printFooter(out); %>
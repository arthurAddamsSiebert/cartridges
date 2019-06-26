<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("page")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue("CampaignSearchContentList_52",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null)))),
new TagParameter("id","AssignPageToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("CampaignSearchContentList_52.PageVariantList.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue("CampaignSearchContentList_52",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null)))),
new TagParameter("id","AssignComponentToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("CampaignSearchContentList_52.ComponentList.text",null)))}, 8); %><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","selectContent"),
new TagParameter("key2","hasSelectedElements"),
new TagParameter("key0","CampaignSearchForm"),
new TagParameter("value2",((((Boolean) (disableErrorMessages().isDefined(getObject("UUIDIterator")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("value1",getObject("selectContent")),
new TagParameter("value0",getObject("CampaignSearchForm")),
new TagParameter("mapname","TargetPipelineParams")}, 12); %><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParams")),
new TagParameter("start",getObject("PageSearchStartFlag")),
new TagParameter("extendedheadingtemplate","marketing/CampaignContentSearchListHeader_52"),
new TagParameter("selectionlisting","true"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","marketing/CampaignContentSearchListButtons_52"),
new TagParameter("page",getObject("page")),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("targetpageletviewpipeline","ViewCampaignList_52-DispatchContentList"),
new TagParameter("uniqueid","CampaignSearchContentList_52")}, 18); %><% printFooter(out); %>
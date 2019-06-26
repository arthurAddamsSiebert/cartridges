<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageletEntryPointSearchModule.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/PageletEntryPointSearchModuleInternal", null, "3");} %><% processOpenTag(response, pageContext, "pageletentrypointsearchinternal", new TagParameter[] {
new TagParameter("sortdirection",getObject("SortDirection")),
new TagParameter("disablesharedpagelets",getObject("disablesharedpagelets")),
new TagParameter("targetpageletviewpipelineparams",getObject("targetpageletviewpipelineparams")),
new TagParameter("channel",getObject("CurrentChannel")),
new TagParameter("submitbuttonincludetype",getObject("submitbuttonincludetype")),
new TagParameter("extendedheadingtemplate",getObject("extendedheadingtemplate")),
new TagParameter("disableselection",getObject("disableselection")),
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("DisableNonPublicPagelets",getObject("DisableNonPublicPagelets")),
new TagParameter("CurrentDomain",getObject("CurrentDomain")),
new TagParameter("submitbuttonstemplate",getObject("submitbuttonstemplate")),
new TagParameter("hidelockbutton",getObject("hidelockbutton")),
new TagParameter("StartDate",getObject("StartDate")),
new TagParameter("confirmdelete",getObject("confirmdelete")),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("hideselection",getObject("hideselection")),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("pageletclipboard",getObject("pageletclipboard")),
new TagParameter("notfoundtemplate",getObject("notfoundtemplate")),
new TagParameter("uniqueid",getObject("uniqueid")),
new TagParameter("InsertIntoExport",getObject("InsertIntoExport")),
new TagParameter("currentrequest",getObject("CurrentRequest")),
new TagParameter("ApplicationState",getObject("ApplicationState")),
new TagParameter("start",getObject("start")),
new TagParameter("hidecopybutton",getObject("hidecopybutton")),
new TagParameter("AppendSearchIDParamToBreadcrumb",getObject("AppendSearchIDParamToBreadcrumb")),
new TagParameter("ChannelConfiguration",getObject("CurrentChannel:RepositoryDomain:Site:DefaultApplication:Configuration")),
new TagParameter("radiobuttons",getObject("radiobuttons")),
new TagParameter("alloweddefinitions",getObject("alloweddefinitions")),
new TagParameter("sortby",getObject("SortBy")),
new TagParameter("page",getObject("page")),
new TagParameter("targetpageletviewpipeline",getObject("targetpageletviewpipeline")),
new TagParameter("performsearch",getObject("PerformPageletSearch")),
new TagParameter("selectedpageletuuid",getObject("SelectedPageletUUID"))}, 5); %><% printFooter(out); %>
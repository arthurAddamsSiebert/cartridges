<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ViewContextList.MasterContent.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("id","ViewContexts"),
new TagParameter("text",localizeText(context.getFormattedValue("ViewContextList.MasterViewContexts.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ViewContextList.Content.text",null)))}, 8); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("id","ViewContexts"),
new TagParameter("text",localizeText(context.getFormattedValue("ViewContextList.ViewContexts.text",null)))}, 9); %><% } %><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 11); %><% processOpenTag(response, pageContext, "viewcontextsearch", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("TargetViewPipeline","ViewViewContexts-Dispatch"),
new TagParameter("PerformSearch",getObject("PerformSearch")),
new TagParameter("SortDirection",getObject("SortDirection")),
new TagParameter("PageLocatorName","ViewContextPageLocator"),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("SortBy",getObject("SortBy")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("submitbuttonincludetype","objectlist"),
new TagParameter("Clipboard",getObject("ViewContextClipboard")),
new TagParameter("StartFlag",getObject("StartFlag"))}, 12); %><% printFooter(out); %>
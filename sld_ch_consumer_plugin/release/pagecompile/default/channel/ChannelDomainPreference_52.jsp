<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 4); %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("skipprint","true"),
new TagParameter("localizedtext","BreadCrumbText"),
new TagParameter("key","preferences.breadcrumb")}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",getObject("BreadCrumbText"))}, 8); %><!-- start page navigator -->
<div class="overviewWrapper" data-testing-id="bo-channel-preferences-overview">
<div class="overview_title"><% {out.write(localizeISText("preferences.breadcrumb",null,null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="table_title_description"><% {out.write(localizeISText("preferences.description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ChannelDomainPreferencesExtensions", null, "14");} %></div><% printFooter(out); %>
<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><% {try{executePipeline("ProcessContentNavigation-Breadcrumbs",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("RootID",getObject("navigationRoot")))).addParameter(new ParameterEntry("Locale",getObject("locale"))).addParameter(new ParameterEntry("PageletEntryPointID",getObject("currentPageletEntryPointID")))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("trailtext0",getObject("dict:TrailText")),
new TagParameter("separatetrailtext","true"),
new TagParameter("text0",getObject("dict:Text0")),
new TagParameter("link1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("dict:EntryPoint1"),null))))),
new TagParameter("text3",getObject("dict:Text3")),
new TagParameter("link0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("dict:EntryPoint0"),null))))),
new TagParameter("text4",getObject("dict:Text4")),
new TagParameter("text1",getObject("dict:Text1")),
new TagParameter("text2",getObject("dict:Text2")),
new TagParameter("link4",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("dict:EntryPoint4"),null))))),
new TagParameter("link3",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("dict:EntryPoint3"),null))))),
new TagParameter("showhomelink","true"),
new TagParameter("link2",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("dict:EntryPoint2"),null)))))}, 6); %><% printFooter(out); %>
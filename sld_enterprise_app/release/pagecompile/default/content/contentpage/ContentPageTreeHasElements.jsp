<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key0","PageletEntryPoint"),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("value0",getObject("PageletEntryPoint")),
new TagParameter("mapname","PipelineParams")}, 2); %><% {try{executePipeline("ViewContentPageTree-HasElements",((java.util.Map)(getObject("PipelineParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% {Object temp_obj = ((hasLoopElements("Result:ContentPageList") ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ContentPageTreeHasElements", temp_obj);} %><% printFooter(out); %>
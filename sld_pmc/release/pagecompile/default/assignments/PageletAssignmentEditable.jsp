<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key2","LockingDomain"),
new TagParameter("key0","Pagelet"),
new TagParameter("value2",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("key3","User"),
new TagParameter("value3",getObject("User")),
new TagParameter("value0",getObject("Assignment:From")),
new TagParameter("mapname","ProcessPageletLockParams")}, 2); %><% {try{executePipeline("ProcessPageletLock-Lookup",((java.util.Map)(getObject("ProcessPageletLockParams"))),"PageletLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} %><% {Object temp_obj = (((((Boolean) ((((context.getFormattedValue(getObject("Assignment:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("PageletLockInfoDictionary:PageletLockedForOther"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("eval", temp_obj);} %><%getPipelineDictionary().put("Result", getObject("eval"));%><% printFooter(out); %>
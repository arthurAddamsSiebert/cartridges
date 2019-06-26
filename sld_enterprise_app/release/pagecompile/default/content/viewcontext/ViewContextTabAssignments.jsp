<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ObjectUUID"),
new TagParameter("value0",getObject("ViewContext:UUID")),
new TagParameter("mapname","ViewContextParams")}, 3); %><% {try{executePipeline("ViewViewContext-IsTabSwitched",((java.util.Map)(getObject("ViewContextParams"))),"TabStatus");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ViewContextTabAssignments.TheListBelowShowsAllElementsWhereThisViewContextIs.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignmentsbycontexttype", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Product"),
new TagParameter("ViewContext",getObject("ViewContext")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 12); %><% processOpenTag(response, pageContext, "viewcontextassignmentsbycontexttype", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Category"),
new TagParameter("ViewContext",getObject("ViewContext")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 21); %><% printFooter(out); %>
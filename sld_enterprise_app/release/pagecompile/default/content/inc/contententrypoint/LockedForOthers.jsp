<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><%@page 
import="com.intershop.component.pmc.capi.pagelet.Slot,
        com.intershop.component.pmc.capi.pagelet.PageletEntryPoint,
        com.intershop.component.pmc.capi.pagelet.Pagelet" %><%
Object ctnr = getObject("ContentEntryPoint");
if(ctnr instanceof PageletEntryPoint)
{%><% processOpenTag(response, pageContext, "pageletentrypointeditable", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("ContentEntryPoint")),
new TagParameter("User",getObject("User")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletEntryPointLockedForOther","PEPLockedForOther")}, 8); %><%
}
if(ctnr instanceof Slot)
{
	getPipelineDictionary().put("Pagelet", ((Slot)ctnr).getParentPagelet());
%><% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("User")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("Result","PageletEditable")}, 14); %><%
}%><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("PageletLockedForOther")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PEPLockedForOther")))).booleanValue() && ((Boolean) getObject("PEPLockedForOther")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("Result", temp_obj);} %><% printFooter(out); %>
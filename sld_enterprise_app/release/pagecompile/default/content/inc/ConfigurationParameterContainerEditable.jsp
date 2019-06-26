<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page 
import="com.intershop.component.pmc.capi.pagelet.Slot,
        com.intershop.component.pmc.capi.pagelet.ContentEntryPoint,
        com.intershop.component.pmc.capi.viewcontext.ViewContext,
        com.intershop.component.pmc.capi.pagelet.Pagelet"%><%
Object ctnr = getObject("ConfigurationParameterCtnr");
if(ctnr instanceof ContentEntryPoint<?> || ctnr instanceof ViewContext)
{%><% {Object temp_obj = ((((context.getFormattedValue(getObject("ConfigurationParameterCtnr:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ContainerEditable", temp_obj);} %><%}
if(ctnr instanceof Slot)
{
    if(((Slot)ctnr).getParentPagelet().hasParent())
    {
        getPipelineDictionary().put("ContainerEditable", Boolean.FALSE);
    }
	getPipelineDictionary().put("Pagelet", ((Slot)ctnr).getParentPagelet());
}
if(ctnr instanceof Pagelet)
{
    getPipelineDictionary().put("Pagelet", ((Pagelet)ctnr));
}%><% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("User")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("Result","PageletEditable")}, 22); %><%
if(getObject("PageletLockedForOther") == null)
{
	Object o = getObject("ContainerEditable");
	if (getObject("PermissionMap") == null) {
		getPipelineDictionary().put("Result", Boolean.FALSE);
	}
	else if ((ctnr instanceof Pagelet) && ((Pagelet)ctnr).isTemplate() && (((Map)getObject("PermissionMap")).get("SLD_MANAGE_TEMPLATES") == null))
	{
		getPipelineDictionary().put("Result", Boolean.FALSE);
	}
	else if ((ctnr instanceof Slot) && ((Slot)ctnr).getParentPagelet().isTemplate() && (((Map)getObject("PermissionMap")).get("SLD_MANAGE_TEMPLATES") == null))
	{
		getPipelineDictionary().put("Result", Boolean.FALSE);
	}
	else if (((Map)getObject("PermissionMap")).get("SLD_MANAGE_CONTENT") == null)
	{
		getPipelineDictionary().put("Result", Boolean.FALSE);
	}
	else
	{
		getPipelineDictionary().put("Result", o != null ? o : getObject("PageletEditable"));
	}
}
else
{
	getPipelineDictionary().put("Result", Boolean.FALSE);
}%><% printFooter(out); %>
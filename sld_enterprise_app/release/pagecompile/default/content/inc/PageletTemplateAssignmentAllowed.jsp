<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.pmc.capi.pagelet.Slot"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.Placeholder"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% 
	boolean result = false;
	Object contextObject = getObject("ContextObject");
	if (contextObject instanceof Slot) 
	{
		Slot slot = (Slot)contextObject;
		if (slot.getParentPagelet().isTemplate()) 
		{
            // Is this slot already mapped, or not?
			result = slot.getPlaceholderDefinition() == null;
		}
	}
	else if (contextObject instanceof Placeholder) 
	{
		Placeholder placeholder = (Placeholder)contextObject;
		if (placeholder.getTemplate().isTemplate()) 
		{
            // Is this placeholder already mapped, or not?
			result = placeholder.getSourcePlaceholderDefinition() == null;
		}
	}
	getPipelineDictionary().put("Result", result);
%><% printFooter(out); %>
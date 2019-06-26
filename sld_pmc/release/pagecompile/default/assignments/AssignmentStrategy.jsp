<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr,
				com.intershop.beehive.core.capi.domain.Domain,
				com.intershop.beehive.core.capi.domain.PersistentObject,
				com.intershop.beehive.core.capi.util.PositionableHelper,
				com.intershop.beehive.core.capi.util.Positionable,
				com.intershop.component.foundation.capi.assignment.AssignmentStrategyProvider,
				com.intershop.component.foundation.capi.assignment.AssignmentStrategy" %><%!
    private Class<?> resolveClass(String name)
    {
        try
        {
            if (name != null)
                return Class.forName(name);
        }
        catch (ClassNotFoundException cnfe)
        {
            Logger.error(this, "Cannot resolve given class name", cnfe);
        }

        return null;
    }

	private static abstract class PositionablePersistentObject implements Positionable, PersistentObject
	{
	}
%><%
	AssignmentStrategyProvider provider = NamingMgr.getProvider(AssignmentStrategyProvider.class);
	
	if (provider == null)
	{
		Logger.error(this, "Unable to find a provider implementation for {}",
		                AssignmentStrategyProvider.REGISTRY_NAME);
		throw new RuntimeException("No provider implementation found");
	}

	Domain domain = (Domain)getObject("Domain");
	PersistentObject contextObject = (PersistentObject)getObject("ContextObject");
	String from = (String)getObject("FromClass");
	String to = (String)getObject("ToClass");
	AssignmentStrategy assignmentStrategy = null;

	if (domain != null && contextObject != null)
	{
        if (from != null)
        {
            assignmentStrategy = provider.getAssignmentStrategy(domain.getSite(), resolveClass(from), contextObject.getClass());
        }
        else
        {
            assignmentStrategy = provider.getAssignmentStrategy(domain.getSite(), contextObject);
        }

		PositionableHelper<PersistentObject,PositionablePersistentObject> pHelper = assignmentStrategy.getPositionableHelper(contextObject, domain);
		getPipelineDictionary().put("PositionableHelper", pHelper);
	}
	else if(domain != null)
	{
        assignmentStrategy = provider.getAssignmentStrategy(domain.getSite(), resolveClass(from), resolveClass(to));
	}
	getPipelineDictionary().put("AssignmentStrategy", assignmentStrategy);
%><% printFooter(out); %>
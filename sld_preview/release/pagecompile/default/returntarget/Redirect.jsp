<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.beehive.core.capi.request.Request"%>
<%@page import="com.intershop.beehive.core.capi.domain.ApplicationMgr" %>
<%@page import="com.intershop.beehive.core.capi.domain.Application"%>
<%@page import="com.intershop.beehive.core.capi.url.Parameters"%>
<%@page import="com.intershop.beehive.core.capi.url.Action"%>
<%@page import="com.intershop.beehive.core.capi.url.URLComposition"%>
<%@page import="java.util.Map"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	Application targetApplication = getPipelineDictionary().get("TargetApplication");
	String contextApplicationUUID = getPipelineDictionary().get("ContextApplicationUUID");
	if (contextApplicationUUID != null)
	{
		ApplicationMgr applicationMgr = NamingMgr.getManager(ApplicationMgr.class);
	    Application contextApplication = applicationMgr.getApplicationByUUID(contextApplicationUUID);
		if (contextApplication != null)
		{
		    targetApplication = contextApplication;
		}
	}

	String contextPipeline = getPipelineDictionary().get("ContextPipeline");
	Map<String,String> contextPipelineMap = getPipelineDictionary().get("ContextPipelineMap");
	
	URLComposition composer = new URLComposition();
	Action action = new Action(contextPipeline);
	if (targetApplication != null)
	{
		action = new Action(
		                contextPipeline, 
		                "-", 
		                targetApplication.getSite().getDomainName(), 
		                Request.getCurrent().getURLLanguageID(), 
		                Request.getCurrent().getCurrencyCode(), 
		                targetApplication.getUrlIdentifier());
	}
        
    Parameters parameters = new Parameters();
    if (contextPipelineMap != null)
    {
        for (String key : contextPipelineMap.keySet())
        {
            parameters.addParameter(key, contextPipelineMap.get(key));
        }
 	}
	getPipelineDictionary().put("TargetURL", composer.createURL(action, parameters));
 %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(getObject("TargetURL"),null)); %><% printFooter(out); %>
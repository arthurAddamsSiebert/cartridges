<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@
	page import="com.intershop.beehive.core.capi.request.Request, 
	 com.intershop.beehive.core.capi.log.Logger,
	 com.intershop.beehive.core.capi.log.LogScope,
	 com.intershop.beehive.core.internal.webservice.WebServiceMgrImpl, 
	 com.intershop.beehive.core.internal.webservice.WebServiceMgr, 
	 com.intershop.beehive.core.internal.webservice.WebServiceRequestWrapper, 
	 com.intershop.beehive.core.internal.webservice.WebServiceServlet, 
	 com.intershop.beehive.core.internal.webservice.configuration.WebServiceEngineConfiguration, 
	 org.apache.axis.AxisEngine, 
	 org.apache.axis.description.OperationDesc, 
	 org.apache.axis.description.ServiceDesc, 
	 java.util.Iterator, 
	 java.util.ArrayList, 
	 java.io.IOException"
%>

<%!
	/**
	 * This template is included from the WebService servlet to display a list 
	 * of available webservices for a domain.
	 */
	 
	public String getBaseURL(HttpServletRequest request)
	{
		String baseURL = null;
		
		String scheme = request.getScheme();
		String host = request.getServerName();
		int port = request.getServerPort();
		String uri = request.getRequestURI();
		String serverPort = null;
		if (("http".equals(scheme) && (port == 80)) ||
				("https".equals(scheme) && (port == 443)))
		{
				serverPort = "";
		}
		else
		{
				serverPort = ":" + port;
		}
		
		if (host.endsWith(serverPort))
		{
				baseURL = scheme + "://" + host + uri + "/";
		}
		else 
		{
				baseURL = scheme + "://" + host + serverPort + uri + "/";
		}

		return baseURL; 
	}
%>

<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<title><% {out.write(localizeISText("templates.WebServiceList.Intershop7WebServices.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
	</head>
	<body>
		<h2><% {out.write(localizeISText("templates.WebServiceList.Intershop7WebServices","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>

<%
    WebServiceRequestWrapper requestWrapper = WebServiceServlet.getCurrentRequest();
    
    String baseURL = getBaseURL(requestWrapper);
    String domainName = requestWrapper.getDomainName();
    
    // get iterator of deployed services
    Iterator it = null; 
        
    try
    {
        WebServiceMgr webServiceMgr = WebServiceMgrImpl.getInstance(); 
        WebServiceEngineConfiguration engConf = webServiceMgr.getEngineConfiguration(); 
        if (engConf != null)
        {
            it = engConf.getDeployedServices(domainName); 
        }
    }
    catch (Exception ex)
    {
        Logger.log(LogScope.ERROR, "webservice", this, "ISH-CORE-1574", "Couldn't get list of deployed web services.");
            
        Logger.log(LogScope.ERROR, "webservice", this, "ISH-CORE-1575", ex);
    }
    
    if (it != null && it.hasNext()) 
    {
%>
    
<% {out.write(localizeISText("templates.WebServiceList.AvailableWebServicesForTheDomain","",null,null,null,null,null,null,null,null,null,null,null));} %> <%= domainName %>:<br>

<ul>
<%
        while (it.hasNext())
        {
            ServiceDesc sd = (ServiceDesc) it.next();
%>
    <li><%= sd.getName() %> <a href="<%= baseURL %><%= sd.getName() %>?WSDL"><i><% {out.write(localizeISText("templates.WebServiceList.WSDL","",null,null,null,null,null,null,null,null,null,null,null));} %></i></a></li>

<%    
            ArrayList operations = sd.getOperations();
            if (!operations.isEmpty())
            {
%>        
    <ul>
<%
                for (int i = 0; i < operations.size(); i++)
                {
                    OperationDesc desc = (OperationDesc) operations.get(i);
%>
        <li><%= desc.getName() %></li>
<%
                }
%>            
    </ul>
<%
            }
        }
%>
</ul>
<%        
    }
    else
    {
%>    
<% {out.write(localizeISText("templates.WebServiceList.ThereAreNoWebServicesAvailable","",null,null,null,null,null,null,null,null,null,null,null));} %>
<%
    }
%>

</body>
</html><% printFooter(out); %>
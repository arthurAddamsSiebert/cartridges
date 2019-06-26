<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><%@page import="java.util.Iterator"%><%@page import="org.apache.commons.lang.StringUtils"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import="com.intershop.beehive.core.capi.domain.Domain"%><%@page import="com.intershop.beehive.core.capi.request.Request"%><%@page import="com.intershop.beehive.core.capi.webform.Form"%><%@page import="com.intershop.component.captcha.capi.CaptchaService"%><%@page import="java.util.LinkedHashMap"%><%@page import="java.util.Map"%><%@page import="com.intershop.component.application.capi.ApplicationBO"%><%@page import="com.intershop.component.service.capi.service.ServiceConfigurationBORepository"%><%@page import="com.intershop.beehive.core.capi.preference.DomainPreferenceMgr"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><% {try{executePipeline("DetermineOrganizations-Current",java.util.Collections.emptyMap(),"Organization");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 17.",e);}} %><%
	//get pipeline dictionary
	PipelineDictionary dict = getPipelineDictionary();
	
	String enablePreference = (String)dict.get("enablepreference");

	//get domain where services are registered
	Domain domain = null;
	domain = (Domain)dict.get("CurrentOrganization:OwningDomain");		     
	if(domain == null){
		domain = (Domain)dict.get("Organization:CurrentOrganization:OwningDomain");
	}
	
	// determine whether user is login or not
	boolean isUserLogin = Request.getCurrent().getSession().isLoggedIn();

		//determine if captcha is disabled using the captcha preference
	boolean isCaptchaDisabled=false;
    if (StringUtils.isNotBlank(enablePreference))
    {
		DomainPreferenceMgr domainPreferenceMgr = (DomainPreferenceMgr)NamingMgr.getInstance().lookupManager(DomainPreferenceMgr.REGISTRY_NAME);
		
        try
        {
            isCaptchaDisabled="OFF".equalsIgnoreCase(domainPreferenceMgr.getStringPreference(enablePreference,domain));         
        }
        catch(Exception ex){}
	}	

	//find captcha service implementations for the current domain
	if(!isUserLogin && !isCaptchaDisabled){
	%><span class="captchaHeaders"><%
		ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
    	ServiceConfigurationBORepository serviceConfigurationBORepository = applicationBO.getRepository("ServiceConfigurationBORepository");
			
		Iterator<CaptchaService> iter = serviceConfigurationBORepository.getServiceAdapters(CaptchaService.class).iterator();
		
		//check if service available
		while (iter.hasNext())
		{
		    CaptchaService service = iter.next();
		    //put service to pd to have access in the template
		    dict.put("captchaService", service);
		    
		    //add template for header 
		    if(service.getCapabilities().isCaptchaHeaderTemplateRequired())
		    {
		    	String headerTemplate = service.getCapabilities().getCaptchaHeaderTemplate();
		    	
		    	if(headerTemplate != null && headerTemplate.length() > 0)
		    	{
		        	dict.put("TmpTemplate", headerTemplate);
		        	
				    //create data map
		        	Map<String, Object> captchaHeaderData = service.prepareViewCaptchaHeader();
				    if (captchaHeaderData != null)
				    {
				    	dict.put("captchaHeaderData", captchaHeaderData);	
			       	}
			       	
					%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("TmpTemplate"),null), null, "78");} %><%
				}
	        }
		}
	}	
%></span><% printFooter(out); %>
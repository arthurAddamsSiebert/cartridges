<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><%@page import="java.util.Iterator"%><%@page import="org.apache.commons.lang.StringUtils"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import="com.intershop.beehive.core.capi.domain.Domain"%><%@page import="com.intershop.beehive.core.capi.request.Request"%><%@page import="com.intershop.beehive.core.capi.preference.DomainPreferenceMgr"%><%@page import="com.intershop.beehive.core.capi.webform.Form"%><%@page import="com.intershop.beehive.core.capi.webform.FormParameter"%><%@page import="com.intershop.component.captcha.capi.CaptchaService"%><%@page import="com.intershop.component.application.capi.ApplicationBO"%><%@page import="com.intershop.component.service.capi.service.ServiceConfigurationBORepository"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%
	//get pipeline dictionary
	PipelineDictionary dict = getPipelineDictionary();
		
	String formFieldName = (String)dict.get("fieldname");
	String enablePreference = (String)dict.get("enablepreference");
		
	//get current formField
	FormParameter formField = null;
	if(dict.get(formFieldName) instanceof FormParameter){
		formField = (FormParameter)dict.get(formFieldName);
	}

	//put formField to pd to have access in the template
    dict.put("formField", formField);

	//get domain where services and preference are registered
	Domain domain = (Domain)dict.get("CurrentOrganization:OwningDomain");

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

	if(!isUserLogin && domain != null && formField != null && !isCaptchaDisabled)
	{

		//find captcha service implementations for the current domain		
		ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
    	ServiceConfigurationBORepository serviceConfigurationBORepository = applicationBO.getRepository("ServiceConfigurationBORepository");
		
		Iterator<CaptchaService> iter = serviceConfigurationBORepository.getServiceAdapters(CaptchaService.class).iterator();
		
		//check if service available
		if (!iter.hasNext())
		{
		    // no captcha service available, so just include the required form field 
		    // (reasoning see below)
		    %><input type="hidden" name="<%=context.getFormattedValue(getObject("formField:QualifiedName"),null)%>" value="captchaNotNeeded"><%
		}
		else while (iter.hasNext())
		{
		    CaptchaService service = iter.next();
		    //put service to pd to have access in the template
		    dict.put("captchaService", service);
		    
		    //add template
		    String bodyTemplate = service.getCapabilities().getCaptchaTemplate();
		    dict.put("TmpTemplate", bodyTemplate);
		    
		    if(bodyTemplate != null && bodyTemplate.length() > 0)
		    {
			    //create data map
	        	Map<String, Object> captchaFormData = service.prepareViewCaptcha(formField);
	        	
			    if (captchaFormData != null)
			    {
			    	//add data map to pd, accesable in the template include
			    	dict.put("captchaFormData", captchaFormData);	
		       	}
		       	%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("TmpTemplate"),null), null, "87");} %><%
	       	}
		}
	}
	else
	{
	    // in case a captcha check is not necessary, a form field is still needed or the
	    // webform "required" check will fail (captcha fields may never be optional, as
	    // a malicious user may just remove the field manually in the browser and because
	    // empty optional fields are never validated this will skip the captcha check)
	    %><input type="hidden" name="<%=context.getFormattedValue(getObject("formField:QualifiedName"),null)%>" value="captchaNotNeeded"><%
	}
%><% printFooter(out); %>
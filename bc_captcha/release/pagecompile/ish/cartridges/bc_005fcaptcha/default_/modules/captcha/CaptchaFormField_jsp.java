/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:10:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fcaptcha.default_.modules.captcha;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import com.intershop.beehive.core.internal.template.*;
import com.intershop.beehive.core.internal.template.isml.*;
import com.intershop.beehive.core.capi.log.*;
import com.intershop.beehive.core.capi.resource.*;
import com.intershop.beehive.core.capi.util.UUIDMgr;
import com.intershop.beehive.core.capi.util.XMLHelper;
import com.intershop.beehive.foundation.util.*;
import com.intershop.beehive.core.internal.url.*;
import com.intershop.beehive.core.internal.resource.*;
import com.intershop.beehive.core.internal.wsrp.*;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.pagecache.PageCacheMgr;
import com.intershop.beehive.core.capi.request.SessionMgr;
import com.intershop.beehive.core.internal.request.SessionMgrImpl;
import com.intershop.beehive.core.pipelet.PipelineConstants;
import java.util.Iterator;
import org.apache.commons.lang.StringUtils;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.domain.Domain;
import com.intershop.beehive.core.capi.request.Request;
import com.intershop.beehive.core.capi.preference.DomainPreferenceMgr;
import com.intershop.beehive.core.capi.webform.Form;
import com.intershop.beehive.core.capi.webform.FormParameter;
import com.intershop.component.captcha.capi.CaptchaService;
import com.intershop.component.application.capi.ApplicationBO;
import com.intershop.component.service.capi.service.ServiceConfigurationBORepository;
import com.intershop.beehive.core.capi.app.AppContextUtil;

public final class CaptchaFormField_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 

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
		    
      out.write("<input type=\"hidden\" name=\"");
      out.print(context.getFormattedValue(getObject("formField:QualifiedName"),null));
      out.write("\" value=\"captchaNotNeeded\">");

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
		       	
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("TmpTemplate"),null), null, "87");} 

	       	}
		}
	}
	else
	{
	    // in case a captcha check is not necessary, a form field is still needed or the
	    // webform "required" check will fail (captcha fields may never be optional, as
	    // a malicious user may just remove the field manually in the browser and because
	    // empty optional fields are never validated this will skip the captcha check)
	    
      out.write("<input type=\"hidden\" name=\"");
      out.print(context.getFormattedValue(getObject("formField:QualifiedName"),null));
      out.write("\" value=\"captchaNotNeeded\">");

	}

 printFooter(out); 
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

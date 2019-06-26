/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.quote;

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
import com.intershop.component.user.capi.UserBO;
import com.intershop.beehive.core.capi.user.User;
import com.intershop.beehive.core.capi.profile.ProfileMgr;
import com.intershop.beehive.core.internal.bos.user.BasicProfileMgr;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.user.UserMgr;
import com.intershop.beehive.core.capi.app.AppContextUtil;
import com.intershop.component.application.capi.ApplicationBO;
import com.intershop.component.customer.capi.CustomerBORepository;
import com.intershop.component.customer.capi.CustomerBO;
import com.intershop.component.customer.capi.CustomerBODetailsExtension;
import com.intershop.component.customer.capi.CustomerBOCompanyCustomerExtension;
import com.intershop.component.customer.capi.CustomerBOPrivateCustomerExtension;

public final class LoadUserHelper_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
setEncodingType("text/html"); 
      out.write("\n\n\n\n\n\n\n\n\n\n\n\n\n\n");

	String customerID = (String) getObject("quote:ScopeUUID");
	User u = new User(customerID);
	getPipelineDictionary().put("User", u);

      out.write('\n');
      out.write('\n');
 {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("User",getObject("User"))))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 21.",e);}} 
      out.write('\n');
 {Object temp_obj = (getObject("dict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} 
      out.write('\n');
      out.write(' ');

	UserBO userBO = (UserBO) getObject("UserBO");
	
	
		ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
		CustomerBORepository repository = applicationBO.getRepository("CustomerBORepository");
	
		CustomerBO customer = repository.getCustomerBO(userBO);
		

		if (customer != null)
		{
			CustomerBODetailsExtension customerDetails = customer.getExtension("CompanyCustomer");
			if (customerDetails == null)
			{
				customerDetails = customer.getExtension("PrivateCustomer");
			}
	
			getPipelineDictionary().put("customer_name", customerDetails.getName());
		}
		
		getPipelineDictionary().put("Customer", customer);
		
	

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

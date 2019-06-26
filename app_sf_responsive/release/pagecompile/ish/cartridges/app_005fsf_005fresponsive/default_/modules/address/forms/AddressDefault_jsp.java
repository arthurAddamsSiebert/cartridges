/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.address.forms;

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

public final class AddressDefault_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "3");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/SetSuffix.isml", null, "5");} 
      out.write("<div data-address-form=\"data-address-form\">");
 context.setCustomTagTemplateName("hiddenfields","modules/address/forms/inc/HiddenFieldsStateAddress.isml",false,new String[]{"usetitle","usestate","useaddress3","useshippingaddress"},null); 
 processOpenTag(response, pageContext, "hiddenfields", new TagParameter[] {
new TagParameter("usestate","false"),
new TagParameter("useshippingaddress","true"),
new TagParameter("usetitle","true"),
new TagParameter("useaddress3","true")}, 10); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/FormHeader.isml", null, "12");} 
      out.write("<p class=\"indicates-required\"><span class=\"required\">*</span>");
 {out.write(localizeISText("account.required_field.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<fieldset>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/CountrySelect.isml", null, "17");} 
      out.write("</fieldset>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"AddressDefaultExtensions", null, "20");} 
      out.write("<fieldset>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/FirstNameInput.isml", null, "23");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/LastNameInput.isml", null, "24");} 
      out.write("</fieldset>\n<fieldset>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/Address1Input.isml", null, "28");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/Address2Input.isml", null, "29");} 
      out.write("</fieldset>\n<fieldset>");
 context.setCustomTagTemplateName("cityinput","modules/address/forms/inc/CityInput.isml",false,new String[]{"showtooltip"},null); 
 processOpenTag(response, pageContext, "cityinput", new TagParameter[] {
new TagParameter("showtooltip","false")}, 34); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/PostalCodeInput.isml", null, "35");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/StateSelect.isml", null, "36");} 
      out.write("</fieldset>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/inc/PhoneInput.isml", null, "38");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("isRegistration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/forms/RegistrationAddition", null, "41");} 
 } 
      out.write("</div>");
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

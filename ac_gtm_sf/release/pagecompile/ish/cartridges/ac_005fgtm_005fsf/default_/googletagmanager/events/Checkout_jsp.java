/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fgtm_005fsf.default_.googletagmanager.events;

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

public final class Checkout_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"googletagmanager/modules/TrackingModules", null, "2");} 
 {Object temp_obj = ("com.intershop.adapter.gtm.internal.handler.ViewCheckoutEventHandler"); getPipelineDictionary().put("gtmHandler", temp_obj);} 
 {Object temp_obj = (getObject("ServiceContainer:GetContainerForHandler(gtmHandler)")); getPipelineDictionary().put("gtmCheckOutContainer", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("gtmCheckOutContainer:Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<script type=\"text/javascript\">\nwindow.dataLayer = window.dataLayer || [];\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("\ndataLayer.push({\n'event': 'checkout',\n'ecommerce': {\n'currencyCode': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'checkout': {\n'actionField': {'step': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'},\n'products': ");
 processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 19); 
      out.write("\n}\n}\n});\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("\ndataLayer.push({\n'event': 'checkout',\n'ecommerce': {\n'currencyCode': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'checkout': {\n'actionField': {\n'step': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'option': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:ShippingMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'\n},\n'products': ");
 processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 37); 
      out.write("\n}\n}\n});\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("\ndataLayer.push({\n'event': 'checkout',\n'ecommerce': {\n'currencyCode': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'checkout': {\n'actionField': {\n'step': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'option': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:PaymentMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'\n},\n'products': ");
 processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 54); 
      out.write("\n}\n}\n});\n$(document).ready(function() {\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("payment-accordion input[type=radio]').change(function() {\nvar sPaymentMethodId = $(this).closest('label').children('strong').text();\nconsole.log(sPaymentMethodId);\nwindow.dataLayer = window.dataLayer || [];\ndataLayer.push({\n'event': 'checkoutOption',\n'ecommerce': {\n'checkout_option': {\n'actionField': {\n'step': 3,\n'option': sPaymentMethodId || ''\n}\n}\n}\n});\n});\n});\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("\ndataLayer.push({\n'event': 'checkout',\n'ecommerce': {\n'currencyCode': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'checkout': {\n'actionField': {\n'step': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\n'option': '");
 {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:PaymentMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'\n},\n'products': ");
 processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 90); 
      out.write("\n}\n}\n});\n");
 }}}} 
      out.write("</script>");
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.cart.inc;

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

public final class CartCheckoutButtons_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"cost-summary\" data-section=\"CartCheckoutButtons\">\n<button \ntype=\"submit\" \nclass=\"btn btn-lg btn-block btn-primary\" \nname=\"checkout\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Basket")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_Basket"),null).equals(context.getFormattedValue("BasketMaxTotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\" title=\"");
 {out.write(localizeISText("shopping_cart.max.total.value.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
 } 
      out.write('\n');
      out.write('>');
 {out.write(localizeISText("shopping_cart.proceed_to_checkout.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("FirstPaymentCheckoutButton", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PaymentServiceBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 while (loop("PaymentServiceBOs","PaymentServiceBO",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PaymentServiceBO:Extension(\"FastCheckout\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("PaymentServiceBO:Applicability(CurrentCartBO)")); getPipelineDictionary().put("Applicability", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Applicability:State"),null).equals(context.getFormattedValue("NotApplicable",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<div class=\"text-center\"><br />");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FirstPaymentCheckoutButton"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("shopping_cart.payment.or.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 {Object temp_obj = ("false"); getPipelineDictionary().put("FirstPaymentCheckoutButton", temp_obj);} 
 } 
      out.write("<button \ntype=\"submit\" \nclass=\"btn btn-info\" \nname=\"fastCheckout_");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentServiceBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Applicability:State"),null).equals(context.getFormattedValue("Restricted",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Basket")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_Basket"),null).equals(context.getFormattedValue("BasketMaxTotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\ndisabled=\"disabled\" title=\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Applicability:State"),null).equals(context.getFormattedValue("Restricted",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 while (loop("Applicability:Output:Restrictions","Restriction",null)) { 
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("checkout.payment.restriction.",null) + context.getFormattedValue(getObject("Restriction"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Basket")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_Basket"),null).equals(context.getFormattedValue("BasketMaxTotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {out.write(localizeISText("shopping_cart.max.total.value.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write('\n');
      out.write('"');
      out.write('\n');
 } 
      out.write(' ');
      out.write('\n');
      out.write('>');
 {out.write(localizeISText("shopping_cart.payment.checkout.button","",null,getObject("PaymentServiceBO:DisplayName"),null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 } 
 } 
 } 
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

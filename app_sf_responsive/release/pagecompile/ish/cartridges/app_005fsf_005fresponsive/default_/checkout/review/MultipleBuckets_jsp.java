/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.review;

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

public final class MultipleBuckets_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingMethod\")")); getPipelineDictionary().put("CartShippingMethod", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/PaymentError", null, "6");} 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/ContinueCheckoutIfTaxServiceUnavailableError", null, "7");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/TermsAndConditionsError", null, "8");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/ProductIsNotAvailable", null, "9");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/RestrictedItems", null, "10");} 
      out.write("<div class=\"row\">\n<p class=\"col-sm-9\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.order_review.heading.subscription.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("checkout.order_review.heading.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</p>\n<p class=\"col-sm-3 text-right\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ReturnToCartLink", null, "22");} 
      out.write("</p>\n</div>\n<div class=\"row\">");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CheckoutReviewStart", null, "28");} 
      out.write("</div>\n<div class=\"row");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write(" equal");
 } 
      out.write('"');
      out.write('>');
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CheckoutReviewAdditionalInfoBox", null, "33");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/SubscriptionInfo", null, "36");} 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CartShippingMethod:BasketShippingMethodSelectionBucketBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<div class=\"row equal\">\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/BillingAddress", null, "43");} 
      out.write("</div>\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/PaymentMethod", null, "46");} 
      out.write("</div>\n</div>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"AdditionalCheckoutWidget", null, "50");} 
 while (loop("CartShippingMethod:BasketShippingMethodSelectionBucketBOs","Bucket",null)) { 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} 
 processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("recurringbasketextension",getObject("RecurringBasket")),
new TagParameter("bucketnumber",getObject("CartShippingMethod:BasketShippingMethodSelectionBucketBOs:Size"))}, 56); 
      out.write("<div class=\"row equal\">\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingAddress", null, "61");} 
      out.write("</div>\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethod", null, "64");} 
      out.write("</div>\n</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "69");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "72");} 
 } 
 } else { 
 while (loop("CartShippingMethod:BasketShippingMethodSelectionBucketBOs","Bucket",null)) { 
      out.write("<div class=\"row equal\">\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/BillingAddress", null, "80");} 
      out.write("</div>\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingAddress", null, "83");} 
      out.write("</div>\n</div>\n<div class=\"row equal\">\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethod", null, "89");} 
      out.write("</div>\n<div class=\"col-sm-6\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/PaymentMethod", null, "92");} 
      out.write("</div>\n</div>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"AdditionalCheckoutWidget", null, "96");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "99");} 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} 
 processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("recurringbasketextension",getObject("RecurringBasket")),
new TagParameter("bucketnumber",getObject("CartShippingMethod:BasketShippingMethodSelectionBucketBOs:Size"))}, 103); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "106");} 
 } 
      out.write(' ');
      out.write('\n');
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

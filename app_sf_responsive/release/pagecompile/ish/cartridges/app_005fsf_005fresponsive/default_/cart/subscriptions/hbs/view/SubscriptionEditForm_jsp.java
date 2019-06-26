/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.cart.subscriptions.hbs.view;

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

public final class SubscriptionEditForm_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 

setEncodingType("text/html"); 
      out.write("<div class=\"cart-summary cart-summary-subscription\" data-testing-id=\"cartSubscriptionSection\">\n<div class=\"radio\">\n<label>\n<input data-testing-id=\"cart-selector-onetimepurchace\" type=\"radio\" name=\"CartToSubscriptionSwitch\" value=\"default\"{{");
      out.print(context.getFormattedValue("#",null));
      out.write("unless isRecurringBasket}} checked=\"checked\"{{/unless}} />\n<strong>");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.checkbox.onetimepurchase","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</strong>\n</label>\n</div>\n<div class=\"radio\">\n<label>\n<input data-testing-id=\"cart-selector-subscription\" type=\"radio\" name=\"CartToSubscriptionSwitch\" value=\"subscription\"\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if isRecurringBasket}} checked=\"checked\"{{/if}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if isQuoteRelatedBasket}} disabled=\"disabled\"{{/if}} \n/>\n<strong>");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.checkbox.subscription","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</strong>\n</label>\n</div>\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if error}}\n<p class=\"alert alert-danger\">");
 {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n{{/if}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if isQuoteRelatedBasket}}\n<p class=\"alert alert-info\">");
 {out.write(localizeISText("subscription.rest.quoterelatedbasket.info","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n{{/if}}\n<div data-testing-id=\"cartSubscriptionForm\" data-section=\"subscriptionForm\" {{");
      out.print(context.getFormattedValue("#",null));
      out.write("unless isRecurringBasket}}style=\"display: none;\"{{/unless}}>\n<div class=\"row\">\n<div class=\"col-md-12\">\n<label for=\"CartToSubscriptionRecurrence\">");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>\n<div class=\"col-xs-4 col-md-4\">\n<div class=\"form-group\">\n<input data-testing-id=\"subscriptionRecurrenceCount\" type=\"number\" min=\"1\" class=\"form-control\" id=\"CartToSubscriptionRecurrence\" name=\"subscriptionRecurrenceCount\"\nvalue=\"{{count}}\" required data-bv-notempty-message=\"");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.recurrence.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n/>\n</div>\n</div>\n<div class=\"col-xs-8 col-md-8\">\n{{periodSelector \"subscriptionRecurrence\" period \"subscriptionInterval\"}}\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-md-6\">\n<div class=\"form-group\">\n<label for=\"CartToSubscriptionStartDate\" class=\"control-label\">");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.startdate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input data-testing-id=\"subscriptionStartDate\" type=\"text\" name=\"CartToSubscriptionStartDate\" id=\"CartToSubscriptionStartDate\" class=\"form-control\" value=\"{{startDate}}\"\nrequired data-bv-notempty-message=\"");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.startdate.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-fv-date=\"true\"\ndata-fv-date-format=\"MM/DD/YYYY\"\ndata-fv-date-message=\"");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.startdate.error.notvalid","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" \n/>\n<p class=\"input-help\">");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>\n</div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\">\n<label for=\"CartToSubscriptionEndDate\" class=\"control-label\">");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.enddate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input data-testing-id=\"subscriptionEndDate\" type=\"text\" name=\"CartToSubscriptionEndDate\" id=\"CartToSubscriptionEndDate\" class=\"form-control\" value=\"{{endDate}}\" />\n<p class=\"input-help\">");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"cost-summary\" data-section=\"CartSubscriptionSubscribeButton\" {{");
      out.print(context.getFormattedValue("#",null));
      out.write("unless isRecurringBasket}}style=\"display: none;\"{{/unless}}>\n<button type=\"button\" class=\"btn btn-lg btn-block btn-primary {{");
      out.print(context.getFormattedValue("#",null));
      out.write("if checkoutInProgress}}btn-loader{{/if}}\" name=\"SubscriptionSubscribeButton\" data-testing-id=\"subscription-checkout-btn\">\n<div class=\"loader\"></div>\n<span class=\"btn-content\">");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.subscribe","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</button>\n</div>");
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

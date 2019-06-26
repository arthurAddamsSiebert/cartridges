/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.orders;

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

public final class OrderDetails_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = (getObject("OrderBO:Extension(\"RecurringOrder\")")); getPipelineDictionary().put("RecurringOrder", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_CODE")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CancellationStatus")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<a class=\"btn-tool pull-right\" href=\"javascript:window.print()\" title=\"");
 {out.write(localizeISText("account.orderdetails.print_link.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<span class=\"glyphicon glyphicon-print\"></span>\n</a>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CancellationStatus"),null).equals(context.getFormattedValue("cancellationSuccessful",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.orderdetails.heading.cancellationSuccessful","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 {out.write(localizeISText("account.orderdetails.headerDetails.cancellationSuccessful",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CancellationStatus"),null).equals(context.getFormattedValue("cancellationImpossible",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.orderdetails.heading.cancellationImpossible","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 {out.write(localizeISText("account.orderdetails.headerDetails.cancellationImpossible",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CancellationStatus"),null).equals(context.getFormattedValue("confirmCancel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.orderdetails.heading.confirmCancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 {out.write(localizeISText("account.orderdetails.headerDetails.confirmCancel",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<div class=\"section form-group\">");
 URLPipelineAction action30 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-Dispatch",null)))),null));String site30 = null;String serverGroup30 = null;String actionValue30 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-Dispatch",null)))),null);if (site30 == null){  site30 = action30.getDomain();  if (site30 == null)  {      site30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup30 == null){  serverGroup30 = action30.getServerGroup();  if (serverGroup30 == null)  {      serverGroup30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ConfirmCancelOrderUp");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue30, site30, serverGroup30,true)); 
      out.write("<input type=\"hidden\" name=\"OrderID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<button class=\"btn btn-primary\" name=\"cancelOrder\" type=\"submit\">");
 {out.write(localizeISText("account.orderdetails.cancel.confirm_cancel_button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<button class=\"btn btn-default\" name=\"cancelCancellation\" type=\"submit\">");
 {out.write(localizeISText("account.orderdetails.cancel.cancel_cancellation_button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 out.print("</form>"); 
      out.write("</div>");
 } else { 
      out.write("<h1>");
 {out.write(localizeISText("account.orderdetails.heading.default","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_CODE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_CODE"),null).equals(context.getFormattedValue("CONNECTION_FAIL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">");
 {out.write(localizeISText("order.orderstateservice.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("account.orderdetails.headerDetails.default",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
 }}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentUser:ID"),null).equals(context.getFormattedValue(getObject("OrderBO:UserBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrderActions", null, "50");} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_CODE")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<div class=\"section\" data-testing-id=\"order-summary-info\">\n<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText("account.orderdetails.order_number.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt><dd data-testing-id=\"order-number\">");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n<dt>");
 {out.write(localizeISText("account.orderdetails.date_of_order.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt><dd data-testing-id=\"order-date\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OrderBO:CreationDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n<dt>");
 {out.write(localizeISText("account.orderdetails.order_status.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt><dd data-testing-id=\"order-status\">");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:StatusDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n</dl>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringOrder:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentUser:ID"),null).equals(context.getFormattedValue(getObject("OrderBO:UserBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
 {out.write(localizeISText("account.subscription.order_details.note",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewSubscriptions-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SubscriptionID",null),context.getFormattedValue(getObject("RecurringOrder:RecurringOrderID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderBO:ID"),null))),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("account.subscription.order.note",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</p>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_CODE")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("OrderBO")); getPipelineDictionary().put("CurrentCartBO", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:CustomerBO")); getPipelineDictionary().put("CustomerBO", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"ShippingMethod\")")); getPipelineDictionary().put("OrderShippingMethod", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("OrderPayment", temp_obj);} 
      out.write("<div class=\"row\">");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrderDetailsInfoBoxes", null, "81");} 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderShippingBucket:hasMultipleShippments"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("<div class=\"row equal\">\n<div class=\"col-xs-12 col-sm-6 order-detail-box\">\n<div class=\"infobox\">\n<h3>");
 {out.write(localizeISText("account.orderdetails.billing_address.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail","true"),
new TagParameter("address",getObject("OrderBO:InvoiceToAddressBO"))}, 89); 
      out.write("</div>\n</div>\n<div class=\"col-xs-12 col-sm-6 order-detail-box\">\n<div class=\"infobox\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/orders/PaymentWidget", null, "94");} 
      out.write("</div>\n</div>\n</div>");
 } 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("BucketIndex", temp_obj);} 
 while (loop("OrderShippingBucket:ShippingBucketBOs","bucket",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("BucketIndex")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("BucketIndex", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderShippingBucket:hasMultipleShippments"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("<div class=\"row equal\">\n<div class=\"col-xs-12 col-sm-6 order-detail-box\">\n<div class=\"infobox\">\n<h3>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderShippingBucket:ShippingBucketBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
 {out.write(localizeISText("account.orderdetails.bucket.shipping_address.label","",null,getObject("BucketIndex"),null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else { 
 {out.write(localizeISText("account.orderdetails.bucket.shipping_address.no_param.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } 
      out.write("</h3>");
 processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("bucket:ShipToAddress"))}, 116); 
      out.write("</div>\n</div>\n<div class=\"col-xs-12 col-sm-6 order-detail-box\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/orders/ShippingWidget", null, "120");} 
      out.write("</div>\n</div>");
 } else { 
      out.write("<div class=\"equal row\">\n<div class=\"col-xs-12 col-sm-6 col-lg-3 order-detail-box\">\n<div class=\"infobox\">\n<h3>");
 {out.write(localizeISText("account.orderdetails.billing_address.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail","true"),
new TagParameter("address",getObject("OrderBO:InvoiceToAddressBO"))}, 129); 
      out.write("</div>\n</div>\n<div class=\"col-xs-12 col-sm-6 col-lg-3 order-detail-box\">\n<div class=\"infobox\">\n<h3>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderShippingBucket:ShippingBucketBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
 {out.write(localizeISText("account.orderdetails.bucket.shipping_address.label","",null,getObject("BucketIndex"),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("account.orderdetails.bucket.shipping_address.no_param.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</h3>");
 processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("bucket:ShipToAddress"))}, 142); 
      out.write("</div>\n</div>\n</div>\n<div class=\"equal row\">\n<div class=\"col-xs-12 col-sm-6 col-lg-3 order-detail-box\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/orders/ShippingWidget", null, "149");} 
      out.write("</div>\n<div class=\"col-xs-12 col-sm-6 col-lg-3 order-detail-box\">\n<div class=\"infobox\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/orders/PaymentWidget", null, "153");} 
      out.write("</div>\n</div>\n</div>");
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/common/LineItemsDetails.isml", null, "158");} 
 } 
      out.write("<div class=\"section cost-summary pull-right\">\n<h3>");
 {out.write(localizeISText("checkout.order_summary.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/common/CostSummary.isml", null, "163");} 
      out.write("</div>");
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.common;

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

public final class HeaderProgressBar_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuardJSToken", null, "3");} 
      out.write("<div class=\"progress-bar-panel\" data-testing-id=\"progress-bar\">\n<ul class=\"progress-steps\">\n<li class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentStep")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("progress-active");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CurrentStep")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("progress-complete");
 }} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("<a data-csrf-guarded href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddresses-Review",null)))),null));
      out.write("\">\n<div class=\"progress-number\"><span class=\"glyphicon glyphicon-ok\"></span></div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.addresses.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>");
 } else { 
      out.write("<div class=\"progress-number\">");
 {out.write(localizeISText("checkout.progress.step1.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.addresses.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } 
      out.write("</li>\n<li class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentStep")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("progress-active");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() >((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("VerifiedStep")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("progress-complete");
 }} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("VerifiedStep")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("<a data-csrf-guarded href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutShipping-Review",null)))),null));
      out.write("\">\n<div class=\"progress-number\"><span class=\"glyphicon glyphicon-ok\"></span></div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>");
 } else { 
      out.write("<div class=\"progress-number\">");
 {out.write(localizeISText("checkout.progress.step2.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } 
      out.write("</li>\n<li class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentStep")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("progress-active");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() >((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("VerifiedStep")).doubleValue() >((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("progress-complete");
 }} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("VerifiedStep")).doubleValue() >((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<a data-csrf-guarded href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutPayment-Review",null)))),null));
      out.write("\">\n<div class=\"progress-number\"><span class=\"glyphicon glyphicon-ok\"></span></div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.payment.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>");
 } else { 
      out.write("<div class=\"progress-number\">");
 {out.write(localizeISText("checkout.progress.step3.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.payment.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } 
      out.write("</li>\n<li class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentStep")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("progress-active");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() >((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("VerifiedStep")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("progress-complete");
 }} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((( ((Number) getObject("CurrentStep")).doubleValue() !=((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("VerifiedStep")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<a data-csrf-guarded href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutReview-Start",null)))),null));
      out.write("\">\n<div class=\"progress-number\"><span class=\"glyphicon glyphicon-ok\"></span></div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.review.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>");
 } else { 
      out.write("<div class=\"progress-number\">");
 {out.write(localizeISText("checkout.progress.step4.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.review.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } 
      out.write("</li>\n<li class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentStep")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("progress-active");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CurrentStep")).doubleValue() >((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("progress-complete");
 } 
      out.write("\">\n<div class=\"progress-number\">");
 {out.write(localizeISText("checkout.progress.step5.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<span class=\"progress-label\">");
 {out.write(localizeISText("checkout.progress.receipt.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</li>\n</ul>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentStep")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","CheckoutCart")}, 57); 
 } else { 
 {try{executePipeline("FireTrackingEvents-ViewCheckout",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentSession",getObject("CurrentSession")))).addParameter(new ParameterEntry("CurrentUser",getObject("CurrentUser"))).addParameter(new ParameterEntry("CurrentRequest",getObject("CurrentRequest"))).addParameter(new ParameterEntry("TrackingDataContainer",getObject("TrackingDataContainer"))).addParameter(new ParameterEntry("Basket",getObject("CurrentCartBO"))).addParameter(new ParameterEntry("CheckoutStep",context.getFormattedValue("",null) + context.getFormattedValue(getObject("CurrentStep"),null)))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 59.",e);}} 
 {Object temp_obj = (getObject("dict:TrackingDataContainer")); getPipelineDictionary().put("TrackingDataContainer", temp_obj);} 
 processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","CheckoutCart")}, 68); 
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

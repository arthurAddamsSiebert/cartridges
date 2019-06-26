/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account;

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

public final class ApprovalDetailsHeading_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"section col-sm-6\" data-testing-id=\"order-summary-info\">\n<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("approval.detailspage.",null) + context.getFormattedValue(getObject("BasketType"),null) + context.getFormattedValue(".request_id",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd data-testing-id=\"order-number\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:RecurringOrderDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:RequisitionDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</dd>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("BasketBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<dt>");
 {out.write(localizeISText("approval.detailspage.order_reference_id.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 } 
      out.write(" \n<dt>");
 {out.write(localizeISText("approval.detailspage.purchaser.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:User:Profile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:User:Profile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n<dt>");
 {out.write(localizeISText("approval.detailspage.order_date.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd data-testing-id=\"order-date\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("BasketBO:CreationDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n<dt>");
 {out.write(localizeISText("approval.detailspage.order_total.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("BasketBO:GrandTotalGross"),new Integer(MONEY_LONG)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("BasketBO:Extension(\"BasketBOAdditionalInformationExtension\"):Project"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<dt>");
 {out.write(localizeISText("approval.detailspage.project.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 } 
      out.write(" \n</dl>");
 {Object temp_obj = (getObject("BasketBO:Extension(\"BasketBOOrderApprovalExtension\")")); getPipelineDictionary().put("ApprovalExtension", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApprovalExtension:ApproverID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<div class=\"section\">\n<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText("approval.detailspage.approver.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("ApprovalExtension:ApproverFirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ApprovalExtension:ApproverLastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n</dl>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApprovalExtension:ApprovalComment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText("approval.detailspage.comment.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("ApprovalExtension:ApprovalComment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n</dl>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApprovalExtension:ApprovalDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BasketBO:PersistentObject:Status")).doubleValue() ==((Number)(new Double(14))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {out.write(localizeISText("approval.detailspage.rejection_date.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("approval.detailspage.approval_date.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ApprovalExtension:ApprovalDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n</dl>");
 } 
      out.write("</div>");
 } 
      out.write("<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText("approval.detailspage.approval_status.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt><dd data-testing-id=\"order-status\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/ApprovalDetailsApprovalStatus", null, "68");} 
      out.write("</dd>\n</dl>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("<div class=\"col-sm-6\">");
 processOpenTag(response, pageContext, "subscriptiondisplay", new TagParameter[] {
new TagParameter("recurrenceinformation",getObject("RecurringBasket:RecurrenceInformation"))}, 75); 
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

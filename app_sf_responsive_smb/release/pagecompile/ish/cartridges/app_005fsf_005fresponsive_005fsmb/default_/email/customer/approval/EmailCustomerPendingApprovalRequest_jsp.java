/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fsmb.default_.email.customer.approval;

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

public final class EmailCustomerPendingApprovalRequest_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 

setEncodingType("text/html"); 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"GroupCustomer\")")); getPipelineDictionary().put("GroupCustomer", temp_obj);} 
 {Object temp_obj = (getObject("GroupCustomer:AllUserBOs")); getPipelineDictionary().put("AllUserBOs", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "7");} 
      out.write("<subject>");
 {out.write(localizeISText("email.registration.approval.heading",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</subject>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "11");} 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("email.hello.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/> \n");
 {out.write(localizeISText("email.new.customer.registered.message",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pattern\">\n<tr class=\"mobileTable\">\n<td width=\"600\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"dataList\">\n<tr>\n<td>");
 {out.write(localizeISText("email.registration.approval.customer.name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:CompanyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td> \n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:CompanyName2")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("CustomerDetails:CompanyName2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>&nbsp;</td>\n<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:Industry")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("CustomerDetails:Industry"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("email.registration.approval.industry.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Industry"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:TaxationID")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("CustomerDetails:TaxationID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("email.registration.approval.taxation.id.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:TaxationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllUserBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("email.registration.approval.user.name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>");
 while (loop("AllUserBOs","UserBO",null)) { 
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",51);}else{getLoopStack().pop();break;} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n</table>\n<p>");
 {try{executePipeline("DetermineRepositories-Channel",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 62.",e);}} 
 {out.write(localizeISText("email.registration.needs.approval.message",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"mobileButtonPattern\" bgcolor=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("1db5b5\">\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"10\" width=\"100%\">\n<tr>\n<td class=\"button\">");
 {out.write(localizeISText("email.approve_customer.button",null,null,url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null),context.getFormattedValue("WFS",null),context.getFormattedValue(getObject("dict:Repository:OwningDomain:Site:DomainName"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("dict:ManagementApplication:UrlIdentifier"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null),context.getFormattedValue("WFS",null),context.getFormattedValue(getObject("dict:Repository:OwningDomain:Site:DomainName"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("dict:ManagementApplication:UrlIdentifier"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<p class=\"copyLink\">");
 {out.write(localizeISText("email.password.link.expiry",null,null,encodeString(context.getFormattedValue(getObject("PasswordRelatedLinkLifeTime"),null)),url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null),context.getFormattedValue("WFS",null),context.getFormattedValue(getObject("dict:Repository:OwningDomain:Site:DomainName"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("dict:ManagementApplication:UrlIdentifier"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 {out.write(localizeISText("email.kind_regards.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />");
 {out.write(localizeISText("email.notification.service",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "95");} 
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

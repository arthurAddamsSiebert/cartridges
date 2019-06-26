/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fpayment_005fdemo.default_.payment_005fdemo.ishpay;

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

public final class ISHPayOnlinePayAccount_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"ipay-onlinePayLogo\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/OnlinePAY_logo.png\" width=\"130\" height=\"17\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ISHPayOnlinePayAccount.ISHPAYLogo.alt",null)),null));
      out.write("\"/></div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment_demo/ishpay/inc/ISHPayOrderAddresses", null, "5");} 
      out.write("<div>\n<h3>");
 {out.write(localizeISText("ISHPayOnlinePayAccount.Welcome","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ita_fname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ita_lname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("!</h3>\n<div>");
 {out.write(localizeISText("ISHPayOnlinePayAccount.ToPayYourOrderWithISHOnlinePayPleaseEnte","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment_demo/ishpay/inc/ISHPayOnlinePayDemoData", null, "11");} 
 URLPipelineAction action4 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ISHPayRedirect-OnlinePayPIN",null)))),null));String site4 = null;String serverGroup4 = null;String actionValue4 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ISHPayRedirect-OnlinePayPIN",null)))),null);if (site4 == null){  site4 = action4.getDomain();  if (site4 == null)  {      site4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup4 == null){  serverGroup4 = action4.getServerGroup();  if (serverGroup4 == null)  {      serverGroup4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ISHPayRedirect-OnlinePayPIN",null)))),null));out.print("\"");out.print(" name=\"");out.print("OnlinePayAccountForm");out.print("\"");out.print(" id=\"");out.print("OnlinePayAccountForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue4, site4, serverGroup4,true)); 
      out.write("<fieldset>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<p class=\"ipay-error\">");
 {out.write(localizeISText("ISHPayOnlinePayAccount.WeDonTRecognizeTheAccountNumberBankCodeC","",null,getObject("count_out"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("<div class=\"ipay-field ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("customer"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("ipay-error-field");
 } 
      out.write("\">\n<label>");
 {out.write(localizeISText("ISHPayOnlinePayAccount.AccountHolder.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label><input type=\"text\" name=\"customer\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_fname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ita_lname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</div>\n<div class=\"ipay-field ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("account"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("ipay-error-field");
 } 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("account"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<div class=\"ipay-formShift\">");
 {out.write(localizeISText("ISHPayOnlinePayAccount.PleaseEnterAValidAccountNumber.ipay","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<label>");
 {out.write(localizeISText("ISHPayOnlinePayAccount.AccountNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label><input type=\"text\" name=\"account\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("account"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("100100100");
 } 
      out.write("\"/>\n</div>\n<div class=\"ipay-field ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("bank"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("ipay-error-field");
 } 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("bank"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<div class=\"ipay-formShift\">");
 {out.write(localizeISText("ISHPayOnlinePayAccount.PleaseEnterAValidBankCode.ipay","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<label>");
 {out.write(localizeISText("ISHPayOnlinePayAccount.BankCode.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label><input type=\"text\" name=\"bank\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("bank"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("10010010");
 } 
      out.write("\"/>\n</div>\n</fieldset>\n<button type=\"submit\" name=\"ok\" class=\"ipay-formShift\">");
 {out.write(localizeISText("ISHPayOnlinePayAccount.Continue.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("\" class=\"ipay-link-cancel\" onclick=\"document.OnlinePayAccountForm.action='");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("cancelURL"),null)),null));
      out.write("'; document.OnlinePayAccountForm.submit();\">");
 {out.write(localizeISText("ISHPayOnlinePayAccount.CancelPaymentWithISHOnlinePay.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ita_fname"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ita_fname\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_fname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"ita_lname\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_lname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"ita_street\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"ita_pcode\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_pcode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"ita_city\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_city"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"ita_country\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ita_country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sfa_fname"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"sfa_fname\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("sfa_fname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"sfa_lname\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("sfa_lname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"sfa_street\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("sfa_street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"sfa_pcode\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("sfa_pcode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"sfa_city\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("sfa_city"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"sfa_country\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("sfa_country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("count_out"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"count_in\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("count_out"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 } else { 
      out.write("<input type=\"hidden\" name=\"count_in\" value=\"3\">");
 } 
      out.write("<input type=\"hidden\" name=\"email\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("email"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"currency\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"amount\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"successURL\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("successURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"failURL\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("failURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"cancelURL\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("cancelURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 out.print("</form>"); 
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
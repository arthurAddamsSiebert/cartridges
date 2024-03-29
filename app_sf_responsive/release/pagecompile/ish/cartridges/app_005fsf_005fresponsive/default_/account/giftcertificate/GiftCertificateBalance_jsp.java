/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.giftcertificate;

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

public final class GiftCertificateBalance_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.giftcard_balance.link",null)))}, 5); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 10); 
      out.write("</div>\n<div class=\"account-wrapper\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","GIFTCARDBALANCELOOKUP")}, 17); 
      out.write("</div>\n<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 23); 
      out.write("</div>\n<h1>");
 {out.write(localizeISText("account.giftcard_balance.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 URLPipelineAction action10 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewGiftCertificatesBalance-Dispatch",null)))),null));String site10 = null;String serverGroup10 = null;String actionValue10 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewGiftCertificatesBalance-Dispatch",null)))),null);if (site10 == null){  site10 = action10.getDomain();  if (site10 == null)  {      site10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup10 == null){  serverGroup10 = action10.getServerGroup();  if (serverGroup10 == null)  {      serverGroup10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewGiftCertificatesBalance-Dispatch",null)))),null));out.print("\"");out.print(" class=\"");out.print("form-horizontal");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue10, site10, serverGroup10,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("GiftCardTenderBalance:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<div class=\"list-body\">\n<div class=\"list-item-row\">\n<div class=\"list-item col-sm-8 col-xs-9 \">");
 {out.write(localizeISText("account.giftcard_balance_info","",null,getObject("Repository:DisplayName"),context.getFormattedValue(getObject("Date"),new Integer(DATE_SHORT)),null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("GiftCardTenderBalance:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("account.giftcard_balance_card_disabled","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</div>\n<div class=\"list-item col-sm-4 col-xs-3 column-price\">\n<b>");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardTenderBalance:TenderBalance"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</b>\n</div>\n</div>\n</div>");
 } else { 
      out.write("<div class=\"section\">\n<p>");
 {out.write(localizeISText("account.giftcard_balance_card_helptitle.msg",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("GiftCertificateBalanceForm:GiftCardNumber:Invalid")).booleanValue() || ((Boolean) getObject("GiftCertificateBalanceForm:GiftPinNumber:Invalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorBalance")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">");
 {out.write(localizeISText("account.giftcard_balance_errorbalance.msg","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateBalanceForm:GiftCardNumber:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label class=\"col-sm-4 control-label text-right\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftCardNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_balance_card_number.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-4\">\n<input type=\"text\" class=\"form-control\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftCardNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"11\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftCardNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateBalanceForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftCardNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" />\n</div>\n</div>\n<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateBalanceForm:GiftPinNumber:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label class=\"col-sm-4 control-label text-right\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftPinNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_balance_card_pin.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-4\">\n<input autocomplete=\"off\" type=\"password\" class=\"form-control\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftPinNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"4\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftPinNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateBalanceForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateBalanceForm:GiftPinNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" />\n</div>\n</div>\n<div class=\"form-group\">\n<div class=\"col-sm-offset-4 col-sm-3\">\n<input type=\"hidden\" data-form-action=\"true\"/>\n<button type=\"submit\" value=\"checkbalance\" name=\"checkbalance\" class=\"btn btn-primary\">");
 {out.write(localizeISText("account.giftcard_balance_check_card.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>\n</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("GiftCardTenderBalance:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" data-form-action=\"true\"/>\n<button type=\"submit\" class=\"btn btn-primary\" value=\"checkCard\" name=\"checkCard\">");
 {out.write(localizeISText("account.giftcard_balance_other_card.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 } else { 
      out.write("<h5 class=\"help-block\">");
 {out.write(localizeISText("account.giftcard_balance_card_name","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h5>\n<p class=\"help-block\">");
 {out.write(localizeISText("account.giftcard_balance_card_helpdetails.msg","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/img/giftcard/gift_card.png\"/>");
 } 
 out.print("</form>"); 
      out.write("</div>\n</div>\n</div>");
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

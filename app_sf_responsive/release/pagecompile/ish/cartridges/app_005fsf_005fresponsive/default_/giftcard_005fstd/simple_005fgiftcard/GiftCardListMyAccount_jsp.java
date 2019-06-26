/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.giftcard_005fstd.simple_005fgiftcard;

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

public final class GiftCardListMyAccount_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
      out.write('\n');
 {Object temp_obj = (getObject("GiftCardsResult:get(\"GiftCardDTOs\")")); getPipelineDictionary().put("GiftCards", temp_obj);} 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GiftCards") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("\n\t<div class=\"list-header\">\n\t\t<div class=\"list-header-item col-sm-2\">");
 {out.write(localizeISText("account.gift_certificate.giftcards.txt","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t\t<div class=\"list-header-item col-sm-3\">");
 {out.write(localizeISText("account.gift_certificate.giftcards.receivedon","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t\t<div class=\"list-header-item col-sm-2 text-right\">");
 {out.write(localizeISText("account.gift_certificate.giftcards.amount","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t\t<div class=\"list-header-item col-sm-3 text-center\">");
 {out.write(localizeISText("account.gift_certificate.giftcards.amountremaining","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t\t<div class=\"list-header-item col-sm-2\">");
 {out.write(localizeISText("account.gift_certificate.giftcards.status.txt","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t</div>\n\t<div class=\"list-body\">\n\t\t\n\t\t");
 while (loop("GiftCards","GiftCard",null)) { 
      out.write("\n\t\t\t<div class=\"list-item-row\">\n\t\t\t\t\n\t\t\t\t<div class=\"col-xs-6 col-sm-2 list-item\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.type.digital","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />\n\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("PHYSICAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.type.physical","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.type.unknown","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />\n\t\t\t\t\t");
 }} 
      out.write("\t\n\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Number"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t</div>\n\t\t\t\t\n\t\t\t\t\n\t\t\t\t<div class=\"col-xs-3 col-sm-2 text-right col-sm-push-3 list-item\">\n\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:StartAmount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t</div>\n\t\t\t\t\n\t\t\t\t\n\t\t\t\t<div class=\"col-xs-3 col-sm-2 col-sm-push-6 list-item\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("REDEEMED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.status.redeemed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("PENDING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.status.pending","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.status.partially_redeemed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t");
 }} 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("GiftCard:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t<br/>\n\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.disabled","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</div>\n\t\t\t\t\n\t\t\t\t\n\t\t\t\t<div class=\"clearfix visible-xs-block\"></div>\n\t\t\t\t<div class=\"col-sm-3 col-sm-pull-4 list-item\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.giftcards.from.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:SenderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:SenderEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br />\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("account.gift_certificate.giftcards.on.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:CreationDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t</div>\n\t\t\t\t\n\t\t\t\t\n\t\t\t\t<div class=\"col-sm-3 col-sm-pull-2 text-center list-item\">\n\t\t\t\t\t<div class=\"text-left visible-xs\">\n\t\t\t\t\t\t<label>");
 {out.write(localizeISText("account.gift_certificate.giftcards.amountremaining","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n\t\t\t\t\t\t<span class=\"label label-info\">");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Amount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n\t\t\t\t\t</div>\n\t\t\t\t\t<div class=\"hidden-xs label label-info\">");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Amount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n\t\t\t\t</div>\n\t\t\t\t\n\t\t\t\t<div class=\"list-item\"></div>\n\t\t\t</div>\n\t\t");
 } 
      out.write("\n\t</div>\n");
 } else { 
      out.write("\n\t<p>");
 {out.write(localizeISText("account.gift_certificate.notused","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n");
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
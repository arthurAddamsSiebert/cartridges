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

public final class ISHPayOnlinePayFail_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} 
      out.write("<div class=\"ipay-onlinePayLogo\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/OnlinePAY_logo.png\" width=\"130\" height=\"17\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ISHPayOnlinePayFail.ISHPAYLogo.alt",null)),null));
      out.write("\"/></div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment_demo/ishpay/inc/ISHPayOrderAddresses", null, "5");} 
      out.write("<div>\n<h3>");
 {out.write(localizeISText("ISHPayOnlinePayFail.PaymentFailed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("code"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("ISHPayOnlinePayFail.YourPaymentWithISHOnlinePayCouldNotBeAut","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<div>\n<span class=\"ipay-label\">");
 {out.write(localizeISText("ISHPayOnlinePayFail.AccountHolder","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 {String value = null;try{value=context.getFormattedValue(getObject("customer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<div>");
 processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedAccountNumber"),
new TagParameter("character","x"),
new TagParameter("length","4"),
new TagParameter("text",getObject("account")),
new TagParameter("direction","begin")}, 14); 
      out.write("<span class=\"ipay-label\">");
 {out.write(localizeISText("ISHPayOnlinePayFail.AccountNumber","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 {String value = null;try{value=context.getFormattedValue(getObject("truncatedAccountNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<div>\n<span class=\"ipay-label\">");
 {out.write(localizeISText("ISHPayOnlinePayFail.BankCode","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 {String value = null;try{value=context.getFormattedValue(getObject("bank"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<div class=\"ipay-field\">\n<span class=\"ipay-label\">");
 {out.write(localizeISText("ISHPayOnlinePayFail.BankName.ipay","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 {out.write(localizeISText("ISHPayOnlinePayFail.TestBank.ipay","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("code"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("pin"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("ISHPayOnlinePayFail.YourPaymentWithISHOnlinePayCouldNotBeAut1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("ISHPayOnlinePayFail.FailedYourPaymentWithISHOnlinePayCouldNo",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 }} 
 URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(getObject("failURL"),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(getObject("failURL"),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("failURL"),null));out.print("\"");out.print(" name=\"");out.print("Form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); 
      out.write("<button type=\"submit\" name=\"back\">");
 {out.write(localizeISText("ISHPayOnlinePayFail.ViewCanceledOrder.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
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
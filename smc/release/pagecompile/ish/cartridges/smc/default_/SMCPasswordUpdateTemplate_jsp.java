/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_;

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

public final class SMCPasswordUpdateTemplate_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<!-- Template Name: SMCPasswordUpdateTemplate.isml -->\n<!-- Template Location: smc/staticfiles/cartridge/templates/default--><html>\n\t<head>");
 insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); 
      out.write("<title>");
 {out.write(localizeISText("smc.Intershop7SystemManagementConsole.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/login.css\"/>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledStyleSheet.isml", null, "9");} 
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/logo_is7.ico\">\n<script src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/js/jquery.js\"></script>\n<script src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/js/jquery.placeholder.js\"></script>\n</head>\n<body>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledOverlay.isml", null, "15");} 
      out.write("<div id=\"islabel\"></div>\n<div id=\"login\">\n<div class=\"wrapper\">\n<h1 id=\"pageName\">");
 {out.write(localizeISText("smc.ChangePassword.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<div class=\"info1\">");
 {out.write(localizeISText("SMCPasswordUpdateTemplate.YourPasswordIsAboutToExpireIn.info_text",null,null,context.getFormattedValue(getObject("DaysUntilPasswordExpiration"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<div class=\"message\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 {out.write(localizeISText("SMCPasswordUpdateTemplate.YourPasswordIsAboutToExpireIn.info_text",null,null,context.getFormattedValue(getObject("DaysUntilPasswordExpiration"),null),null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 {out.write(localizeISText("SMCPasswordUpdateTemplate.YourPasswordHasExpiredPleaseChooseANew.info_text",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdatePasswordForm:CurrentPassword:Missing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {out.write(localizeISText("smc.TheCurrentPasswordMustMatchWithTheLoginPassword.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdatePasswordForm:NewPassword:isMissing")).booleanValue() || ((Boolean) getObject("UpdatePasswordForm:NewPassword:isInvalid")).booleanValue() || ((Boolean) getObject("UpdatePasswordForm:NewPasswordConfirmation:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {out.write(localizeISText("SMCPasswordUpdateTemplate.PasswordChangeFailed.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
 {out.write(localizeISText("smc.TheCurrentPasswordMustMatchWithTheLoginPassword.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordConfirmationDoesNotMatchWithPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {out.write(localizeISText("SMCPasswordUpdateTemplate.PasswordConfirmationDoesNotMatchWithPassword.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViolatedRuleDescription")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ViolatedRuleDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ViolatedRuleDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 {out.write(localizeISText("SMCPasswordUpdateTemplate.ThePasswordIsInvalid.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
 } 
      out.write("</div>");
 URLPipelineAction action114 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePasswordLogin-ProcessPasswordChange",null)))),null));String site114 = null;String serverGroup114 = null;String actionValue114 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePasswordLogin-ProcessPasswordChange",null)))),null);if (site114 == null){  site114 = action114.getDomain();  if (site114 == null)  {      site114 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup114 == null){  serverGroup114 = action114.getServerGroup();  if (serverGroup114 == null)  {      serverGroup114 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePasswordLogin-ProcessPasswordChange",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdatePasswordForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue114, site114, serverGroup114,true)); 
      out.write("<div class=\"login\">\n<div><label>");
 {out.write(localizeISText("smc.Name.login_text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label><span class=\"displayText\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span></div>\n<div><input autocomplete=\"off\"type=\"password\" class=\"inputText\" name=\"UpdatePasswordForm_CurrentPassword\" id=\"UpdatePasswordForm_CurrentPassword\" placeholder=\"");
 {out.write(localizeISText("SMCPasswordUpdateTemplate.CurrentPassword.login_text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" /></div>\n<div><input autocomplete=\"off\"type=\"password\" class=\"inputText\" name=\"UpdatePasswordForm_NewPassword\" id=\"UpdatePasswordForm_NewPassword\" placeholder=\"");
 {out.write(localizeISText("SMCPasswordUpdateTemplate.NewPassword.login_text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" /></div>\n<div><input autocomplete=\"off\"type=\"password\" class=\"inputText\" name=\"UpdatePasswordForm_NewPasswordConfirmation\" id=\"UpdatePasswordForm_NewPasswordConfirmation\" placeholder=\"");
 {out.write(localizeISText("smc.ConfirmPassword.login_text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" /></div>\n</div>\n<div class=\"buttons\">\n<p><input type=\"submit\" name=\"passUpdate\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SMCPasswordUpdateTemplate.UpdatePassword.logon_button",null)),null));
      out.write("\" class=\"loginbutton\"/></p>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"skip\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SMCPasswordUpdateTemplate.Continue.logon_button",null)),null));
      out.write("\" class=\"loginbutton\"/></td>");
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ProjectName"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ProjectVersion"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("<div class=\"info2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProjectName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;-&nbsp;");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductVersion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProjectVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 } 
      out.write("<div class=\"info3\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductVersion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("&nbsp;-&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("&nbsp;(");
 {out.write(localizeISText("smc.UnknownProductVersion.message",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 } 
      out.write("<br/>&copy;&nbsp;");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CopyrightFrom"),null)),null));
      out.write('-');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CopyrightTo"),null)),null));
      out.write(' ');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CopyrightOwner"),null)),null));
      out.write("</div>");
 out.print("</form>"); 
      out.write("</div>\n</div>\n<script type=\"text/javascript\">\n$('input').placeholder();\n</script>\n</body>\n</html>");
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

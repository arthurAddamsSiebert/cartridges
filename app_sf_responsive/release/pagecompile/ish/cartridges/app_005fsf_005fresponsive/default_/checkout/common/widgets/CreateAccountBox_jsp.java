/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.common.widgets;

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

public final class CreateAccountBox_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"cart-summary\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegistrationSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<h3>");
 {out.write(localizeISText("checkout.create_account.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n<div class=\"alert alert-success\">\n<div>");
 {out.write(localizeISText("checkout.create_account.success.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div><br />\n<a class=\"btn btn-default\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.account.go_to_account.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n<h5>");
 {out.write(localizeISText("checkout.account.create.benefit.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h5>\n<ul>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit1.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit2.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit3.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit4.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n</ul>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CurrentSession:LoggedIn")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("knownEMail"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<h3>");
 {out.write(localizeISText("checkout.create_account.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n<div class=\"section\">");
 URLPipelineAction action62 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null)))),null));String site62 = null;String serverGroup62 = null;String actionValue62 = context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null)))),null);if (site62 == null){  site62 = action62.getDomain();  if (site62 == null)  {      site62 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup62 == null){  serverGroup62 = action62.getServerGroup();  if (serverGroup62 == null)  {      serverGroup62 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("CredentialForm");out.print("\"");out.print(" class=\"");out.print("bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue62, site62, serverGroup62,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("CredentialForm:isSubmitted")).booleanValue() && ((Boolean) getObject("CredentialForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("UserNotLoggedIn",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("<div role=\"alert\" class=\"alert alert-danger\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CredentialForm:Password:isError(\"error.stringcompare\")")).booleanValue() || ((Boolean) getObject("CredentialForm:RetypedPassword:isError(\"error.stringcompare\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("checkout.account.password.not_match.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CredentialForm:Password:isError(\"invalid.password\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("account.form.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CredentialForm:Password:isError(\"error.required\")")).booleanValue() || ((Boolean) getObject("CredentialForm:RetypedPassword:isError(\"error.required\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("error.required","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("CredentialForm:Login:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<div role=\"alert\" class=\"alert alert-danger\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CredentialForm:Login:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("checkout.account.email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("checkout.account.email.already_exist.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>\n<div class=\"form-group\">\n<label for=\"email\" class=\"control-label\">");
 {out.write(localizeISText("checkout.account.email.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input autocomplete=\"off\" \nid=\"email\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CredentialForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nclass=\"form-control");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("CredentialForm:Login:isInvalid"))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write(" has-error");
 } 
      out.write("\" \nsize=\"18\" \ntype=\"text\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CredentialForm:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write(" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CredentialForm:Login:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } 
      out.write("\n/>\n</div>");
 } else { 
      out.write("<div class=\"form-group\">\n<label for=\"email\">");
 {out.write(localizeISText("checkout.account.email.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n<strong>");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:NotificationEmailAddress"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</strong>\n</div>\n<input autocomplete=\"off\" id=\"email\" type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CredentialForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:NotificationEmailAddress"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"OrderID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 processOpenTag(response, pageContext, "passwordinput", new TagParameter[] {
new TagParameter("Field",getObject("CredentialForm:Password")),
new TagParameter("LabelKey","checkout.account.password.label"),
new TagParameter("Domain",getObject("CurrentOrganization:Domain")),
new TagParameter("ConfirmationField",getObject("CredentialForm:RetypedPassword"))}, 82); 
      out.write("<button type=\"submit\" class=\"btn btn-primary\" name=\"register\">");
 {out.write(localizeISText("checkout.account.signup.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 out.print("</form>"); 
      out.write("</div>\n<h5>");
 {out.write(localizeISText("checkout.account.create.benefit.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h5>\n<ul class=\"\">\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit1.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit2.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit3.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("checkout.account.create.benefit4.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n</ul>");
 } else { 
      out.write("<h3>");
 {out.write(localizeISText("checkout.account.email.registered.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 {out.write(localizeISText("checkout.account.email.registered.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<span class=\"text-nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("InitialLogin",null),context.getFormattedValue(getObject("OrderBO:NotificationEmailAddress"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.account.email.registered.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>.</span>");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("RegistrationSuccessful"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<h3>");
 {out.write(localizeISText("checkout.account.email.registered.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 {out.write(localizeISText("checkout.account.email.registered.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<span class=\"text-nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null)))),null));
      out.write("\" data-testing-id=\"myaccount-link\">");
 {out.write(localizeISText("checkout.account.email.registered.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>.</span>");
 }} 
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

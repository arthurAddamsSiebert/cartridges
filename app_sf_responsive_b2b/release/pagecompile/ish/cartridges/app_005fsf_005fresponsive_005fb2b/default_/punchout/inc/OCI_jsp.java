/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.punchout.inc;

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

public final class OCI_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"section\">\n<p>");
 {out.write(localizeISText("account.punchout.subtitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 {Object temp_obj = (getObject("CustomerBO:Extension(\"Punchout\")")); getPipelineDictionary().put("PunchoutExtension", temp_obj);} 
 URLPipelineAction action27 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Dispatch",null)))),null));String site27 = null;String serverGroup27 = null;String actionValue27 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Dispatch",null)))),null);if (site27 == null){  site27 = action27.getDomain();  if (site27 == null)  {      site27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup27 == null){  serverGroup27 = action27.getServerGroup();  if (serverGroup27 == null)  {      serverGroup27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Dispatch",null)))),null));out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue27, site27, serverGroup27,true)); 
      out.write("<input type=\"hidden\" name=\"FirstName\" value=\"OCI\">\n<input type=\"hidden\" name=\"LastName\" value=\"User\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("PunchoutExtension:PunchoutUserBOs(PunchoutType)") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<div class=\"section\">\n<p>");
 {out.write(localizeISText("account.punchout.no.user.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<div role=\"alert\" class=\"alert alert-danger\">");
 {out.write(localizeISText("account.user.new.login.already_exist.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write(" \n<div role=\"alert\" class=\"alert alert-danger\">");
 {out.write(localizeISText("account.update_password.new_password.error.regexp","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 }} 
      out.write("<div>\n<fieldset>\n<div class=\"form-group\">\n<label class=\"control-label col-sm-4\" for=\"\">");
 {out.write(localizeISText("account.punchout.username.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-8\">\n<input type=\"text\" autocomplete=\"off\" maxlength=\"35\" aria-required=\"true\" \ndata-validate=\"required\"\nclass=\"form-control\"\nname=\"Login\"\nid=\"Login\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nrequired \ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.punchout.username.error.required","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-regexp=\"true\" \ndata-bv-regexp-regexp=\"^[a-zA-Z0-9_.@]*$\"\ndata-bv-regexp-message=\"");
 {out.write(localizeISText("account.punchout.username.invalid","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n>\n</div>\n</div>");
 processOpenTag(response, pageContext, "passwordinput", new TagParameter[] {
new TagParameter("ShowHint","false"),
new TagParameter("LabelClass","col-sm-4"),
new TagParameter("Class","col-sm-8"),
new TagParameter("Domain",getObject("CurrentOrganization:Domain")),
new TagParameter("FieldName","Password"),
new TagParameter("ConfirmationFieldName","PasswordConfirmation")}, 50); 
      out.write("</fieldset>\n<div class=\"form-group\">\n<div class=\"col-sm-offset-4 col-sm-8\">\n<button class=\"btn btn-primary\" name=\"enable\" type=\"submit\">");
 {out.write(localizeISText("account.punchout.button.create","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>\n</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PunchoutExtension:PunchoutUserBOs(PunchoutType)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<div class=\"section\" data-testing-id=\"account-oci-user-list\">\n<h3>");
 {out.write(localizeISText("account.punchout.oci.user.list.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n</div>\n<div class=\"list-header hidden-xs\">\n<div class=\"col-sm-9 list-header-item\">");
 {out.write(localizeISText("account.punchout.oci.user.list.table.user",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div> \n</div>\n<div class=\"list-body\">");
 while (loop("PunchoutExtension:PunchoutUserBOs(PunchoutType)","UserBO","Counter")) { 
      out.write("<div class=\"list-item-row\"> \n<div class=\"col-sm-8 list-item\" data-testing-id=\"account-oci-user-");
      out.print(context.getFormattedValue(getObject("Counter"),null));
      out.write("\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserBO:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBO:Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<p class=\"help-block\">(");
 {out.write(localizeISText("account.user.list.status.inactive",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(")</p>");
 } 
      out.write(" \n</div>\n<div class=\"col-sm-4 list-item text-right\" >\n<a class=\"btn-tool\" title=\"");
 {out.write(localizeISText("account.profile.update.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" \nhref=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserBO:ID"),null)))),null));
      out.write("\"\ndata-testing-class=\"link-oci-punchout-profile-settings-");
      out.print(context.getFormattedValue(getObject("Counter"),null));
      out.write("\">\n<span class=\"glyphicon glyphicon-pencil\"></span>\n</a>\n</div>\n</div>");
 } 
      out.write("</div>\n<p>");
 {out.write(localizeISText("account.punchout.info.url.helptext","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p> \n<p>");
 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(replace(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCICatalog-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("USERNAME",null),context.getFormattedValue("<USERNAME>",null))).addURLParameter(context.getFormattedValue("PASSWORD",null),context.getFormattedValue("<PASSWORD>",null)).addURLParameter(context.getFormattedValue("HOOK_URL",null),context.getFormattedValue("<HOOK_URL>",null))),null),(String)("%3C"),(String)("<strong>&lt;")),null),(String)("%3E"),(String)("&gt;</strong>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";out.write(value);} 
      out.write('<');
      out.write('p');
      out.write('>');
 } 
 out.print("</form>"); 
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.punchout;

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

public final class OCIEmailEdit_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "3");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link1",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserID"),null))))),
new TagParameter("text1",localizeText(context.getFormattedValue("account.punchout.profile.link",null))),
new TagParameter("link",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Start",null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.punchout.profile.email.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("account.punchout.link",null)))}, 6); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 17); 
      out.write("</div>");
 {Object temp_obj = (getObject("CustomerBO:Extension(\"GroupCustomer\"):UserBOByID(UserID)")); getPipelineDictionary().put("SelectedUser", temp_obj);} 
      out.write("<div class=\"account-wrapper\" data-testing-id=\"account-punchout-profile-settings-email-page\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","PUNCHOUT")}, 26); 
      out.write("</div>\n<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 31); 
      out.write("</div>\n<h1>");
 {out.write(localizeISText("account.punchout.profile.email.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>\n<div class=\"section\">\n<div class=\"edit-punchout-email-page\">");
 URLPipelineAction action30 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdateEmail",null)))),null));String site30 = null;String serverGroup30 = null;String actionValue30 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdateEmail",null)))),null);if (site30 == null){  site30 = action30.getDomain();  if (site30 == null)  {      site30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup30 == null){  serverGroup30 = action30.getServerGroup();  if (serverGroup30 == null)  {      serverGroup30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdateEmail",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateEmailForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue30, site30, serverGroup30,true)); 
      out.write("<input type=\"hidden\" name=\"UserID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<div class=\"form-group\">\n<label class=\"col-md-3 col-sm-3 control-label\">");
 {out.write(localizeISText("account.update_email.email.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-md-2 col-sm-3 control-label\">");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedUser:Email"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n</div>\n<div class=\"form-group\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"col-md-3 col-sm-3 control-label\">");
 {out.write(localizeISText("account.update_email.newemail.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-md-4 col-sm-6\">\n<input class=\"form-control\" maxlength=\"256\" autocomplete=\"off\" \ntype=\"email\" required\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-bv-emailaddress-message=\"");
 {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.update_email.email.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-testing-id=\"input-punchout-email\"\n/>\n</div>\n</div>\n<div class=\"form-group\">\n<div class=\"col-sm-offset-3 col-sm-8\">\n<button \nclass=\"btn btn-primary\" \ntype=\"submit\" \nvalue=\"UpdateEmail\" \nname=\"UpdateEmail\"\ndata-testing-id=\"button-oci-punchout-email-submit\"\n>");
 {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<a class=\"btn btn-default\" href=\"");
 {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n</div>");
 out.print("</form>"); 
      out.write("</div> \n</div>\n</div>\n</div>\n</div>");
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

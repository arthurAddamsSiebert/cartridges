/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.customer.forms.PRIVATE;

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

public final class Form_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"customer/forms/CustomerFormModules", null, "2");} 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"form_bg w e s\" width=\"100%\">\n<colgroup>\n<col/>\n<col/>\n<col/>\n<col/>\n<col width=\"100%\"/>\n</colgroup>\n<tbody>\n<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:CustomerNo"))}, 17); 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:PhoneHome"))}, 19); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Title"))}, 22); 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:PhoneBusiness"))}, 24); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:FirstName"))}, 27); 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:PhoneMobile"))}, 29); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:LastName"))}, 32); 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Fax"))}, 34); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "customerfielddate", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Birthday")),
new TagParameter("CurrentRequest",getObject("CurrentRequest"))}, 37); 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Email")),
new TagParameter("Length","256")}, 39); 
      out.write("</tr>\n<tr>\n<td class=\"label nowrap\" width=\"1%\">\n<label class=\"label");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerForm:PreferredLanguage:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write("\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("CustomerForm:PreferredLanguage:Field:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<span class=\"star\">*</span>");
 } 
      out.write("</label>\n</td>\n<td class=\"table_detail left\" colspan=\"4\">\n<select class=\"select inputfield_en\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<option value=\"\">");
 {out.write(localizeISText("customer.form.fields.labels.please-select","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("Locales","Locale",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td colspan=\"4\"> \n");
 processOpenTag(response, pageContext, "customerfieldcheckbox", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Active"))}, 62); 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerForm:CustomerApprovalStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<tr>");
 processOpenTag(response, pageContext, "customerfieldselection", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:CustomerApprovalStatus"))}, 67); 
      out.write("</tr>");
 } 
      out.write("<tr>\n<td colspan=\"5\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Login")),
new TagParameter("Length","256")}, 74); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerDetails"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td class=\"table_detail nowrap\">\n<strong>");
 {out.write(localizeISText("customer.details.creation-date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</strong>\n</td>\n<td class=\"table_detail nowrap\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:CreationDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:CreationDate"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 } else { 
      out.write("<td colspan=\"3\">&nbsp</td>");
 } 
      out.write("</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerDetails"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td colspan=\"3\">&nbsp;</td>\n<td class=\"table_detail nowrap\">\n<strong>");
 {out.write(localizeISText("customer.details.last-logged-in","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</strong>\n</td>\n<td class=\"table_detail nowrap\" colspan=\"3\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerDetails:UserBO:LastLoggedIn"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:LastLoggedIn"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:LastLoggedIn"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {out.write(localizeISText("customer.details.not-available","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</tbody>\n</table>");
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

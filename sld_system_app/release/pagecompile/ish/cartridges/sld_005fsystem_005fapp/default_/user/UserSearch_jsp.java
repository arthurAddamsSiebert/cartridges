/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fsystem_005fapp.default_.user;

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

public final class UserSearch_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SearchType\" value=\"simple\"/>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserSearch.SimpleUserSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" ...</td>\n<td class=\"right\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),null));
      out.write("\" class=\"switch_link\">");
 {out.write(localizeISText("UserSearch.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserSearch.NameOrID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<input type=\"text\" name=\"SearchTerm\" maxlength=\"350\" size=\"35\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n<td>&nbsp;</td>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"simpleSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("UserSearch.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e\">\n<colgroup>\n<col width=\"15%\" />\n<col width=\"35%\" />\n<col width=\"15%\" />\n<col width=\"35%\" />\n</colgroup>\n<tr>\n<td class=\"infobox_title\" colspan=\"2\">");
 {out.write(localizeISText("UserSearch.AdvancedUserSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"SearchType\" value=\"parametric\"/>\n</td>\n<td class=\"right\" colspan=\"2\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null)))),null));
      out.write("\" class=\"switch_link\">");
 {out.write(localizeISText("UserSearch.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n<tr>\n<!-- Main Content -->\n<td class=\"infobox_subtitle\" colspan=\"2\">");
 {out.write(localizeISText("UserSearch.GeneralUserAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"infobox_subtitle\" colspan=\"2\">");
 {out.write(localizeISText("UserSearch.AssignedObjects.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\" width=\"10%\">");
 {out.write(localizeISText("UserSearch.UserID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td>\n<input type=\"text\" name=\"BusinessPartnerNo\" size=\"35\" maxlength=\"350\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserSearch.AccessPrivilege.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td>\n<select name=\"AccessRoleID\" class=\"select inputfield_en\">\n<option value=\"All\" selected=\"selected\">");
 {out.write(localizeISText("UserSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("AccessRoles",null,null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AccessRoles:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AccessRoleID"),null).equals(context.getFormattedValue(getObject("AccessRoles:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("AccessRoles:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserSearch.FirstName.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td>\n<input type=\"text\" name=\"FirstName\" size=\"35\" maxlength=\"350\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserSearch.LastName.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td>\n<input type=\"text\" name=\"LastName\" size=\"35\" maxlength=\"350\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserSearch.Login.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td>\n<input type=\"text\" name=\"Login\" size=\"35\" maxlength=\"350\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("UserSearch.Status.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td colspan=\"2\">\n<input type=radio name=\"DisabledFlag\" value=\"All\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DisabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/>\n<span class=\"infobox_item\">");
 {out.write(localizeISText("UserSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=radio name=\"DisabledFlag\" value=\"0\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/>\n<span class=\"infobox_item\">");
 {out.write(localizeISText("UserSearch.Active.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=radio name=\"DisabledFlag\" value=\"1\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/>\n<span class=\"infobox_item\">");
 {out.write(localizeISText("UserSearch.Inactive.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=radio name=\"DisabledFlag\" value=\"2\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/>\n<span class=\"infobox_item\">");
 {out.write(localizeISText("UserSearch.TemporarilyDeactivated.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"parametricSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("UserSearch.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.user;

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

public final class UserGroupUsersSearch_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox n e w\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.FindCustomers.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"right\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroupID"),null)).addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfigurationUUID"),null))),null));
      out.write("\" class=\"switch_link\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table cellSpacing=0 cellPadding=0 border=0>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light\" for=\"SearchTerm\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light\" for=\"SearchTerm\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td><input type=\"text\" name=\"SearchTerm\" id=\"SearchTerm\" maxlength=\"350\" size=\"35\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/></td>\n<td>&nbsp;</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"simpleSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupUsersSearch_52.Find.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox searchbox n e w\">\n<colgroup>\n<col width=\"15%\"/>\n<col width=\"35%\"/>\n<col width=\"50%\"/>\n</colgroup>\n<tr>\n<td class=\"infobox_title\" colspan=\"2\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.AdvancedCustomerSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"right\" colspan=\"2\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroupID"),null)).addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfigurationUUID"),null))),null));
      out.write("\" class=\"switch_link\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr> \n<tr>\n<!-- Main Content -->\n<td class=\"infobox_subtitle\" colspan=\"2\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.GeneralUserAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BusinessPartnerNoError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light label_indent\" for=\"BusinessPartnerNo\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.CustomerID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_indent\" for=\"BusinessPartnerNo\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.CustomerID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td><input type=\"text\" name=\"BusinessPartnerNo\" id=\"BusinessPartnerNo\" maxlength=\"350\" style=\"width:100%\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<script language=\"javascript\" type=\"text/javascript\">\n<!--\ndocument.UserListForm.BusinessPartnerNo.focus();\n-->\n</script>\n</td> \n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FirstNameError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light label_indent\" for=\"FirstName\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_indent\" for=\"FirstName\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td><input type=\"text\" name=\"FirstName\" id=\"FirstName\" maxlength=\"350\" style=\"width:100%\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastNameError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light label_indent\" for=\"LastName\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_indent\" for=\"LastName\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td><input type=\"text\" name=\"LastName\" id=\"LastName\" maxlength=\"350\" style=\"width:100%\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LoginError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light label_indent\" for=\"Login\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_indent\" for=\"Login\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td><input type=\"text\" name=\"Login\" id=\"Login\" maxlength=\"350\" style=\"width:100%\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light label_indent\" for=\"CreationDateFromDateString\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_indent\" for=\"CreationDateFromDateString\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"infobox_item\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"16\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td> \n<td align=\"left\" colspan=\"2\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateFromDateString"),
new TagParameter("DateString",getObject("CreationDateFromDateString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 108); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateFromTimeString"),
new TagParameter("TimeString",getObject("CreationDateFromTimeString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 114); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label label_error\"><label class=\"label label_light label_indent\" for=\"CreationDateToDateString\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_indent\" for=\"CreationDateToDateString\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"infobox_item\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"16\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td> \n<td align=\"left\" colspan=\"2\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateToDateString"),
new TagParameter("DateString",getObject("CreationDateToDateString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 141); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateToTimeString"),
new TagParameter("TimeString",getObject("CreationDateToTimeString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 147); 
      out.write("</tr>\n</table>\n</td>\n</tr> \n<tr>\n<td class=\"label_radio\" nowrap=\"nowrap\"><label class=\"label label_radio label_light label_indent\" for=\"\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td colspan=\"2\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<td class=\"input_radio\"><input type=\"radio\" name=\"DisabledFlag\" id=\"DisabledFlag_All\" value=\"All\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DisabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write(" />\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"DisabledFlag_All\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_radio\"><input type=\"radio\" name=\"DisabledFlag\" id=\"DisabledFlag_Active\" value=\"0\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write(" />\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"DisabledFlag_Active\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_radio\"><input type=\"radio\" name=\"DisabledFlag\" id=\"DisabledFlag_Inactive\" value=\"1\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write(" />\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"DisabledFlag_Inactive\">");
 {out.write(localizeISText("UserGroupUsersSearch_52.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"SearchType\" value=\"parametric\"/><input type=\"submit\" name=\"parametricSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupUsersSearch_52.Find.button",null)),null));
      out.write("\" class=\"button\"/></td> \n</tr>\n</table>\n</td>\n</tr>\n</table>");
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

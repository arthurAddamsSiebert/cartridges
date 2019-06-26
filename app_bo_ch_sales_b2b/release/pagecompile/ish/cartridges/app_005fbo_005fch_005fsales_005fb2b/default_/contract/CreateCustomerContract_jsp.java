/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.contract;

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

public final class CreateCustomerContract_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} 
 {Object temp_obj = ("Contracts"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 } 
 {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("contract.create.general.title",null)))}, 12); 
      out.write("<!-- Tabs -->");
 {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/ContractTabsInc", null, "16");} 
      out.write("<!-- EO Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e\">\n<tbody>\n<tr>\n<td class=\"table_title s\">");
 {out.write(localizeISText("contract.create.general.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description s\">");
 {out.write(localizeISText("customer.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateCustomerContract:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box s\">\n<tbody>\n<tr>\n<td class=\"error_icon e top\" width=\"1%\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error top\">");
 {out.write(localizeISText("contract.form.edit.message.general","",null,null,null,null,null,null,null,null,null,null,null));} 
 while (loop("CreateCustomerContract:InvalidParameters","InvalidParameter",null)) { 
      out.write("<br/>");
 while (loop("InvalidParameter:Errors","Error",null)) { 
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("contract.form.fields.",null) + context.getFormattedValue(getObject("InvalidParameter:ID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>");
 } 
      out.write("</tbody>\n</table>\n<!-- Main Content -->");
 URLPipelineAction action10 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-New",null)))),null));String site10 = null;String serverGroup10 = null;String actionValue10 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-New",null)))),null);if (site10 == null){  site10 = action10.getDomain();  if (site10 == null)  {      site10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup10 == null){  serverGroup10 = action10.getServerGroup();  if (serverGroup10 == null)  {      serverGroup10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue10, site10, serverGroup10,true)); 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale aldi\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("contract.ContractDetails.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"infobox_item\">\n<select name=\"LocaleId\" class=\"select inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CustomerID\" value=\"");
      out.print(context.getFormattedValue(getObject("Customer:ID"),null));
      out.write("\" />\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"setLocale\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("EditPriceList.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 URLPipelineAction action11 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));String site11 = null;String serverGroup11 = null;String actionValue11 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null);if (site11 == null){  site11 = action11.getDomain();  if (site11 == null)  {      site11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup11 == null){  serverGroup11 = action11.getServerGroup();  if (serverGroup11 == null)  {      serverGroup11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CreateCustomerContract");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue11, site11, serverGroup11,true)); 
      out.write("<input type=\"hidden\" name=\"CreateCustomerContract_CustomerId\" value=\"");
      out.print(context.getFormattedValue(getObject("CustomerBO:ID"),null));
      out.write("\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:Name:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write("\" for=\"CreateCustomerContract_Name\">");
 {out.write(localizeISText("contract.form.name.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label>\n</td>\n<td class=\"table_detail\" width=\"100%\">\n<input type=\"text\" name=\"CreateCustomerContract_Name\" id=\"CreateCustomerContract_Name\" class=\"inputfield_en\" size=\"30\"\nvalue=\"");
      out.print(context.getFormattedValue(getObject("CreateCustomerContract:Name:Value"),null));
      out.write("\" />\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:ContractID:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write("\" for=\"CreateCustomerContract_ContractID\">");
 {out.write(localizeISText("contract.form.id.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label>\n</td>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"CreateCustomerContract_ContractID\" id=\"CreateCustomerContract_ContractID\" class=\"inputfield_en\" size=\"30\" \nvalue=\"");
      out.print(context.getFormattedValue(getObject("CreateCustomerContract:ContractID:Value"),null));
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Contract"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write(" disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_textarea\"><label class=\"label label_textarea\" for=\"CreateCustomerContract_Comment\">");
 {out.write(localizeISText("contract.form.comment.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n</td>\n<td class=\"table_detail\">\n<textarea name=\"CreateCustomerContract_Comment\" id=\"CreateCustomerContract_Comment\" class=\"inputfield_en\" cols=\"60\" rows=\"8\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateCustomerContract:Comment:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/inc/NotificationEmailCustomerContract.isml", null, "116");} 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_date_outside\"><label class=\"label label_date_outside");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:StartDate:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write("\" for=\"CreateCustomerContract_StartDate\">");
 {out.write(localizeISText("contract.form.startdate.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label>\n</td>\n<td class=\"table_detail\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateCustomerContract_StartDate"),
new TagParameter("DateObject",getObject("CreateCustomerContract:StartDate:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 125); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_date_outside\"><label class=\"label label_date_outside");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:EndDate:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write("\" for=\"CreateCustomerContract_EndDate\">");
 {out.write(localizeISText("contract.form.enddate.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label>\n</td>\n<td class=\"table_detail\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateCustomerContract_EndDate"),
new TagParameter("DateObject",getObject("CreateCustomerContract:EndDate:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 141); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:ContractType:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write("\" for=\"CreateCustomerContract_ContractType\">");
 {out.write(localizeISText("contract.form.contracttype.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label>\n</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">\n<select name=\"CreateCustomerContract_ContractType\" id=\"CreateCustomerContract_ContractType\" class=\"inputfield_en\" size=\"1\">\n<option value=\"5\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Contract:TypeCode"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("contract.form.contracttype.revenue.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n<td width=\"100%\" colspan=\"3\">&nbsp;</td>\n</tr>\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e\">\n<tbody>\n<tr>\n<td class=\"s\" colspan=\"2\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CustomerID\" value=\"");
      out.print(context.getFormattedValue(getObject("CustomerBO:ID"),null));
      out.write("\" />\n<input type=\"submit\" name=\"createContract\" value=\"");
 {out.write(localizeISText("contract.form.new.buttons.create","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancelContract\" value=\"");
 {out.write(localizeISText("contract.form.new.buttons.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</tbody>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "191");} 
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

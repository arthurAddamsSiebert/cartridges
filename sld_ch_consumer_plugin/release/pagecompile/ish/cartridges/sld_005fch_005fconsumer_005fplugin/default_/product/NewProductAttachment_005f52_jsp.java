/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.product;

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

public final class NewProductAttachment_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- TEMPLATENAME: product/NewAdditionalContent.isml -->\n<!-- Working Area -->\n<!-- Main Content -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessType",null),context.getFormattedValue(getObject("ProcessType"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("NewProductAttachment_52.NewAttachment.text",null)))}, 7); 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title n w e s\">");
 {out.write(localizeISText("NewProductAttachment_52.NewAttachment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- start error handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionCanceled")))).booleanValue() && ((Boolean) getObject("RegForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("RegForm:Location:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:Location:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorPath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionSubmitted")))).booleanValue() && ((Boolean) getObject("RegForm:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box e w s\">\n<tr valign=\"center\">\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\"><b>");
 {out.write(localizeISText("NewProductAttachment_52.AdditionalContentCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("RegForm:Location:isMissing"))).booleanValue() || ((Boolean) (getObject("RegForm:Location:isInvalid"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorPath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewProductAttachment_52.PleaseProvideAValidFileLocation.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionSubmitted")))).booleanValue() && ((Boolean) getObject("RegForm:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewProductAttachment_52.PleaseProvideADisplayNameForThisAttachment.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- end error handling --> \n<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("NewProductAttachment_52.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n<br/>");
 {out.write(localizeISText("NewProductAttachment_52.ClickSelectToAttachAFileFromTheSystemsContentDirectory.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action40 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null));String site40 = null;String serverGroup40 = null;String actionValue40 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null);if (site40 == null){  site40 = action40.getDomain();  if (site40 == null)  {      site40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup40 == null){  serverGroup40 = action40.getServerGroup();  if (serverGroup40 == null)  {      serverGroup40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NewACForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue40, site40, serverGroup40,true)); 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"Secure\" value=\"true\"/>\n<input type=\"hidden\" name=\"ProcessType\" value=\"New\"/>\n<input type=\"hidden\" name=\"ProductID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"webform-id\" value=\"RegForm\"/>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s n\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionCanceled")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionSubmitted")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RegForm:isSubmitted")).booleanValue() && ((Boolean) getObject("RegForm:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<td class=\"label\" nowrap=\"nowrap\">\n<label class=\"label label_error\" for=\"attachment-name\">");
 {out.write(localizeISText("NewProductAttachment_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</label>\n</td>");
 } else { 
      out.write("<td class=\"label\" nowrap=\"nowrap\">\n<label class=\"label\" for=\"attachment-name\">");
 {out.write(localizeISText("NewProductAttachment_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</label>\n</td>");
 } 
      out.write("<td class=\"table_detail\"><input type=\"text\" name=\"RegForm_DisplayName\" id=\"attachment-name\" maxlength=\"35\" size=\"60\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/></td>\n</tr>\n<tr>\n<td class=\"label_textarea\" nowrap=\"nowrap\">\n<label class=\"label label_textarea\" for=\"attchment-description\">");
 {out.write(localizeISText("NewProductAttachment_52.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n</label>\n</td>\n<td class=\"table_detail\" colspan=\"3\">\n<textarea rows=\"3\" cols=\"59\" name=\"RegForm_Description\" id=\"attchment-description\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProductAttachment_52.Language.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"table_detail\">");
 while (loop("Locales","Locales",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("<input type=\"hidden\" name=\"LocaleId\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem3\" nowrap=\"nowrap\">\n<label for=\"attachment-type\">");
 {out.write(localizeISText("NewProductAttachment_52.ContentType.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n</label>\n</td>\n<td class=\"table_detail\" width=\"100%\">\n<select name=\"RegForm_ContentType\" id=\"attachment-type\" class=\"inputfield_en\">\n<option value=\"Information\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Information",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("NewProductAttachment_52.Information.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Contract\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Contract",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("NewProductAttachment_52.Contract.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Manual\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Manual",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("NewProductAttachment_52.Manual.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Other\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Other",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("NewProductAttachment_52.Other.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("LocationSelectionCanceled"))))).booleanValue() && ((Boolean) (getObject("RegForm:isSubmitted"))).booleanValue() && ((Boolean) (((((Boolean) (getObject("RegForm:Location:isMissing"))).booleanValue() || ((Boolean) (getObject("RegForm:Location:isInvalid"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorPath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem3 error\" nowrap=\"nowrap\">\n<label for=\"attachment-location\" class=\"label_error\">");
 {out.write(localizeISText("NewProductAttachment_52.ContentDirectory.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</label>\n</td>");
 } else { 
      out.write("<td class=\"fielditem3\" nowrap=\"nowrap\">\n<label for=\"attachment-location\">");
 {out.write(localizeISText("NewProductAttachment_52.ContentDirectory.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</label>\n</td>");
 } 
      out.write("<td class=\"table_detail\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><input type=\"text\" name=\"RegForm_Location\" id=\"attachment-location\" maxlength=\"350\" size=\"49\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Location:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/></td>\n<td class=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"select\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttachment_52.Select.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"label_checkbox\" nowrap=\"nowrap\"><label class=\"label label_checkbox\" for=\"attachment-type\">");
 {out.write(localizeISText("NewProductAttachment_52.Email.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td width=\"100%\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td class=\"input_checkbox\">\n<input type=\"hidden\" name=\"fileSize\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("fileSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input name=\"RegForm_InEmail\" id=\"attachment-onconfirmationemail\" type=\"checkbox\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("RegForm:InEmail:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
      out.write("checked");
 } 
      out.write(">\n</td>\n<td class=\"label_checkbox_text\">\n<label class=\"label label_checkbox_text label_light\" for=\"attachment-onconfirmationemail\"> ");
 {out.write(localizeISText("NewProductAttachment_52.Email.info",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr> \n<tr> \n<td class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttachment_52.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttachment_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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
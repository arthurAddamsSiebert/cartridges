/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005forderimport_005fes64.default_.impex;

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

public final class OrderImportSelectFile_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Paging",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("OrderImportSelectFile_52.OrderImportStep1.breadcrumb",null)))}, 4); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderImportSelectFile_52.OrderImportSelectFile.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderCSVImport")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:SelectedFile:isMissing")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.YouHaveNotSelectedAFileAndFieldDelimiter.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderCSVImport")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.YouHaveNotProvidedAFieldDelimiter.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidateFile")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:SelectedFile:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.YouHaveNotSelectedAFile.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 }}} 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.NextStepValidateImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Dispatch",null)))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Dispatch",null)))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderCSVImport")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SelectFileForm_MappingTemplate")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.MappingTemplate.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td align=\"left\" class=\"table_detail2\">\n<select name=\"SelectFileForm_MappingTemplate\" size=\"1\" class=\"inputfield_en\" style=\"width:200px\">");
 while (loop("MappingTemplates","MappingTemplate",null)) { 
 {Object temp_obj = (context.getFormattedValue(getObject("MappingTemplate:DirectoryPath"),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("MappingTemplate:FullName"),null)); getPipelineDictionary().put("str", temp_obj);} 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplate:DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('/');
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplate:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectFileForm:MappingTemplate:Value"),null).equals(context.getFormattedValue(getObject("str"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectFileForm_MappingTemplate"),null).equals(context.getFormattedValue(getObject("str"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplate:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.FieldDelimiter.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.FieldDelimiter.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write(" \n<td colspan=\"2\" align=\"left\" class=\"table_detail2\">\n<input type=\"text\" name=\"SelectFileForm_FieldDelimiter\" size=\"2\" maxlength=\"1\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:FieldDelimiter:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectFileForm_FieldDelimiter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("<td colspan=\"2\" align=\"left\" class=\"table_detail2\">\n<input type=\"text\" name=\"SelectFileForm_FieldDelimiter\" size=\"2\" maxlength=\"1\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm_FieldDelimiter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else { 
      out.write("<td align=\"left\" colspan=\"2\" class=\"table_detail2\">\n<input type=\"text\" name=\"SelectFileForm_FieldDelimiter\" size=\"2\" maxlength=\"1\" class=\"inputfield_en\" value=\";\"/>\n</td>");
 }} 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.FormatLineNumber.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write(" \n<td colspan=\"2\" align=\"left\" class=\"table_detail2\">\n<input type=\"text\" name=\"SelectFileForm_FormatLineNumber\" size=\"2\" maxlength=\"2\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:FormatLineNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectFileForm_FormatLineNumber"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<td colspan=\"2\" align=\"left\" class=\"table_detail2\">\n<input type=\"text\" name=\"SelectFileForm_FormatLineNumber\" size=\"2\" maxlength=\"2\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm_FormatLineNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else { 
      out.write("<td colspan=\"2\" align=\"left\" class=\"table_detail2\">\n<input type=\"text\" name=\"SelectFileForm_FormatLineNumber\" size=\"2\" maxlength=\"2\" class=\"inputfield_en\" value=\"1\"/>\n</td>");
 }} 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.CustomFormatLine.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td colspan=\"2\" align=\"left\" class=\"table_detail2\">\n<textarea cols=\"38\" rows=\"5\" name=\"SelectFileForm_CustomFormatLine\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:CustomFormatLine:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectFileForm_CustomFormatLine"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm_CustomFormatLine"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }} 
      out.write("</textarea>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("OrderImportSelectFile_52.ThereAreNoMappingTemplates.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 }} 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderImportSelectFile_52.Files.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->\n<tr>\n<td class=\"table_header s center\">");
 {out.write(localizeISText("OrderImportSelectFile_52.Select.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("OrderImportSelectFile_52.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("OrderImportSelectFile_52.FileSize.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 while (loop("Files","File",null)) { 
      out.write("<tr>\n<td class=\"s center top\" width=\"70\">\n<input type=\"radio\" name=\"SelectFileForm_SelectedFile\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("File:FullName"),null).equals(context.getFormattedValue(getObject("SelectFileForm:SelectedFile:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectFileForm_SelectedFile"),null).equals(context.getFormattedValue(getObject("File:FullName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail w s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) ((new Double( ((Number) getObject("File:Size")).doubleValue() /((Number) ((new Double( ((Number) new Double(1024)).doubleValue() * ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue())))).doubleValue())))).doubleValue() >=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("File:Size")).doubleValue() /((Number) ((new Double( ((Number) new Double(1024)).doubleValue() * ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue())))).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" GB\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) ((new Double( ((Number) getObject("File:Size")).doubleValue() /((Number) ((new Double( ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue())))).doubleValue())))).doubleValue() >=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("File:Size")).doubleValue() /((Number) ((new Double( ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue())))).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" MB\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) ((new Double( ((Number) getObject("File:Size")).doubleValue() /((Number) new Double(1024)).doubleValue())))).doubleValue() >=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("File:Size")).doubleValue() /((Number) new Double(1024)).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" KB\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("File:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('B');
 }}} 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail s\" colspan=\"3\">");
 {out.write(localizeISText("OrderImportSelectFile_52.NoFilesToShowHere.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"JobDescription\" value=\"");
 {out.write(localizeISText("OrderImportSelectFile_52.ValidatesOrderImportFileJobDescription.input","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"OrderCSVImport\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderCSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"ProcessPipelineName\" value=\"ProcessOrderImport\"/>\n<input type=\"hidden\" name=\"ProcessPipelineStartNode\" value=\"Validate\"/>\n<input type=\"hidden\" name=\"JobName\" value=\"ProcessOrderImpex\"/>\n<input type=\"submit\" name=\"ValidateFile\" value=\"");
 {out.write(localizeISText("OrderImportSelectFile_52.Next.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("OrderCSVImport")))).booleanValue() && !((Boolean) ((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
 {out.write(localizeISText("OrderImportSelectFile_52.Cancel.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 181); 
 } 
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
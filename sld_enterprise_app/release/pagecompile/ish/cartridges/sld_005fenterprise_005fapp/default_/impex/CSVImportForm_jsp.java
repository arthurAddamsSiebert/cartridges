/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.impex;

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

public final class CSVImportForm_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w e s w100\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select\" for=\"SelectFileForm_MappingTemplate\">");
 {out.write(localizeISText("CSVImportForm.MappingTemplate.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td align=\"left\" class=\"table_detail2 w100\">\n<select name=\"SelectFileForm_MappingTemplate\" id=\"SelectFileForm_MappingTemplate\" size=\"1\" class=\"select inputfield_en\" style=\"width:200px\">");
 while (loop("MappingTemplates","MappingTemplate",null)) { 
 {Object temp_obj = (split(context.getFormattedValue(getObject("MappingTemplate:ContentDescriptor"),null),(String)(":/"))); getPipelineDictionary().put("MappingTemplatesPath", temp_obj);} 
 while (loop("MappingTemplatesPath","MappingTemplatePath","count")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplatePath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("JobConfiguration:MappingTemplate"),null).equals(context.getFormattedValue(getObject("MappingTemplatePath"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplate:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label for=\"SelectFileForm_FieldDelimiter\" class=\"label\">");
 {out.write(localizeISText("CSVImportForm.FieldDelimiter.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><input type=\"text\" name=\"SelectFileForm_FieldDelimiter\" id=\"SelectFileForm_FieldDelimiter\" size=\"2\" maxlength=\"1\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:FieldDelimiter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label for=\"SelectFileForm_FormatLineNumber\" class=\"label\">");
 {out.write(localizeISText("CSVImportForm.FormatLineNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><input type=\"text\" name=\"SelectFileForm_FormatLineNumber\" id=\"SelectFileForm_FormatLineNumber\" size=\"2\" maxlength=\"2\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:FormatLineNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_textarea\"><label class=\"label label_textarea\" for=\"SelectFileForm_CustomFormatLine\">");
 {out.write(localizeISText("CSVImportForm.CustomFormatLine.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><textarea class=\"inputfield_en\" cols=\"38\" rows=\"5\" name=\"SelectFileForm_CustomFormatLine\" id=\"SelectFileForm_CustomFormatLine\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:CustomFormatLine"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>");
 } else { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select\" for=\"SelectFileForm_MappingTemplate\">");
 {out.write(localizeISText("CSVImportForm.MappingTemplate.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td align=\"left\" class=\"table_detail2 w100\">\n<select name=\"SelectFileForm_MappingTemplate\" id=\"SelectFileForm_MappingTemplate\" size=\"1\" class=\"select inputfield_en\" style=\"width:200px\">");
 while (loop("MappingTemplates","MappingTemplate",null)) { 
 {Object temp_obj = (split(context.getFormattedValue(getObject("MappingTemplate:ContentDescriptor"),null),(String)(":/"))); getPipelineDictionary().put("MappingTemplatesPath", temp_obj);} 
 while (loop("MappingTemplatesPath","MappingTemplatePath","count")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplatePath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectFileForm:MappingTemplate:Value"),null).equals(context.getFormattedValue(getObject("MappingTemplatePath"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplate:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label for=\"SelectFileForm_FieldDelimiter\" class=\"label label_error\">");
 {out.write(localizeISText("CSVImportForm.FieldDelimiter.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label for=\"SelectFileForm_FieldDelimiter\" class=\"label\">");
 {out.write(localizeISText("CSVImportForm.FieldDelimiter.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><input type=\"text\" name=\"SelectFileForm_FieldDelimiter\" id=\"SelectFileForm_FieldDelimiter\" size=\"2\" maxlength=\"1\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:FieldDelimiter:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>");
 } else { 
      out.write("<td align=\"left\" colspan=\"2\" class=\"table_detail2\"><input type=\"text\" name=\"SelectFileForm_FieldDelimiter\" id=\"SelectFileForm_FieldDelimiter\" size=\"2\" maxlength=\"1\" class=\"inputfield_en\" value=\";\"/></td>");
 } 
      out.write("</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:FormatLineNumber:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label for=\"SelectFileForm_FormatLineNumber\" class=\"label label_error\">");
 {out.write(localizeISText("CSVImportForm.FormatLineNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label for=\"SelectFileForm_FormatLineNumber\" class=\"label\">");
 {out.write(localizeISText("CSVImportForm.FormatLineNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><input type=\"text\" name=\"SelectFileForm_FormatLineNumber\" id=\"SelectFileForm_FormatLineNumber\" size=\"2\" maxlength=\"2\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:FormatLineNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>");
 } else { 
      out.write("<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><input type=\"text\" name=\"SelectFileForm_FormatLineNumber\" id=\"SelectFileForm_FormatLineNumber\" size=\"2\" maxlength=\"2\" class=\"inputfield_en\" value=\"1\"/></td>");
 } 
      out.write("</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_textarea\"><label class=\"label label_textarea\" for=\"SelectFileForm_CustomFormatLine\">");
 {out.write(localizeISText("CSVImportForm.CustomFormatLine.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td colspan=\"2\" align=\"left\" class=\"table_detail2\"><textarea class=\"inputfield_en\" cols=\"38\" rows=\"5\" name=\"SelectFileForm_CustomFormatLine\" id=\"SelectFileForm_CustomFormatLine\">");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:CustomFormatLine:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail\" nowrap=\"nowrap\" width=\"1%\">");
 {out.write(localizeISText("CSVImportForm.ThereAreNoMappingTemplates.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
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

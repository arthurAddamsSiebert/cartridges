/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.viewcontext;

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

public final class ViewContextExportHeader_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("auditIntoContentExport.js");
 out.print("</waplacement>"); 
      out.write("\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("ViewContextExportHeader.ExportViewContexts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t</tr>\n</table>\n");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value0",getObject("TargetViewPipelineParams:ContentRepositoryUUID")),
new TagParameter("mapname","FormValueParameters")}, 10); 
      out.write('\n');
 {try{executePipeline("ViewViewContextExport-GetFormValues",((java.util.Map)(getObject("FormValueParameters"))),"FormValues");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 13.",e);}} 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportFileNameInvalid")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportFileNameNotDefined")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n\t\t<tr>\n\t\t\t<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t<td class=\"error middle\" width=\"100%\">\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FormValues:ExportSelectedViewContexts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("ViewContextExportHeader.YouHaveNotProvidedAValidExportFileNameEnterAValidF.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("ViewContextExportHeader.YouHaveNotProvidedAValidExportFileNameEnterAValidF.error1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportSelectedViewContexts")))).booleanValue() && !((Boolean) ((hasLoopElements("FormValues:ViewContextClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n\t\t<tr>\n\t\t\t<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t<td class=\"error middle\" width=\"100%\">\n\t\t\t\t");
 {out.write(localizeISText("ViewContextExportHeader.YouHaveNotSelectedAnyViewContextsUseTheCheckBoxesT.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 }} 
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchMessagesAndErrors", null, "37");} 
      out.write("\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t<tr>\n\t\t<td class=\"table_title_description\">\n\t\t\t");
 {out.write(localizeISText("ViewContextExportHeader.SpecifyAnExportFileAndCheckTheViewContextsYouWantT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t<tr>\n\t\t<td>\n\t\t\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" height=\"66px\">\n\t\t\t\t<tr>\n\t\t\t\t\t<!-- Input for file name -->\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportAllViewContexts")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportSelectedViewContexts")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportFileNameNotDefined")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ExportFileNameInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_error\" for=\"ExportFileName\">");
 {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t<td nowrap=\"nowrap\" class=\"label\"><label class=\"label\" for=\"ExportFileName\">");
 {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t<td class=\"table_detail\">\n\t\t\t\t\t\t<input type=\"text\" name=\"ExportFileName\" size=\"40\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FormValues:ExportFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t</td>\n\t\t\t\t\t<!-- Selection for file type/extension -->\n\t\t\t\t\t<td class=\"label\" nowrap=\"nowrap\">\n\t\t\t\t\t\t<label class=\"label label_select label_horizontal_align\" for=\"ExportFileExtension\">");
 {out.write(localizeISText("ViewContextExportHeader.Format.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label>\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail\">\n\t\t\t\t\t\t<select name=\"ExportFileExtension\" size=\"1\" class=\"select inputfield_en\">\n\t\t\t\t\t\t\t<option value=\"xml\" selected=\"selected\">");
 {out.write(localizeISText("PageletExportHeader.XML.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n\t\t\t\t\t\t\t<option value=\"zip\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormValues:ExportFileExtension"),null).equals(context.getFormattedValue("zip",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("PageletExportHeader.Zip.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n\t\t\t\t\t\t</select>\n\t\t\t\t\t</td>\n\t\t\t\t\t\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentDomain:Configuration:getBoolean(\"intershop.auditing.enable\",\"(Boolean)false\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"15\" height=\"1\" alt=\"\" border=\"0\"></td>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t<input type=\"checkbox\" id=\"SelectIncludeAuditIntoExportCheckbox\" name=\"SelectIncludeAuditIntoExportCheckbox\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("InsertIntoExport"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write("/>\n\t\t\t\t\t\t\t<input type=\"hidden\" id=\"SelectIncludeAuditIntoExport\" name=\"SelectIncludeAuditIntoExport\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("InsertIntoExport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<label class=\"label label_light\" for=\"SelectIncludeAuditIntoExportCheckbox\">");
 {out.write(localizeISText("PageletExportHeader.audit.insertSelect","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </label>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"15\" height=\"1\" alt=\"\" border=\"0\"></td>\n\t\t\t\t\t\t<td style=\"padding-top: 13px\">\n\t\t\t\t\t\t\t<table class=\"js-startDateIncludeAuditIntoExport\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("InsertIntoExport"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write(" style=\"display:none;\"");
 } 
      out.write(">\n\t\t\t\t\t\t\t\t<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateIncludeAuditIntoExport"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletExportHeader.audit.startDate",null))),
new TagParameter("DateObject",getObject("StartDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 83); 
      out.write("\n\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t<td class=\"w100\">&nbsp;</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t</td>\n\t</tr>\n\t<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n</table>");
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
/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.impex;

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

public final class BMEcatExportSelectCatalog_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("BMEcatExportSelectCatalog_32.ProductCategoryExportBMEcat.text",null)))}, 3); 
 URLPipelineAction action285 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport_32-Dispatch",null)))),null));String site285 = null;String serverGroup285 = null;String actionValue285 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport_32-Dispatch",null)))),null);if (site285 == null){  site285 = action285.getDomain();  if (site285 == null)  {      site285 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup285 == null){  serverGroup285 = action285.getServerGroup();  if (serverGroup285 == null)  {      serverGroup285 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("BMEcatExportConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue285, site285, serverGroup285,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ProductCategoryExportBMEcat.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BMEcatExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("BMEcatExportConfiguration:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("BMEcatExportConfiguration:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("BMEcatExportConfiguration:CatalogDomainName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ExportCouldNotBeExecutedPleaseProvideAValidExport.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("BMEcatExportConfiguration:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("BMEcatExportConfiguration:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ExportCouldNotBeExecutedPleaseProvideAValidExport.error1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("BMEcatExportConfiguration:CatalogDomainName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ExportCouldNotBeExecutedPleaseSelectACatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("BMEcatExportConfiguration:ExportFile:Value")); getPipelineDictionary().put("ExportFileName", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "41");} 
 }}}} 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Catalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.Language.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"fielditem2\">\n<select name=\"LocaleId\" class=\"dropdown inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BMEcatExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("BMEcatExportConfiguration:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("BMEcatExportConfiguration:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
      out.write("<td class=\"fielditem2\" width=\"100%\">\n<input type=\"text\" name=\"BMEcatExportConfiguration_ExportFile\" size=\"40\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BMEcatExportConfiguration:ExportFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"fielditem2\" width=\"100%\">\n<input type=\"text\" name=\"BMEcatExportConfiguration_ExportFile\" size=\"40\" class=\"inputfield_en\"/>\n</td>");
 } 
      out.write("</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_header e s center\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.CatalogName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 while (loop("Catalogs","Catalog",null)) { 
      out.write("<tr>\n<td class=\"e s center top\" width=\"70\">\n<input type=\"radio\" name=\"BMEcatExportConfiguration_CatalogDomainName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("BMEcatExportConfiguration:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null).equals(context.getFormattedValue(getObject("BMEcatExportConfiguration:CatalogDomainName:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s\" colspan=\"3\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog_32.ThereAreCurrentlyNoCatalogsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Catalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"JobDescription\" value=\"Export categories and products\"/>\n<input type=\"hidden\" name=\"ExportDirectory\" value=\"catalog\"/>\n<input type=\"hidden\" name=\"DefaultButton\" value=\"Export\"/>\n<input type=\"submit\" name=\"Export\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BMEcatExportSelectCatalog_32.Finish.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BMEcatExportSelectCatalog_32.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n");
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

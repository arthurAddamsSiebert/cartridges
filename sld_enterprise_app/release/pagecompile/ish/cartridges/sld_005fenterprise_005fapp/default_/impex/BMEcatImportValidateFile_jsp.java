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

public final class BMEcatImportValidateFile_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectFileForm_SelectedFile",null),context.getFormattedValue(getObject("SelectFileForm_SelectedFile"),null))).addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null)).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),null));
      out.write("'\", 10000)\n</script>");
 } 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectFileForm_SelectedFile",null),context.getFormattedValue(getObject("SelectFileForm_SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletContentImportValidateFile.Step2ValidateFile.text",null))),
new TagParameter("id","BMEcat_step2")}, 9); 
      out.write("<!-- EO Page Navigator -->\n<!-- Page Navigator -->");
 URLPipelineAction action620 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-Dispatch",null)))),null));String site620 = null;String serverGroup620 = null;String actionValue620 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-Dispatch",null)))),null);if (site620 == null){  site620 = action620.getDomain();  if (site620 == null)  {      site620 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup620 == null){  serverGroup620 = action620.getServerGroup();  if (serverGroup620 == null)  {      serverGroup620 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue620, site620, serverGroup620,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.ProductAndCategoryImportBMEcat.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("BMEcatImportValidateFile.Step2Of3NextStepImportFile.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)).addURLParameter(context.getFormattedValue("manualRefresh",null),context.getFormattedValue(new Double(1),null))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ValidatingImportFile.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletContentImportValidateFile.CurrentAction.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 41); 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ValidatingImportFile.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletContentImportValidateFile.CurrentAction.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("PageletContentImportValidateFile.PreparingSourceFileValidation.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.BMEcatImportFileContent.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile.ThisFileDoesNotContainValidBMEcatXML.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.BMEcatHeaderInformation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.BMEcatTransaction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:ActionType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:AdditionalLanguage")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:AdditionalLanguage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail s\">T_NEW_CATALOG - ");
 {out.write(localizeISText("BMEcatImportValidateFile.ImportForAAdditionalLanguage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_detail s\">T_NEW_CATALOG - ");
 {out.write(localizeISText("BMEcatImportValidateFile.InitialImport.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:ActionType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail s\">T_UPDATE_PRODUCTS</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:ActionType")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail s\">T_UPDATE_PRICES</td>");
 } else { 
      out.write("<td class=\"table_detail s\">&nbsp;</td>");
 }}} 
      out.write("</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.CatalogID.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog.CatalogName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.CatalogVersion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.Lanugage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogLanguage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.BMEcatImportFileContent.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.CatalogCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_CATALOG_STRUCTURE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_CATALOG_STRUCTURE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('0');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("products.productaction.assign.actionconfirmation.products",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_ARTICLE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_ARTICLE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('0');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile.ProductCatalogCategoryBindings.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_ARTICLE_TO_CATALOGGROUP_MAP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_ARTICLE_TO_CATALOGGROUP_MAP"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('0');
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.LogFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td class=\"fielditem2\" width=\"100%\"><textarea class=\"inputfield_en\" cols=\"70\" rows=\"15\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("PageletContentImportValidateFile.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("sld_enterprise_app.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 }} 
      out.write("<table class=\"w e s n\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"SelectFile\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null));
      out.write("\" class=\"button\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SelectedFile\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"JobConfigurationUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("JobConfiguration:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"SelectCatalog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null));
      out.write("\" class=\"button\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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

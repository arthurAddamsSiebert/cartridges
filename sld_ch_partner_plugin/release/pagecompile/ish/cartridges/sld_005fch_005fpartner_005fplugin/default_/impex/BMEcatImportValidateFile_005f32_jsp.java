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

public final class BMEcatImportValidateFile_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),null));
      out.write("'\", 10000)\n</script> \n");
 } 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","BusinessChannel/Catalog/BMECatImport"),
new TagParameter("text",localizeText(context.getFormattedValue("BMEcatImportValidateFile_32.Step2ValidateFile.text",null)))}, 9); 
 URLPipelineAction action274 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-Dispatch",null)))),null));String site274 = null;String serverGroup274 = null;String actionValue274 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-Dispatch",null)))),null);if (site274 == null){  site274 = action274.getDomain();  if (site274 == null)  {      site274 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup274 == null){  serverGroup274 = action274.getServerGroup();  if (serverGroup274 == null)  {      serverGroup274 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue274, site274, serverGroup274,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.ProductAndCategoryImportBMEcatValidateFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.Step2Of3NextStepImportFileTheChosenFileWillBeValid.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_32-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.Step2Of3NextStepImportFileTheChosenFileWillBeValid.Refresh.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>.\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.ValidatingImportFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.CurrentAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 32); 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.ValidatingImportFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.CurrentAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.PreparingSourceFileValidation.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>\n</table>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.BMEcatImportFileContent.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.ThisFileDoesNotContainValidBMEcatXML.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.BMEcatHeaderInformation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.BMEcatTransaction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:TransactionType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:AdditionalLanguage")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:AdditionalLanguage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.T_NEW_CATALOGImportForAAdditionalLanguage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.T_NEW_CATALOGInitialImport.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:TransactionType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.T_UPDATE_PRODUCTS.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:TransactionType")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail s\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.T_UPDATE_PRICES.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_detail s\">&nbsp;</td>");
 }}} 
      out.write("</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.CatalogID.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.CatalogName.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.CatalogVersion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.Lanugage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogLanguage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.Currency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:BMEcat_Header_CatalogCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table> \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.BMEcatImportFileContent.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s e\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.Categories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_CATALOG_STRUCTURE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_CATALOG_STRUCTURE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.ProductTypes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_ARTICLE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_ARTICLE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.Bindings.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_ARTICLE_TO_CATALOGGROUP_MAP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_ARTICLE_TO_CATALOGGROUP_MAP"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.LogFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td class=\"fielditem2\" width=\"100%\">\n<textarea class=\"inputfield_en\" cols=\"70\" rows=\"15\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_32-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\"> \n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("BMEcatImportValidateFile_32.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n");
 } 
 }} 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"Paging\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BMEcatImportValidateFile_32.Previous.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SelectedFile\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"JobConfigurationUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("JobConfiguration:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"SelectCatalog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BMEcatImportValidateFile_32.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BMEcatImportValidateFile_32.Cancel.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
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

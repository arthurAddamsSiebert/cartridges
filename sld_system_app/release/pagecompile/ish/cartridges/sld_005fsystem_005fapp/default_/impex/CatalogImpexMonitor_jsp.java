/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fsystem_005fapp.default_.impex;

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

public final class CatalogImpexMonitor_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<script language=\"JavaScript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),null));
      out.write("'\", 10000)\n</script>");
 } 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","GetImpexType")}, 9); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexMonitor.Monitor.text1",null)),null)),
new TagParameter("text",getObject("ImpexType"))}, 10); 
 URLPipelineAction action59 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null));String site59 = null;String serverGroup59 = null;String actionValue59 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null);if (site59 == null){  site59 = action59.getDomain();  if (site59 == null)  {      site59 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup59 == null){  serverGroup59 = action59.getServerGroup();  if (serverGroup59 == null)  {      serverGroup59 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue59, site59, serverGroup59,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 14); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.Monitor.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" wrap width=\"100%\">");
 {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 20); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part2",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),"breadcrumb",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 25); 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 25); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndIsCurrentlyRunning.table_detail",null,null,context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:LastExecutionTime"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:LastExecutionTime"),new Integer(DATE_TIME)),null),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s\" width=\"1%\" nowrap>");
 {out.write(localizeISText("CatalogImpexMonitor.CurrentAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 30); 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" wrap width=\"100%\">");
 {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 36); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.TheJobIsCurrentlyRunningThisMayTakeSomeMinutes.table_title_description.part2",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-Monitor",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 41); 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 41); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.JobIsCurrentlyRunning.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail s\" width=\"1%\" nowrap>");
 {out.write(localizeISText("CatalogImpexMonitor.CurrentActionPreparing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 46); 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 46); 
      out.write("...</td>\n</tr>\n</table>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 53); 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 53); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndAborted.table_detail1.part1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionTime")}, 53); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndAborted.table_detail1.part2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionEndTime")}, 53); 
      out.write(".</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("JobConfiguration:ProcessPipelineName"),null).equals(context.getFormattedValue("ProcessBMEcatImport",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:UnknownLanguage")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:LocaleNotInstalled")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.TheLanguageCodeSpecifiedYourBMEImportFileNotSupported.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SameVersionAndLanguage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.ThereAlreadyExistsACatalogWithTheSameVersionAndLanguage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:AnotherVersionInstalled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.ThereAlreadyExistsACatalogWithTheSameIDAndLanguage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:InitialImportRequired"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.CatalogUpdatesCanOnlyBeDoneAfterAnInitial.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:CatalogVersionsNotEqual"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.TheCatalogVersionInYourBMEImportFileDoesNotMatch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:InvalidTransactionType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.InvalidBMETransactionDetected.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:UpdateCountIsValid")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:UpdateCountIsValid"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail error e w s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.TheUpdateCountIsInvalid.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","BOType")}, 115); 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","ImpexType")}, 115); 
      out.write(' ');
 {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndFinished.table_detail2.part1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionTime")}, 115); 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:LogCount_Error")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LogCount_Warn")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndFinished.table_detail2.part2a",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("CatalogImpexMonitor.JobStartedAtAndFinished.table_detail2.part2b",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(' ');
 processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","LastExecutionEndTime")}, 115); 
      out.write(".</td>\n</tr>\n</table> \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.LogFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td class=\"fielditem2\" wrap width=\"100%\"><textarea class=\"inputfield_en\" cols=\"70\" rows=\"15\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null))),null));
      out.write("\" class=\"table_detail_link2\">");
 {out.write(localizeISText("CatalogImpexMonitor.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("CatalogImpexMonitor.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("JobConfiguration:ProcessPipelineStartNode"),null).equals(context.getFormattedValue("Export",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s n\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexMonitor.ExportFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:ExportFileDoesNotExist"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(context.getFormattedValue("export/",null) + context.getFormattedValue(getObject("JobConfiguration:ExportDirectory"),null),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("JobConfiguration:SelectedFile"),null))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("CatalogImpexMonitor.DownloadExportFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &lt;");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&gt;</a></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("CatalogImpexMonitor.AnExportFileDoesNotExistOrItHasNoContent.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 }} 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "185");} 
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.monitor;

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
import com.intershop.beehive.core.capi.url.*;

public final class monitor_005fpipeline_005fperformance_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"w100\">\n<!-- Navigation and Content Area -->\n<tr>\n<td class=\"breadcrumb\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-PerformanceMonitoring",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("monitor.Performance.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;");
 {out.write(localizeISText("monitor.RequestPerformance.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td>");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewPipelinePerformance-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "9");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
      out.write("</td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/spacer.gif\" width=\"1\" height=\"5\" border=\"0\" alt=\"\"/></td> <!-- blank line, separates server select from content -->\n</tr>\n<tr>\n<td>");
 URLPipelineAction action31 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Start",null)))),null));String site31 = null;String serverGroup31 = null;String actionValue31 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Start",null)))),null);if (site31 == null){  site31 = action31.getDomain();  if (site31 == null)  {      site31 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup31 == null){  serverGroup31 = action31.getServerGroup();  if (serverGroup31 == null)  {      serverGroup31 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("Application");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue31, site31, serverGroup31,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" class=\"infobox aldi w100\">\n<tr>\n<td class=\"infobox_description nowrap\">");
 {out.write(localizeISText("monitor.SelectApplication.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<input type=\"hidden\" name=\"TargetServerID\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TargetServer:ServerID"),null)),null));
      out.write("\"/><input type=\"hidden\" name=\"SortBy\" value=\"ClassName\"/><input type=\"hidden\" name=\"SortOrder\" value=\"Ascending\"/></td>\n<td>\n<select name=\"ApplicationUUID\" size=\"1\" class=\"select inputfield_en\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationUUID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ApplicationUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<option selected=\"selected\" value=\"\">");
 {out.write(localizeISText("monitor.SelectApplication.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 while (loop("Applications","app",null)) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("app:UUID"),null)),null));
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("app:UUID"),null).equals(context.getFormattedValue(getObject("ApplicationUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('\n');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("app:Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;/&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("app:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("app:Default"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("&nbsp;(");
 {out.write(localizeISText("monitor.Default.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 } 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n<td class=\"w100\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"infobox_description\" colspan=\"3\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationUUID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ApplicationUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor.PleaseSelectAnApplicationFromTheSelectBo.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>\n<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<!-- Content Area -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ApplicationUUID"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ApplicationUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("monitor_pipeline_performance.PerformanceRequestPerformance.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e middle\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("monitor_pipeline_performance.TheRequestPerformancePageDisplaysTheResu.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PipelineSensors")))).booleanValue() && ((Boolean) (hasLoopElements("PipelineSensors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"n e w\">\n<tr>\n<td colspan=\"8\" class=\"table_subtitle s\">");
 {out.write(localizeISText("monitor.OverallRequestPerformanceIncludingPipeli.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr><td colspan=\"8\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td></tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ClassName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s nowrap\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ClassName",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.Request.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s nowrap\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ClassName",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.Request.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Hits",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Hits",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.Hits.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Hits",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.Hits.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("TotalTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("TotalTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.TotalTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("TotalTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.TotalTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("EffectiveTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("EffectiveTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.EffectiveTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("EffectiveTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.EffectiveTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("AverageTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("AverageTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.AverageTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("AverageTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.AverageTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("MinimumTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MinimumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.MinimumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MinimumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.MinimumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("MaximumTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MaximumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Ascending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.MaximumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header s nowrap right\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("MaximumTime",null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("Descending",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("monitor.MaximumTime.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write("</tr>");
 while (loop("PipelineSensors",null,null)) { 
      out.write("<tr>\n<td class=\"table_detail e s top\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("PipelineName",null),context.getFormattedValue(getObject("PipelineSensors:ContextName"),null)).addURLParameter(context.getFormattedValue("SensorName",null),context.getFormattedValue(getObject("PipelineSensors:ClassName"),null)).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue(getObject("SortBy"),null)).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("SortOrder"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:ClassName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</td>\n<td class=\"table_detail e s top right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:Hits"),"#,##0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s top right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:TotalTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s top right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:EffectiveTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s top right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:AverageTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s top right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:MinimumTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail s top right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PipelineSensors:MaximumTime"),"#,##0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n<tr>\n<td class=\"w e s right\">");
 URLPipelineAction action32 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null)))),null));String site32 = null;String serverGroup32 = null;String actionValue32 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null)))),null);if (site32 == null){  site32 = action32.getDomain();  if (site32 == null)  {      site32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup32 == null){  serverGroup32 = action32.getServerGroup();  if (serverGroup32 == null)  {      serverGroup32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPipelinePerformance-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("PipelineList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue32, site32, serverGroup32,true)); 
      out.write("<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"TargetServerID\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null));
      out.write("\"/><input type=\"hidden\" name=\"ApplicationUUID\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ApplicationUUID"),null)),null));
      out.write("\"/><input type=\"hidden\" name=\"SortBy\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SortBy"),null)),null));
      out.write("\"/><input type=\"hidden\" name=\"SortOrder\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SortOrder"),null)),null));
      out.write("\"/><input type=\"button\" onClick=\"document.PipelineList.submit();\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Refresh.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("monitor_pipeline_performance.ThereAreNoMeasuredValuesAvailable.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
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
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

public final class monitor_005fapplicationserver_005fmain_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/Modules", null, "2");} 
 processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); 
      out.write("<!-- start page navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td colspan=\"5\" class=\"breadcrumb\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;");
 {out.write(localizeISText("monitor.ApplicationServer.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"7\" alt=\"\" border=\"0\"/></div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td colspan=\"5\" class=\"overview_title\">");
 {out.write(localizeISText("monitor.ApplicationServer.overview_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"5\" class=\"table_title_description\">");
 {out.write(localizeISText("monitor_applicationserver_main.InformationAboutTheApplicationServers.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>&nbsp;</td>\n</tr>\n<tr>\n<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerInformation-Start",null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("monitor.ProcessInformation.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("monitor.PageDisplaysAppServerInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 36); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("</tr><tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td><td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerResourceUsage-Start",null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("monitor.ResourceUsage.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("monitor.PageDisplaysSystemResourceInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 53); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("</tr><tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td><td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerProperties-Start",null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("monitor.Properties.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("monitor.PageDisplaysConfigurationProperties.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 70); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("</tr><tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td><td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSessionInformation-Start",null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("monitor.SessionsAndRequests.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("monitor.PageDisplaysSessionRequestInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 87); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("</tr><tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td><td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfiguration-Start",null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("monitor_applicationserver_main.ConfigurationValues.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("monitor_applicationserver_main.PageDisplaysTheConfigurationProperties.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 104); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
      out.write("</tr><tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td><td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<td></td>");
 } 
      out.write("</tr>\n</table>");
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

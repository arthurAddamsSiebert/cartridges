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

public final class monitor_005fjdbc_005fdata_005fsource_005finformation_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-JDBC",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("monitor.JDBC.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;");
 {out.write(localizeISText("monitor.DataSources.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td>");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewJDBCDataSourceInformation-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "12");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
      out.write("</td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/spacer.gif\" width=\"1\" height=\"5\" border=\"0\" alt=\"\"/></td> <!-- blank line, separates server select from content -->\n</tr>\n<!-- Content Area -->\n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.JDBCDataSources.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e middle\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("monitor.PageDisplaysJDBCDataSourceInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"aldi w100\">\n<tr><td colspan=\"3\" class=\"table_subtitle s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSource:DataSourceName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td></tr>\n<tr><td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td></tr>\n<tr><td colspan=\"3\" class=\"table_header n s\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.GeneralDataSourceInformation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.ImplementingClass.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:Class:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.Description.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.ServerName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:ServerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.PortNumber.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:PortNumber"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.NetworkProtocol.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:NetworkProtocol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.DatabaseName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:DatabaseName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.DatabaseConnectURL.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:getURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.UserName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:User"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.LoginTimeout.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:LoginTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.DriverType.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:DriverType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourcePoolConfigs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<tr><td colspan=\"3\" class=\"table_header n s\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.OracleUCPConfiguration.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>");
 while (loop("DataSourcePoolConfigs:EntrySet","config",null)) { 
      out.write("<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("config:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("config:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourcePoolStats"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("<tr><td colspan=\"3\" class=\"table_header n s\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.OracleUCPConnectionPoolStatistics.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>");
 while (loop("DataSourcePoolStats:EntrySet","stats",null)) { 
      out.write("<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("stats:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("stats:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourcePoolFCFStats"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<tr><td colspan=\"3\" class=\"table_header n s\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.OracleUCP_FCF.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>");
 while (loop("DataSourcePoolFCFStats:EntrySet","stats",null)) { 
      out.write("<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("stats:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("stats:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourceServerConnectionConfig"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
      out.write("<tr><td colspan=\"3\" class=\"table_header n s\">");
 {out.write(localizeISText("monitor_jdbc_data_source_information.ServerConnectionConfig.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>");
 while (loop("DataSourceServerConnectionConfig:EntrySet","stats",null)) { 
      out.write("<tr>\n<td class=\"table_detail3\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("stats:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("stats:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";out.write(value);} 
      out.write("&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>");
 } 
 } 
      out.write("</table>\n</td>\n</tr>\n</table>");
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

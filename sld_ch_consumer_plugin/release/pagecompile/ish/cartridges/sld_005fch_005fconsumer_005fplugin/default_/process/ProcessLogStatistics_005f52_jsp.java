/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.process;

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

public final class ProcessLogStatistics_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Statistics",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProcessLogStatistics_52.LogStatistics.text",null)))}, 5); 
 URLPipelineAction action640 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null)))),null));String site640 = null;String serverGroup640 = null;String actionValue640 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null)))),null);if (site640 == null){  site640 = action640.getDomain();  if (site640 == null)  {      site640 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup640 == null){  serverGroup640 = action640.getServerGroup();  if (serverGroup640 == null)  {      serverGroup640 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProcessLogStatisticsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue640, site640, serverGroup640,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\" colspan=\"3\">");
 {out.write(localizeISText("ProcessLogStatistics_52.LogStatistics.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("levels", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LogStatistics:ErrorCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("levels")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("levels", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LogStatistics:WarnCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("levels")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("levels", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LogStatistics:InfoCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("levels")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("levels", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LogStatistics:DebugCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("levels")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("levels", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LogStatistics:TraceCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("levels")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("levels", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("levels")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ShowFilterLinks", temp_obj);} 
 {Object temp_obj = ("table_detail e s top"); getPipelineDictionary().put("FilterLinkTDClass", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("ShowFilterLinks", temp_obj);} 
 {Object temp_obj = ("table_detail s top"); getPipelineDictionary().put("FilterLinkTDClass", temp_obj);} 
 } 
      out.write("<tr>\n<td class=\"table_detail w e s top\" nowrap width=\"1%\">");
 {out.write(localizeISText("ProcessLogStatistics_52.ErrorCount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterLinkTDClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("LogStatistics:ErrorCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("LogStatistics:ErrorCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowFilterLinks"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\">\n<a class=\"selection_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Filter",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("LevelFilter",null),context.getFormattedValue("error",null)).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("ProcessLogStatistics_52.ViewErrorLogEntries.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } else { 
      out.write("<td class=\"table_detail e s top\" width=\"10%\">&nbsp;</td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"table_detail w e s top\" nowrap width=\"1%\">");
 {out.write(localizeISText("ProcessLogStatistics_52.WarnCount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterLinkTDClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("LogStatistics:WarnCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("LogStatistics:WarnCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowFilterLinks"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\">\n<a class=\"selection_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Filter",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("LevelFilter",null),context.getFormattedValue("warn",null)).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("ProcessLogStatistics_52.ViewWarnLogEntries.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } else { 
      out.write("<td class=\"table_detail e s top\" width=\"10%\">&nbsp;</td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"table_detail w e s top\" nowrap width=\"1%\">");
 {out.write(localizeISText("ProcessLogStatistics_52.InfoCount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterLinkTDClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("LogStatistics:InfoCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("LogStatistics:InfoCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowFilterLinks"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\">\n<a class=\"selection_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Filter",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("LevelFilter",null),context.getFormattedValue("info",null)).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("ProcessLogStatistics_52.ViewInfoLogEntries.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } else { 
      out.write("<td class=\"table_detail e s top\" width=\"10%\">&nbsp;</td>");
 } 
      out.write("</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("LogStatistics:DebugCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("LogStatistics:TraceCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write(" \n<tr>\n<td class=\"table_detail w e s top\" nowrap width=\"1%\">");
 {out.write(localizeISText("ProcessLogStatistics_52.DebugCount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterLinkTDClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("LogStatistics:DebugCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("LogStatistics:DebugCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowFilterLinks"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\">\n<a class=\"selection_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Filter",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("LevelFilter",null),context.getFormattedValue("debug",null)).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("ProcessLogStatistics_52.ViewDebugLogEntries.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } else { 
      out.write("<td class=\"table_detail e s top\" width=\"10%\">&nbsp;</td>");
 } 
      out.write("</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LogStatistics:TraceCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write(" \n<tr>\n<td class=\"table_detail w e s top\" nowrap width=\"1%\">");
 {out.write(localizeISText("ProcessLogStatistics_52.TraceCount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterLinkTDClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("LogStatistics:TraceCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("LogStatistics:TraceCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowFilterLinks"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\">\n<a class=\"selection_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-Filter",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("LevelFilter",null),context.getFormattedValue("trace",null)).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("ProcessLogStatistics_52.ViewTraceLogEntries.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } else { 
      out.write("<td class=\"table_detail e s top\" width=\"10%\">&nbsp;</td>");
 } 
      out.write("</tr>");
 } 
      out.write("<tr>\n<td align=\"right\" colspan=\"2\" class=\"w s\">&nbsp;</td>\n<td align=\"right\" class=\"e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SelectedMenuItem\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"JobUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("JobConfiguration:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"JobNamePrefix\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobNamePrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"Entries\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProcessLogStatistics_52.ViewLogFileEntries.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "103");} 
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

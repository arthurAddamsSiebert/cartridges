/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.monitor.inc;

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

public final class monitor_005fserver_005fselection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectDateRange"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} 
 } 
 URLPipelineAction action35 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("TargetParameterName1"),null),context.getFormattedValue(getObject("TargetParameterValue1"),null))).addURLParameter(context.getFormattedValue(getObject("TargetParameterName2"),null),context.getFormattedValue(getObject("TargetParameterValue2"),null)).addURLParameter(context.getFormattedValue(getObject("TargetParameterName3"),null),context.getFormattedValue(getObject("TargetParameterValue3"),null)).addURLParameter(context.getFormattedValue(getObject("TargetParameterName4"),null),context.getFormattedValue(getObject("TargetParameterValue4"),null))),null));String site35 = null;String serverGroup35 = null;String actionValue35 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("TargetParameterName1"),null),context.getFormattedValue(getObject("TargetParameterValue1"),null))).addURLParameter(context.getFormattedValue(getObject("TargetParameterName2"),null),context.getFormattedValue(getObject("TargetParameterValue2"),null)).addURLParameter(context.getFormattedValue(getObject("TargetParameterName3"),null),context.getFormattedValue(getObject("TargetParameterValue3"),null)).addURLParameter(context.getFormattedValue(getObject("TargetParameterName4"),null),context.getFormattedValue(getObject("TargetParameterValue4"),null))),null);if (site35 == null){  site35 = action35.getDomain();  if (site35 == null)  {      site35 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup35 == null){  serverGroup35 = action35.getServerGroup();  if (serverGroup35 == null)  {      serverGroup35 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("TargetParameterName1"),null),context.getFormattedValue(getObject("TargetParameterValue1"),null))).addURLParameter(context.getFormattedValue(getObject("TargetParameterName2"),null),context.getFormattedValue(getObject("TargetParameterValue2"),null)).addURLParameter(context.getFormattedValue(getObject("TargetParameterName3"),null),context.getFormattedValue(getObject("TargetParameterValue3"),null)).addURLParameter(context.getFormattedValue(getObject("TargetParameterName4"),null),context.getFormattedValue(getObject("TargetParameterValue4"),null))),null));out.print("\"");out.print(" name=\"");out.print("SelectServer");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue35, site35, serverGroup35,true)); 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write(" \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e n\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error top\" width=\"100%\">\n<b>");
 {out.write(localizeISText("monitor_server_selection.ChartsCannotBeDisplayed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDay_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_server_selection.TheStartDateCouldNotBeParsed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartTime_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_server_selection.TheStartTimeCouldNotBeParsed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndDay_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_server_selection.TheEndDateCouldNotBeParsed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndTime_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_server_selection.TheEndTimeCouldNotBeParsed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidTimePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_server_selection.MakeSureTheStartDateTimeIsBeforeEndDateTime.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write(" \n</td>\n</tr>\n</table>");
 } 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" class=\"infobox aldi w100\">\n<tr>\n<td class=\"infobox_description\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_server_selection.PleaseChooseTheApplicationServerToBeMonitored.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<select name=\"TargetServerID\" class=\"select inputfield_en\">");
 while (loop("ServerRegistrations","ServerRegistration",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:Type"),null).equals(context.getFormattedValue("AppServer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:ServerID"),null)),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:ServerID"),null).equals(context.getFormattedValue(getObject("TargetServerID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:Name"),null)),null));
      out.write('@');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:Host"),null)),null));
      out.write(':');
 {String value = null;try{value=context.getFormattedValue(getObject("ServerRegistration:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
 } 
      out.write("</select>\n</td> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectDateRange"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("</tr> \n<tr> \n<td class=\"fielditem label_date\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_server_selection.PleaseSpecifyADateRangeToShowInTheChart.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td><table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","Start_Day"),
new TagParameter("DateString",getObject("Start_Day")),
new TagParameter("DateObject",getObject("StartDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("StartDay_ErrorCode"))))}, 53); 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","Start_Time"),
new TagParameter("TimeString",getObject("Start_Time")),
new TagParameter("DateObject",getObject("StartDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("StartTime_ErrorCode"))))}, 58); 
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","End_Day"),
new TagParameter("InputFieldLabel","to"),
new TagParameter("DateString",getObject("End_Day")),
new TagParameter("InputFieldLabelClass","fielditem2 label_light"),
new TagParameter("DateObject",getObject("EndDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("EndDay_ErrorCode"))))}, 63); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","End_Time"),
new TagParameter("TimeString",getObject("End_Time")),
new TagParameter("DateObject",getObject("EndDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("EndTime_ErrorCode"))))}, 71); 
      out.write("</tr> \n</table></td> \n");
 } 
      out.write(" \n<td class=\"w100 button_date\" valign=\"top\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"7\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("monitor_server_selection.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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

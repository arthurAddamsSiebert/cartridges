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

public final class monitor_005flocking_005fprocesses_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td width=\"100%\" valign=\"top\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_locking_breadcrumb", null, "8");} 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_title aldi\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.Processes.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorText"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<tr>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\" class=\"error_box\">\n<tr>\n<td class=\"error_icon s e w\" width=\"10\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\" />\n</td>\n<td class=\"error s e\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("UnparseableTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_locking_processes.UnparseableTime.fielditem2_error","",null,getObject("ErrorInput"),null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("UnparseableDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 {out.write(localizeISText("monitor_locking_processes.UnparseableDate.fielditem2_error","",null,getObject("ErrorInput"),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("monitor_locking_processes.ErrorDuringTimeCalculation.fielditem2_error","",null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("</td>\n</tr>\n</table>\n<tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e\" width=\"100%\">");
 {out.write(localizeISText("monitor_locking_processes.DisplayProcessesOfACertainPeriod.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action42 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site42 = null;String serverGroup42 = null;String actionValue42 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site42 == null){  site42 = action42.getDomain();  if (site42 == null)  {      site42 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup42 == null){  serverGroup42 = action42.getServerGroup();  if (serverGroup42 == null)  {      serverGroup42 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("FindProcess");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue42, site42, serverGroup42,true)); 
      out.write("<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox aldi\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_locking_processes.ProcessSearch.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.Name.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(": <input type=\"text\" name=\"ProcessNameSearchString\" class=\"inputfield_en\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessBarControl:ProcessNameSearchString"),null)),null));
      out.write("\"/></td>\n<td class=\"infobox_item\" nowrap=\"nowrap\">&nbsp;&nbsp;");
 {out.write(localizeISText("monitor.State.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<select class=\"select inputfield_en\" name=\"ProcessStateSearchString\">");
 while (loop("ProcessBarControl:AvailableProcessStates","ProcessState",null)) { 
      out.write("<option ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessState"),null).equals(context.getFormattedValue(getObject("ProcessBarControl:ProcessStateSearchString"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write(" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessState"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("&nbsp;");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n<td class=\"infobox_item\" nowrap=\"nowrap\">&nbsp;&nbsp;");
 {out.write(localizeISText("monitor.Type.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<select class=\"select inputfield_en\" name=\"ProcessTypeSearchString\">");
 while (loop("ProcessBarControl:AvailableProcessTypes","ProcessType",null)) { 
      out.write("<option ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue(getObject("ProcessBarControl:ProcessTypeSearchString"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write(" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_locking_processes.PeriodFrom.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" border=\"0\" height=\"1\" width=\"2\" alt=\"\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem_comment\">&nbsp;</td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PeriodStartDate"),
new TagParameter("DateObject",getObject("ProcessBarControl:PeriodStartDate"))}, 83); 
      out.write("<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<input type=\"text\" maxlength=16 size=11 name=\"PeriodStartTime\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodStartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem_comment\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table>\n</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" border=\"0\" height=\"1\" width=\"30\" alt=\"\"/><input type=\"radio\" name=\"TimeSelection\" value=\"dateTimePicker\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TimeSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeSelection"),null).equals(context.getFormattedValue("dateTimePicker",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else { 
      out.write("checked=\"checked\"");
 } 
      out.write("/><td>\n</tr>\n<tr>\n<td class=\"fielditem_comment\">&nbsp;</td>\n</tr>\n</table>\n</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">&nbsp;&nbsp;to:<td>\n</tr>\n<tr>\n<td class=\"fielditem_comment\">&nbsp;</td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PeriodEndDate"),
new TagParameter("DateObject",getObject("ProcessBarControl:PeriodEndDate"))}, 116); 
      out.write("<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<input type=\"text\" maxlength=16 size=11 name=\"PeriodEndTime\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodEndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem_comment\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table>\n</td>\n<td colspan=\"2\">&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"10\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td colspan=\"5\">&nbsp;</td>\n<td class=\"infobox_item\" nowrap=\"nowrap\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" border=\"0\" height=\"1\" width=\"30\" alt=\"\"/><input type=\"radio\" name=\"TimeSelection\" value=\"interval\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TimeSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeSelection"),null).equals(context.getFormattedValue("interval",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } 
      out.write("/></td>\n<td class=\"infobox_item\">&nbsp;&nbsp;interval:&nbsp;</td>\n<td class=\"infobox_item\">\n<select name=\"TimeInterval\" class=\"select\">\n<option value=\"30\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("TimeInterval")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("30",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">30 min.</option>\n<option value=\"60\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("60",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">1 hour</option>\n<option value=\"360\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("360",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">6 hours</option>\n<option value=\"1440\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("1440",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">1 day</option>\n<option value=\"10080\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeInterval"),null).equals(context.getFormattedValue("10080",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">1 week</option>\n</select>\n</td>\n<td colspan=\"3\">&nbsp;</td>\n<td width=\"100%\">&nbsp;</td>\n<td><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tr><td class=\"button\"><input type=\"submit\" name=\"find\" value=\"Find\" class=\"button\"/></td></tr></table></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td width=\"100%\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s\" nowrap=\"nowrap\">Name</td>\n<td class=\"table_header table_header_process_list e s\" nowrap=\"nowrap\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td align=\"left\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodStartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodStartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td align=\"right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodEndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControl:PeriodEndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td></tr></table></td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProcessBarControl:ProcessBarControlElements") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { 
 while (loop("ProcessBarControl:ProcessBarControlElements","ProcessBarControlElement",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessID",null),context.getFormattedValue(getObject("ProcessBarControlElement:ModelObject:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ModelObject:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail e s\" width=\"427\" nowrap=\"nowrap\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" border=\"0\" height=\"10\" width=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessBarControlElement:LeftSpaceSize"),null)),null));
      out.write("\" alt=\"\"/><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/pbar_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ColorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(".gif\" alt=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessStartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessStartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessEndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessBarControlElement:ProcessEndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" width=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessBarControlElement:ProcessBarSize"),null)),null));
      out.write("\" height=\"10\"/></td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">No processes in this period.</td>\n<td class=\"table_detail e s\" width=\"427\" nowrap=\"nowrap\">&nbsp;</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_detail w e s\">&nbsp;</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td align=\"left\">");
 URLPipelineAction action43 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site43 = null;String serverGroup43 = null;String actionValue43 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site43 == null){  site43 = action43.getDomain();  if (site43 == null)  {      site43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup43 == null){  serverGroup43 = action43.getServerGroup();  if (serverGroup43 == null)  {      serverGroup43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShiftPrev");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue43, site43, serverGroup43,true)); 
      out.write("<input type=\"hidden\" name=\"ShiftDirection\" value=\"previous\"/>\n<input type=\"submit\" name=\"previous\" value=\" &lt;&lt; \" class=\"button\"/>");
 out.print("</form>"); 
      out.write("</td>\n<td align=\"right\">");
 URLPipelineAction action44 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site44 = null;String serverGroup44 = null;String actionValue44 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site44 == null){  site44 = action44.getDomain();  if (site44 == null)  {      site44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup44 == null){  serverGroup44 = action44.getServerGroup();  if (serverGroup44 == null)  {      serverGroup44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShiftNext");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue44, site44, serverGroup44,true)); 
      out.write("<input type=\"hidden\" name=\"ShiftDirection\" value=\"next\"/>\n<input type=\"submit\" name=\"next\" value=\" &gt;&gt; \" class=\"button\"/>");
 out.print("</form>"); 
      out.write("</td>\n</tr>\n</table></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<!-- Start Page Cursor -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProcessBarControl:ModelObjectsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { 
 URLPipelineAction action45 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));String site45 = null;String serverGroup45 = null;String actionValue45 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null);if (site45 == null){  site45 = action45.getDomain();  if (site45 == null)  {      site45 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup45 == null){  serverGroup45 = action45.getServerGroup();  if (serverGroup45 == null)  {      serverGroup45 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("DetailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue45, site45, serverGroup45,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ProcessBarControl:ModelObjectsPageable")}, 214); 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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

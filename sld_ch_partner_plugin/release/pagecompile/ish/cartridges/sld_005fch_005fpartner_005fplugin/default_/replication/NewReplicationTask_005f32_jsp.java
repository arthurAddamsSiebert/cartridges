/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.replication;

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

public final class NewReplicationTask_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("text",localizeText(context.getFormattedValue("NewReplicationTask_32.NewReplicationTask.text",null)))}, 3); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewReplicationTask_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewReplicationTask_32.Comments.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewReplicationTask_32.ReplicationGroups.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewReplicationTask_32.StatusHistory.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"NewReplicationTask_32", null, "11");} 
      out.write("<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {out.write(localizeISText("NewReplicationTask_32.NewReplicationTask.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorDueTime")))).booleanValue() || ((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) getObject("CreateTask:StartDateTime:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\"><b>");
 {out.write(localizeISText("NewReplicationTask_32.ReplicationTaskCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorStartTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask_32.StartDateIsNotValidPleaseProvideAValidStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorDueTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask_32.DueDateIsNotValidPleaseProvideAValidDueDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateDay:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask_32.StartDayIsMandatoryPleaseProvideAStartDay.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateTime:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask_32.StartTimeIsMandatoryPleaseProvideAStartTime.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<!-- EO errors-->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("NewReplicationTask_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action131 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_32-Dispatch",null)))),null));String site131 = null;String serverGroup131 = null;String actionValue131 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_32-Dispatch",null)))),null);if (site131 == null){  site131 = action131.getDomain();  if (site131 == null)  {      site131 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup131 == null){  serverGroup131 = action131.getServerGroup();  if (serverGroup131 == null)  {      serverGroup131 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue131, site131, serverGroup131,true)); 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"6\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>");

			Long time = new Long(System.currentTimeMillis());
			getPipelineDictionary().put("TaskID", time.toString());
		
      out.write("<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewReplicationTask_32.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreateTask:TaskID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"CreateTask_TaskID\" maxlength=\"400\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:TaskID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" readonly=\"readonly\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"CreateTask_TaskID\" maxlength=\"400\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TaskID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" readonly=\"readonly\"/>");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewReplicationTask_32.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" width=\"100%\" colspan=\"5\"><textarea rows=\"5\" cols=\"70\" name=\"CreateTask_Description\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("StartTime")); getPipelineDictionary().put("CurrentDate", temp_obj);} 
 } 
      out.write("<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateDay"),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductStatusDetail.StartDate.table_detail",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:StartDateDay:Value")),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 74); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateTime"),
new TagParameter("TimeString",getObject("CreateTask:StartDateTime:Value")),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 83); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateDay"),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("sld_enterprise_app.DueDate.DateInputFieldLabel",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:DueDateDay:Value")),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 93); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateTime"),
new TagParameter("TimeString",getObject("CreateTask:DueDateTime:Value")),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 102); 
      out.write("</tr>\n<tr>\n<td colspan=\"6\" class=\"n\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"DatePattern\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"submit\" name=\"Create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask_32.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"hidden\" name=\"DefaultButton\" value=\"Create\"/><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask_32.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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

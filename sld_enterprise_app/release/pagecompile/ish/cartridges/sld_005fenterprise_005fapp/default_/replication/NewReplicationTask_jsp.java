/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.replication;

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

public final class NewReplicationTask_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-New",null))))),
new TagParameter("id","newReplicationTask"),
new TagParameter("text",localizeText(context.getFormattedValue("NewReplicationTask.NewReplicationTask.text",null)))}, 3); 
 {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTaskTabs", null, "6");} 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {out.write(localizeISText("NewReplicationTask.NewReplicationTask.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorDueTime")))).booleanValue() || ((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) getObject("CreateTask:StartDateTime:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\"><b>");
 {out.write(localizeISText("NewReplicationTask.ReplicationTaskCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorStartTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask.StartDateIsNotValidPleaseProvideAValidStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorDueTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask.DueDateIsNotValidPleaseProvideAValidDueDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateDay:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask.StartDayIsMandatoryPleaseProvideAStartDay.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateTask:StartDateTime:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewReplicationTask.StartTimeIsMandatoryPleaseProvideAStartTime.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<!-- EO errors-->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("NewReplicationTask.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action222 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-Dispatch",null)))),null));String site222 = null;String serverGroup222 = null;String actionValue222 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-Dispatch",null)))),null);if (site222 == null){  site222 = action222.getDomain();  if (site222 == null)  {      site222 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup222 == null){  serverGroup222 = action222.getServerGroup();  if (serverGroup222 == null)  {      serverGroup222 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue222, site222, serverGroup222,true)); 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"6\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>");

			Long time = new Long(System.currentTimeMillis());
			getPipelineDictionary().put("TaskID", time.toString());
		
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label\" for=\"CreateTask_TaskID\">");
 {out.write(localizeISText("NewReplicationTask.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\" colspan=\"5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreateTask:TaskID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"CreateTask_TaskID\" id=\"CreateTask_TaskID\" maxlength=\"400\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:TaskID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" readonly=\"readonly\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"CreateTask_TaskID\" id=\"CreateTask_TaskID\" maxlength=\"400\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TaskID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" readonly=\"readonly\"/>");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_textarea\"><label class=\"label label_textarea\" for=\"CreateTask_Description\">");
 {out.write(localizeISText("NewReplicationTask.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\" width=\"100%\" colspan=\"5\"><textarea rows=\"5\" cols=\"70\" name=\"CreateTask_Description\" id=\"CreateTask_Description\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateTask:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateDay"),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductStatusDetail.StartDate.table_detail",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:StartDateDay:Value")),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 61); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_StartDateTime"),
new TagParameter("TimeString",getObject("CreateTask:StartDateTime:Value")),
new TagParameter("Required","true"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",((((Boolean) getObject("CreateTask:StartDateDay:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartTime")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 70); 
      out.write("</tr>\n<tr> \n");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateDay"),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("sld_enterprise_app.DueDate.DateInputFieldLabel",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("CreateTask:DueDateDay:Value")),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 80); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateTask_DueDateTime"),
new TagParameter("TimeString",getObject("CreateTask:DueDateTime:Value")),
new TagParameter("Required","false"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("CreateTask:DueDate:Value")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorDueTime"))))}, 89); 
      out.write("</tr>\n<tr>\n<td colspan=\"6\" class=\"n\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"DatePattern\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"Create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"hidden\" name=\"DefaultButton\" value=\"Create\"/>\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewReplicationTask.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
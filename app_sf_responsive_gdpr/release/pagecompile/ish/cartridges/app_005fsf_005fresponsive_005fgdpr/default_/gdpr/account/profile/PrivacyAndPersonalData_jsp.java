/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fgdpr.default_.gdpr.account.profile;

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

public final class PrivacyAndPersonalData_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
      out.write("<div class=\"row section\">\n<div class=\"col-md-8 col-xs-10\">\n<h3>");
 {out.write(localizeISText("gdpr.profile.personal.data.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-success alert-fade\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowMessage"),null).equals(context.getFormattedValue("PersonalDataDownloadRequest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("gdpr.profile.request_data.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>");
 } 
      out.write("<div class=\"row\">\n<div class=\"col-sm-12\">\n<p>");
 {out.write(localizeISText("gdpr.profile.information.personal.data.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 {Object temp_obj = (getObject("ApplicationBO:NamedObject(\"GDPRRequestTypeEnumProvider\"):ByName(\"REQUEST_DATA\")")); getPipelineDictionary().put("requestDataType", temp_obj);} 
 {Object temp_obj = (getObject("UserBO:Extension(\"PersonalData\"):hasPendingPersonalDataRequest(requestDataType)")); getPipelineDictionary().put("hasPendingPersonalDataRequest", temp_obj);} 
 {Object temp_obj = (getObject("ApplicationBO:NamedObject(\"GDPRRequestTypeEnumProvider\"):ByName(\"DELETE_DATA\")")); getPipelineDictionary().put("requestDeleteDataType", temp_obj);} 
 {Object temp_obj = (getObject("UserBO:Extension(\"PersonalData\"):hasPendingPersonalDataRequest(requestDeleteDataType)")); getPipelineDictionary().put("hasPendingDeletePersonalDataRequest", temp_obj);} 
      out.write('<');
      out.write('p');
      out.write('>');
 URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-RequestPersonalData",null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-RequestPersonalData",null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-RequestPersonalData",null)))),null));out.print("\"");out.print(" name=\"");out.print("RequestDataForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); 
      out.write("<p>\n<div class=\"button\"><input type = \"submit\" class = \"btn btn-default\" value = \"");
 {out.write(localizeISText("gdpr.profile.request.personal.data.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("hasPendingPersonalDataRequest"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></div>\n</p>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("hasPendingPersonalDataRequest"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("<p class=\"help-block\">");
 {out.write(localizeISText("gdpr.profile.already_requested.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write(' ');
      out.write('\n');
 out.print("</form>"); 
      out.write("</p>\n<br />");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("hasPendingDeletePersonalDataRequest"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<p class=\"help-block\">");
 {out.write(localizeISText("gdpr.profile.delete.personal.data.already_requested.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } else { 
      out.write("<p>\n<h4>\n<a class = \"btn btn-default\" data-toggle=\"modal\" data-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("myModalDeleteAccount\" > \n");
 {out.write(localizeISText("gdpr.profile.delete.personal.data.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</h4>\n</p>");
 } 
      out.write(" \n</div>\n</div>\n<div class=\"modal fade\" id=\"myModalDeleteAccount\" role=\"dialog\">\n<div class=\"modal-dialog\">\n<div class=\"modal-content\">\n<div class=\"modal-header\"> \n<button class=\"close\" data-dismiss=\"modal\" title=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" aria-label=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<span aria-hidden=\"true\">&times;</span>\n</button>\n<h1 class=\"modal-title vertical-align-center\">");
 {out.write(localizeISText("gdpr.confirm.delete.personal.data.dialog.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>\n</div>\n<div class=\"modal-body\">\n<p>");
 {out.write(localizeISText("gdpr.confirm.delete.personal.data.dialog.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>\n<div class=\"modal-footer\">");
 URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-RequestAccountDeletion",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-RequestAccountDeletion",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-RequestAccountDeletion",null)))),null));out.print("\"");out.print(" name=\"");out.print("RequestDeleteDataForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); 
      out.write("<div class=\"button\">\n<input type = \"submit\" class = \"btn btn-danger\" value = \"");
 {out.write(localizeISText("gdpr.confirm.delete.personal.data.dialog.button.confirm","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n<button class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("gdpr.confirm.delete.personal.data.dialog.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 out.print("</form>"); 
      out.write("</div>\n</div>\n</div>\n</div>\n</div>\n</div>");
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
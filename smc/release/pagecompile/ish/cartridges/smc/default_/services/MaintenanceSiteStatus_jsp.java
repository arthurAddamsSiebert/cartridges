/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.services;

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

public final class MaintenanceSiteStatus_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
      out.write('\n');
 
setEncodingType("text/html"); 
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} 
      out.write("\n<!-- Page Navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td class=\"breadcrumb\">\n\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("MaintenanceSiteStatus.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;\n\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServicesStatusOverview",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("MaintenanceSiteStatus.Services.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;\n\t\t\t");
 {Object temp_obj = (getObject("ServiceStatus:ServiceInformation")); getPipelineDictionary().put("Service", temp_obj);} 
      out.write("\n\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"services/ServiceDisplayName", null, "12");} 
      out.write(' ');
 {out.write(localizeISText("MaintenanceSiteStatus.ServiceStatusMaintenance.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\t\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"7\" alt=\"\" border=\"0\"/></div>\n<!-- EO Page Navigator -->\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w\">\n\t<tr>\n\t\t<td>\n\t\t\t");
 {Object temp_obj = ("Maintenance"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
      out.write("\n\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"services/ServiceMonitoringTabs", null, "23");} 
      out.write("\n\t\t</td>\n\t</tr>\n</table>\n\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n\t<tr>\n\t\t<td class=\"table_title\">\n\t\t    ");
 {Object temp_obj = (getObject("ServiceStatus:ServiceInformation")); getPipelineDictionary().put("Service", temp_obj);} 
      out.write("\n\t\t    ");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"services/ServiceDisplayName", null, "32");} 
      out.write("\n\t\t</td>\n\t</tr>\n\t<tr>\n\t\t<td class=\"table_title_description w e\">\n\t\t\t");
 {out.write(localizeISText("MaintenanceSiteStatus.HereYouCanEnableDisableTheService.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\n</table>\n\n");
 URLPipelineAction action24 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site24 = null;String serverGroup24 = null;String actionValue24 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site24 == null){  site24 = action24.getDomain();  if (site24 == null)  {      site24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup24 == null){  serverGroup24 = action24.getServerGroup();  if (serverGroup24 == null)  {      serverGroup24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("maintenanceSiteFilter");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue24, site24, serverGroup24,false)); 
      out.write("\n<input type=\"hidden\" name=\"ServiceID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"Period\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Period"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" class=\"infobox aldi w100\">\n\t<tr>\n\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("MaintenanceSiteStatus.Server.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">\n\t\t\t<select\tname=\"TargetServerFilter\" class=\"select\">\n\t\t\t\t<option value=\"all\"\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("all",null).equals(context.getFormattedValue(getObject("TargetServerFilter"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\tselected=\"selected\"\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t>\n\t\t\t\t\t(");
 {out.write(localizeISText("MaintenanceSiteStatus.All.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(")&nbsp;\n\t\t\t\t</option>\n\t\t\t\t");
 while (loop("ServerRegistrations","Server",null)) { 
      out.write("\n\t\t\t\t\t<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Server:ServerID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Server:ServerID"),null).equals(context.getFormattedValue(getObject("TargetServerFilter"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\tselected=\"selected\"\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t>\n\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Server:DisplayName"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("Server:Host"),null) + context.getFormattedValue(":",null) + context.getFormattedValue(context.getFormattedValue(getObject("Server:Port"),"#"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t</option>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</select>\n\t\t</td>\n\t\t<td>&nbsp;</td>\n\t</tr>\n\t<tr>\n\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("MaintenanceSiteStatus.Status.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">\n\t\t\t<select\tname=\"ServiceStatusFilter\" class=\"select\">\n\t\t\t\t<option value=\"all\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ServiceStatusFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">\n\t\t\t\t\t(");
 {out.write(localizeISText("MaintenanceSiteStatus.All.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(")&nbsp;\n\t\t\t\t</option>\n\t\t\t\t<option value=\"enabled\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">\n\t\t\t\t\t");
 {out.write(localizeISText("MaintenanceSiteStatus.Enabled.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t</option>\n\t\t\t\t<option value=\"disabled\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("disabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">\n\t\t\t\t\t");
 {out.write(localizeISText("MaintenanceSiteStatus.Disabled.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t</option>\n\t\t\t\t<option value=\"withErrors\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withErrors",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">\n\t\t\t\t\t");
 {out.write(localizeISText("MaintenanceSiteStatus.WithErrors.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t</option>\n\t\t\t\t<option value=\"withExceptions\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withExceptions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write(">\n\t\t\t\t\t");
 {out.write(localizeISText("MaintenanceSiteStatus.WithException.option","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t</option>\n\t\t\t</select>\n\t\t</td>\n\t\t<td align=\"right\">\n\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t<input class=\"button\" type=\"submit\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Apply.button",null)),null));
      out.write("\" name=\"findMonitoring\"/>\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t</td>\n\t</tr>\n</table>\n");
 out.print("</form>"); 
      out.write('\n');
      out.write('\n');
 URLPipelineAction action25 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site25 = null;String serverGroup25 = null;String actionValue25 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site25 == null){  site25 = action25.getDomain();  if (site25 == null)  {      site25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup25 == null){  serverGroup25 = action25.getServerGroup();  if (serverGroup25 == null)  {      serverGroup25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("serviceSiteList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue25, site25, serverGroup25,false)); 
      out.write("\n<input type=\"hidden\" name=\"ServiceID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"TargetServerFilter\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TargetServerFilter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ServiceStatusFilter\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceStatusFilter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"Period\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Period"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\n\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"w100\">\n\t<tr>\n\t\t<td class=\"table_header w e s center\" nowrap=\"nowrap\" width=\"70\" valign=\"middle\">\n\t\t\t<div id=\"A\">\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"75\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t<a href=\"javascript:selectAll('serviceSiteList','SelectedDomainUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("MaintenanceSiteStatus.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</div>\n\t\t\t<div id=\"B\" style=\"display:none\">\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"75\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t<a href=\"javascript:selectAll('serviceSiteList','SelectedDomainUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("MaintenanceSiteStatus.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</div>\n\t\t</td>\n\t\t<th class=\"table_header e s\">");
 {out.write(localizeISText("MaintenanceSiteStatus.Site.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n\t\t<th class=\"table_header e s\">");
 {out.write(localizeISText("MaintenanceSiteStatus.StatusLast10min.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n\t\t<th class=\"table_header e s\">");
 {out.write(localizeISText("MaintenanceSiteStatus.TestStatus.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n\t</tr>\n\t\n\t");
 while (loop("MaintenanceSiteStatusPageable","SiteStatistic",null)) { 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("SiteStatistic:RequestStatistic:get10MinStatistic")); getPipelineDictionary().put("Statistic", temp_obj);} 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("MaintenanceServiceResults:TestResult(SiteStatistic:Domain:UUID)")); getPipelineDictionary().put("TestResult", temp_obj);} 
      out.write("\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ServiceStatusFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("SiteStatistic:Enabled"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("disabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) getObject("SiteStatistic:Enabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withErrors",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Statistic:Timeouts")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withExceptions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Statistic:Failures")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("\n\t\t<tr>\n\t\t\t<td class=\"w e s center\">\n\t\t\t\t<input type=\"checkbox\" name=\"SelectedDomainUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SiteStatistic:Domain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) getObject("Clipboard:contains(SiteStatistic:Domain:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\tchecked=\"checked\"\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t/>\n\t\t\t\t&nbsp;\n\t\t\t</td>\n\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t<a\tclass=\"table_detail_link\"\n\t\t\t\t\thref=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServiceStatusMonitoring",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerFilter",null),context.getFormattedValue(getObject("TargetServerFilter"),null))).addURLParameter(context.getFormattedValue("TargetSiteID",null),context.getFormattedValue(getObject("SiteStatistic:Domain:UUID"),null)).addURLParameter(context.getFormattedValue("ServiceID",null),context.getFormattedValue(getObject("ServiceID"),null)).addURLParameter(context.getFormattedValue("Period",null),context.getFormattedValue(getObject("Period"),null))),null));
      out.write("\">\n\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("SiteStatistic:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t</a>\n\t\t\t\t&nbsp;\n\t\t\t</td>\n\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Statistic:Success")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Statistic:LongCallsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.OK.title",null)),null));
      out.write("\"/>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Statistic:Timeouts")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/errors_ico.png\" title=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Statistic:Timeouts"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Timeouts.title",null)),null));
      out.write("\"/>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Statistic:Failures")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/warnings_ico.png\" title=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Statistic:Failures"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Exceptions.title",null)),null));
      out.write("\"/>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("SiteStatistic:Enabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t?\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t&nbsp;\n\t\t\t</td>\n\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaintenanceServiceResults:PingResult(SiteStatistic:Domain:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.PingResult.title",null)),null));
      out.write("\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\"/>\n\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("MaintenanceServiceResults:PingResult(SiteStatistic:Domain:UUID)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.PingResult.title",null)),null));
      out.write("\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/errors_ico.png\"/>\n\t\t\t\t");
 }} 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaintenanceServiceResults:TestResult(SiteStatistic:Domain:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.TestResult.title",null)),null));
      out.write("\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\"/>\n\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("MaintenanceServiceResults:TestResult(SiteStatistic:Domain:UUID)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<img title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.TestResult.title",null)),null));
      out.write("\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/errors_ico.png\"/>\n\t\t\t\t");
 }} 
      out.write("\n\t\t\t\t&nbsp;\n\t\t\t</td>\n\t\t</tr>\n\t");
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n\t<tr>\n\t\t<td colspan=\"3\" class=\"w s\">&nbsp;</td>\n\t\t<td class=\"e s\" align=\"right\">\n\t\t\t<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t<input name=\"enableServices\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Enable.button",null)),null));
      out.write("\" type=\"submit\" class=\"button\">\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t<input name=\"disableServices\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Disable.button",null)),null));
      out.write("\" type=\"submit\" class=\"button\">\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"button\">\t\n\t\t\t\t\t\t<input name=\"pingServices\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Ping.button",null)),null));
      out.write("\" type=\"submit\" class=\"button\">\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"button\">\t\n\t\t\t\t\t\t<input name=\"testServices\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Test.button",null)),null));
      out.write("\" type=\"submit\" class=\"button\">\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t</td>\n\t</tr>\n</table>\n\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("MaintenanceSiteStatusPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { 
      out.write("\n\t<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n\t\t\t\t");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","MaintenanceSiteStatusPageable"),
new TagParameter("variablepagesize","false")}, 224); 
      out.write("\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 } 
      out.write('\n');
 out.print("</form>"); 
      out.write('\n');
      out.write('\n');
      out.write('\n');
 URLPipelineAction action26 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site26 = null;String serverGroup26 = null;String actionValue26 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site26 == null){  site26 = action26.getDomain();  if (site26 == null)  {      site26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup26 == null){  serverGroup26 = action26.getServerGroup();  if (serverGroup26 == null)  {      serverGroup26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("sevicesStatusOverviewBack");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue26, site26, serverGroup26,true)); 
      out.write("\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"backbar_left\">\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"backToStatusOverview\" value=\"&lt;&lt; ");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.BackToStatusOverview.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
      out.write('\n');
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

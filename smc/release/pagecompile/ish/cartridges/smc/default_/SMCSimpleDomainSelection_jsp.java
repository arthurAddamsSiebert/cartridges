/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_;

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

public final class SMCSimpleDomainSelection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"breadcrumb\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-Overview",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("smc.Schedules.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;");
 {out.write(localizeISText("smc.Scheduling.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"7\" alt=\"\" border=\"0\"/></div>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("SMCSimpleDomainSelection.SimpleDomainSelection.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SortBy")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = ("Name"); getPipelineDictionary().put("SortBy", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SortOrder")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {Object temp_obj = ("Ascending"); getPipelineDictionary().put("SortOrder", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderName", temp_obj);} 
 } else { 
 {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderName", temp_obj);} 
 } 
 } else { 
 {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderName", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("DisplayName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
 {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderDisplayName", temp_obj);} 
 } else { 
 {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderDisplayName", temp_obj);} 
 } 
 } else { 
 {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderDisplayName", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Description",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderDescription", temp_obj);} 
 } else { 
 {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderDescription", temp_obj);} 
 } 
 } else { 
 {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderDescription", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("SiteName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderSiteName", temp_obj);} 
 } else { 
 {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderSiteName", temp_obj);} 
 } 
 } else { 
 {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderSiteName", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FailedSchedules"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("smc.TheFollowingSchedulesFailedToExecute.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<ul>");
 while (loop("FailedSchedules","Schedule",null)) { 
      out.write("<li>");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Schedule:Name"),null)),null));
      out.write("</li>");
 } 
      out.write("</ul>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorState"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorState"),null).equals(context.getFormattedValue("NO_SCHEDULE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("smc.PleaseSelectOneOrMoreSchedulesForExecution.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("SMCSimpleDomainSelection.TheListShowsAllDomains.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>");
 URLPipelineAction action76 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null)))),null));String site76 = null;String serverGroup76 = null;String actionValue76 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null)))),null);if (site76 == null){  site76 = action76.getDomain();  if (site76 == null)  {      site76 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup76 == null){  serverGroup76 = action76.getServerGroup();  if (serverGroup76 == null)  {      serverGroup76 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectDomainForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue76, site76, serverGroup76,true)); 
      out.write("<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox aldi\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\" colspan=\"2\">");
 {out.write(localizeISText("SMCSimpleDomainSelection.DomainSearch.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessOverviewAction",null)))),null));
      out.write("\" class=\"switch_link\">");
 {out.write(localizeISText("SMCSimpleDomainSelection.SwitchToAdvancedDomainSelection.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n<tr>\n<td class=\"infobox_item\" align=\"right\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SMCSimpleDomainSelection.DomainName.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n</td>\n<td class=\"infobox_item\" nowrap=\"nowrap\">\n<input type=\"text\" class=\"inputfield_en\" name=\"SearchWord\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SearchWord"),null)),null));
      out.write("\" size=\"20\"/>\n</td>\n<td width=\"100%\" align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("smc.Find.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("FoundDomains") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\" colspan=\"7\">");
 {out.write(localizeISText("SMCSimpleDomainSelection.NoDomainsFound.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s\" nowrap=\"nowrap\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderName"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("smc.Name.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"table_header e s\" nowrap=\"nowrap\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DisplayName",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderDisplayName"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("smc.DisplayName.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"table_header e s\" nowrap=\"nowrap\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Description",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderDescription"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("smc.Description.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"table_header e s\" nowrap=\"nowrap\"><a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("SiteName",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderSiteName"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SMCSimpleDomainSelection.SiteName.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>");
 while (loop("FoundDomains","FoundDomain",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessOverviewAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("apply",null),context.getFormattedValue("Apply",null))).addURLParameter(context.getFormattedValue("SMCDomainName",null),context.getFormattedValue(getObject("FoundDomain:DomainName"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("FoundDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("FoundDomain:Domain:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("FoundDomain:Domain:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("FoundDomain:Domain:Site:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
      out.write("</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<!-- Start Page Cursor -->");
 URLPipelineAction action77 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Paging",null)))),null));String site77 = null;String serverGroup77 = null;String actionValue77 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Paging",null)))),null);if (site77 == null){  site77 = action77.getDomain();  if (site77 == null)  {      site77 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup77 == null){  serverGroup77 = action77.getServerGroup();  if (serverGroup77 == null)  {      serverGroup77 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCSimpleDomainSelection-Paging",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue77, site77, serverGroup77,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","FoundDomains")}, 157); 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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

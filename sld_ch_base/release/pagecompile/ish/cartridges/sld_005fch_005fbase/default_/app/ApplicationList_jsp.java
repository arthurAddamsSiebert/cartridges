/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.app;

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

public final class ApplicationList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null)))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ApplicationList.Applications.text",null)))}, 3); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" data-testing-id=\"bo-applicationslist-page\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("ApplicationList.Applications.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("<tr>\n<td> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 URLPipelineAction action318 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null));String site318 = null;String serverGroup318 = null;String actionValue318 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null);if (site318 == null){  site318 = action318.getDomain();  if (site318 == null)  {      site318 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup318 == null){  serverGroup318 = action318.getServerGroup();  if (serverGroup318 == null)  {      serverGroup318 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmDelete");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue318, site318, serverGroup318,true)); 
      out.write(" \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"confirm_box\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ApplicationList.Applications.text",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ApplicationList.DeleteAllSelectedApplications.message",null)))}, 16); 
      out.write("</table> \n");
 out.print("</form>"); 
 } else { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"confirm_box\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ApplicationList.Applications.text",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ApplicationList.PleaseSelectAtLeastOneApplication.message",null)))}, 21); 
      out.write("</table> \n");
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Delete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"confirm_box\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ApplicationList.Applications.text",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ApplicationList.TheApplicationCouldNotBeDeleted.message",null)))}, 31); 
      out.write("</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchApps"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {out.write(localizeISText("ApplicationList.TheListShowsTheApplicationsFoundByYourSearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ApplicationList.TheListShowsAllApplicationsInThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (hasLoopElements("AppsPageable") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SearchApps")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ApplicationList.ThereAreCurrentlyNoApplicationsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else { 
 URLPipelineAction action319 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null));String site319 = null;String serverGroup319 = null;String actionValue319 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null);if (site319 == null){  site319 = action319.getDomain();  if (site319 == null)  {      site319 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup319 == null){  serverGroup319 = action319.getServerGroup();  if (serverGroup319 == null)  {      serverGroup319 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AppSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue319, site319, serverGroup319,true)); 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAppSearch:ChannelID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ApplicationState:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox searchbox w e s\">\n<tr><td class=\"infobox_title\" colspan=\"3\">");
 {out.write(localizeISText("ApplicationList.SimpleSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light\" for=\"WFAppSearch_NameOrID\">");
 {out.write(localizeISText("ApplicationList.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"infobox_item\">\n<input type=\"text\" class=\"inputfield_en\" id=\"WFAppSearch_NameOrID\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAppSearch:Pattern:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Pattern"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Pattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else { 
      out.write(" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAppSearch:Pattern:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } 
      out.write(" \nsize=\"30\" maxlength=\"255\"/>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"Search\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationList.Find.button",null)),null));
      out.write("\" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 URLPipelineAction action320 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null));String site320 = null;String serverGroup320 = null;String actionValue320 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null);if (site320 == null){  site320 = action320.getDomain();  if (site320 == null)  {      site320 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup320 == null){  serverGroup320 = action320.getServerGroup();  if (serverGroup320 == null)  {      serverGroup320 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("applicationList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue320, site320, serverGroup320,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!((Boolean) (hasLoopElements("Applications") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SearchApps")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Applications") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"New\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationList.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail e w s\">");
 {out.write(localizeISText("ApplicationList.NoResultsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Pattern"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Pattern"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("&nbsp;<i>");
 {out.write(localizeISText("ApplicationList.NameOrType",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</i>&nbsp;&nbsp;\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Pattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write("<br/><br/>");
 {out.write(localizeISText("ApplicationList.CheckTheSpellingOrTryANewSearch",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 110); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"stickyHeader\" data-testing-id=\"bo-applicationlist-table\">\n<thead>\n<tr>\n<td colspan=\"7\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"New\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationList.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"ConfirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationList.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
      out.write("<th class=\"table_header w s\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('applicationList','SelectedApplicationUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ApplicationList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('applicationList','SelectedApplicationUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ApplicationList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n</th>");
 } 
      out.write("<th class=\"table_header w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ApplicationList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ApplicationList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</th>\n<th class=\"table_header e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ApplicationList.Type.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ApplicationList.Type.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</th>\n<th class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationList.URLIdentifier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th class=\"table_header e s\" width=\"100%\">");
 {out.write(localizeISText("ApplicationList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th class=\"table_header e s\">");
 {out.write(localizeISText("ApplicationList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
      out.write("<th class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationList.StorefrontBrowsing.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 } 
      out.write("</tr>\n</thead>\n<tbody data-testing-id=\"bo-applicationlist-table\">");
 while (loop("AppsPageable","application",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail top center w s\"><input type=\"checkbox\" name=\"SelectedApplicationUUID\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("application:UUID"),null)),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:getcontains(application:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("application:Default")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write(" disabled=\"disabled\"");
 } 
      out.write(" /><input type=\"hidden\" name=\"ApplicationUUID\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("application:UUID"),null)),null));
      out.write("\"/></td>");
 } 
      out.write("<td class=\"table_detail top w e s\" nowrap=\"nowrap\">\n<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApp-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("application:UUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue(getObject("SortBy"),null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("SortDirection"),null)).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</td>\n<td class=\"table_detail top left e s\" nowrap=\"nowrap\">\n<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApp-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("application:UUID"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue(getObject("SortBy"),null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("SortDirection"),null)).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("application:App:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</td>\n<td class=\"table_detail top e s\" nowrap=\"nowrap\" data-testing-id=\"bo-applicationlist-urlidentifier-column\">");
 {String value = null;try{value=context.getFormattedValue(getObject("application:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail top e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("application:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("application:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td> \n<td class=\"table_detail top e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("application:Default")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("ApplicationList.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((getObject("application:Enabled")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { 
 {out.write(localizeISText("ApplicationList.Enabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ApplicationList.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail top e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("application:Enabled")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { 
      out.write("<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue("http",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("Default-Start",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("application:Site:DomainName"),null),context.getFormattedValue(getObject("application:DefaultLocale"),null),context.getFormattedValue(getObject("application:DefaultCurrency"),null),context.getFormattedValue(getObject("application:UrlIdentifier"),null)))),null));
      out.write("\" target=\"_blank\">");
 {out.write(localizeISText("ApplicationList.Preview.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("&nbsp;\n</td>");
 } 
      out.write("</tr>");
 } 
      out.write("</tbody>\n<tfoot></tfoot>\n</table>\n</td>\n</tr> \n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("NoMatchingApps")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (hasLoopElements("NoMatchingApps") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Paging"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"Paging\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Paging"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<!-- sorting -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SortBy\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortDirection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SortDirection\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {231}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<!-- EO sorting -->\n<!-- Start Page Cursor -->\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue","Simple"),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","AppsPageable"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 236); 
      out.write("<!-- End Page Cursor -->");
 } 
      out.write(' ');
      out.write('\n');
 } 
 out.print("</form>"); 
 } 
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

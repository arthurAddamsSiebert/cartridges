/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.marketing;

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

public final class ProductRecommDataFeedList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
setEncodingType("text/html"); 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 URLPipelineAction action247 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Dispatch",null)))),null));String site247 = null;String serverGroup247 = null;String actionValue247 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Dispatch",null)))),null);if (site247 == null){  site247 = action247.getDomain();  if (site247 == null)  {      site247 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup247 == null){  serverGroup247 = action247.getServerGroup();  if (serverGroup247 == null)  {      serverGroup247 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("RecommendationList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue247, site247, serverGroup247,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.title",null)))}, 9); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.recommendationlist.title",null)))}, 10); 
      out.write("<!-- EO Page Navigator -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e n\">\n<tr>\n<td class=\"table_title s\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.title")}, 15); 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Run")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("noTargetSelected")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.notselected.message")}, 26); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.selection.description")}, 27); 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.configuration.description")}, 28); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"confirm_box\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Branding.subject",null))),
new TagParameter("cancelbtnname","Paging"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductRecommDataFeedList.DeleteAllSelectedConfigurations.message",null)))}, 38); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Branding.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductRecommDataFeedList.PleaseSelectAtLeastOneProductDataFeed.message",null)))}, 40); 
 } 
      out.write("</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("CurrentChannel:DisplayName")),
new TagParameter("key","marketing.recommendationlist.search.info.message")}, 46); 
      out.write("<br/><br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.startprocess.description")}, 47); 
      out.write("<br/>\n</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("CurrentChannel:DisplayName")),
new TagParameter("key","marketing.recommendationlist.search.info.message")}, 54); 
      out.write("<br/>\n</td>\n</tr>\n</table>");
 } 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"infobox w e s\" width=\"100%\">\n<tr>\n<td class=\"fielditem2\">\n<b>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.simplesearch.message")}, 62); 
      out.write("</b>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" >\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.name")}, 69); 
      out.write("</td>\n<td>&nbsp;</td>\n<td>\n<input type=\"text\" name=\"DataFeedName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DataFeedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n<td>&nbsp;</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"Search\" value=\"");
 {out.write(localizeISText("marketing.recommendationlist.button.search","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"e\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductRecommendationConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("<!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<td class=\"w s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('RecommendationList','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.selectall")}, 98); 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('RecommendationList','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.clearall")}, 105); 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.name")}, 113); 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.name")}, 115); 
      out.write("</a> \n");
 } 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("ProductRecommDataFeedList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("LastModified",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("LastModified",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.lastupdate")}, 121); 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("LastModified",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.lastupdate")}, 123); 
      out.write("</a> \n");
 } 
      out.write("</td>\n<td class=\"table_header w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ExportType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ExportType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.type")}, 128); 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ExportType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.type")}, 130); 
      out.write("</a> \n");
 } 
      out.write("</td>\n<td class=\"table_header w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Status",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Status",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.status")}, 135); 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Status",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.header.status")}, 137); 
      out.write("</a> \n");
 } 
      out.write("</td>\n</tr>");
 while (loop("ProductRecommendationConfigurations","JobConfiguration",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("<td class=\"w s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(JobConfiguration:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail w s\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedGeneral-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:DataFeedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail w s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:LocalizedDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail w s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:LastModified"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:LastModified"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail w s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:ExportType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.status.ready")}, 153); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.status.running")}, 154); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.status.pending")}, 155); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 }}}} 
      out.write("&nbsp;</td>\n<!-- Set variable \"RefreshStatus\" if a job has status 1 or 2 -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("RefreshStatus", temp_obj);} 
      out.write(' ');
      out.write('\n');
 } 
      out.write(" \n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w s\" colspan=\"6\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.recommendationlist.noconfiguration.message")}, 165); 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"refresh\" value=\"");
 {out.write(localizeISText("marketing.recommendationlist.button.refresh","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductRecommendationConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n</tr>\n</table>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
      out.write("<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"Run\" value=\"");
 {out.write(localizeISText("marketing.recommendationlist.button.run","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductRecommendationConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n<td class=\"button\"><input type=\"submit\" name=\"New\" value=\"");
 {out.write(localizeISText("marketing.recommendationlist.button.create","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ActiveRecommServices") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n<td class=\"button\"><input type=\"submit\" name=\"ConfirmDelete\" value=\"");
 {out.write(localizeISText("marketing.recommendationlist.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductRecommendationConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n</tr>\n</table>\n</td>");
 } 
      out.write("</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductRecommendationConfigurations"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ProductRecommendationConfigurations")}, 199); 
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommDataFeedList-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue(getObject("SortBy"),null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("SortDirection"),null)).addURLParameter(context.getFormattedValue("DataFeedName",null),context.getFormattedValue(getObject("DataFeedName"),null))),null));
      out.write("'\", 5000)\n</script>");
 } 
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

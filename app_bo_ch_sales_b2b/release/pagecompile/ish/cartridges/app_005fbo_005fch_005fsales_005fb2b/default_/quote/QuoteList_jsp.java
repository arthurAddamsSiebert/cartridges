/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.quote;

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

public final class QuoteList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 context.setCustomTagTemplateName("quotestate","quote/QuoteState",false,new String[]{"quote","displaymode"},null); 
 context.setCustomTagTemplateName("quotecustomerinfo","quote/QuoteCustomerInfo.isml",true,new String[]{"quote","permissions_map","current_channel"},null); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderList_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("order.overview.title",null)))}, 16); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-Dispatch",null))))),
new TagParameter("id","1"),
new TagParameter("text",localizeText(context.getFormattedValue("quote.QuoteList.text.quotes",null)))}, 17); 
      out.write("<!-- Tabs -->\n<!-- EO Tabs -->");
 URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-Dispatch",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-Dispatch",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("QuoteListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("quote.QuoteList.table_title.quotes",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_QUOTE_ALREADY_DELETED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"error top table_detail w e\" align=\"left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("quote.QuoteList.table_detail.was.already.deleted",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"quote/QuoteListSearch.isml", null, "37");} 
      out.write("<tr>\n<td>\n<input type=\"hidden\" name=\"StateGroup\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("StateGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<!-- Main Content -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Quotes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByQuote"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByQuote"),null).equals(context.getFormattedValue("DocumentNo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header w e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("DocumentNo",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.id",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header w e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("DocumentNo",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.id1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByQuote"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByQuote"),null).equals(context.getFormattedValue("ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s left\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("ValidTo",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.creation.date",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s left\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("ValidTo",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.creation.date1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByQuote"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByQuote"),null).equals(context.getFormattedValue("ValidFrom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s left\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("ValidFrom",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.last.modified.date",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s left\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("ValidFrom",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.last.modified.date1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByOrganization"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByOrganization"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByOrganization",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.customer",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByOrganization",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.customer1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByQuote"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByQuote"),null).equals(context.getFormattedValue("TotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s center\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("TotalValue",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.total",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s center\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("TotalValue",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.total1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByQuote"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByQuote"),null).equals(context.getFormattedValue("State",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s center\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("State",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.status",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s center\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByQuote",null),context.getFormattedValue("State",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_ID",null),context.getFormattedValue(getObject("WFSimpleSearch_ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("quote.QuoteList.link.status1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write("</tr>");
 while (loop("Quotes","Quote",null)) { 
      out.write(" \n<tr>\n<td class=\"table_detail w e s\" width=\"\"><a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QuoteUUID",null),context.getFormattedValue(getObject("Quote:UUID"),null))).addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:ProductListEventByType(\"CreatedByBuyer\"):EventDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:LastModified"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\">");
 processOpenTag(response, pageContext, "quotecustomerinfo", new TagParameter[] {
new TagParameter("quote",getObject("Quote")),
new TagParameter("permissions_map",getObject("CurrentChannelPermissionMap")),
new TagParameter("current_channel",getObject("CurrentChannel"))}, 88); 
      out.write("</td>\n<td class=\"table_detail e s\" align=\"right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:Total"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\" align=\"left\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "quotestate", new TagParameter[] {
new TagParameter("quote",getObject("Quote")),
new TagParameter("displaymode",getObject("seller"))}, 91); 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Quotes")}, 105); 
      out.write("</td>\n</tr>\n</table>\n<!-- End Page Cursor -->");
 } else { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("quote.QuoteList.table_detail.you.currently.do.not",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Working Area -->");
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

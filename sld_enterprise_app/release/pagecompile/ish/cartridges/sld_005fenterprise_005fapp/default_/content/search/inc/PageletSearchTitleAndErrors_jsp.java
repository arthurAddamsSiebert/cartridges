/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.search.inc;

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

public final class PageletSearchTitleAndErrors_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("<!-- TEMPLATENAME: PageletSearchTitleAndErrors.isml -->\n");
 
setEncodingType("text/html"); 
      out.write("<!-- Title and Description -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("extendedheadingtemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("extendedheadingtemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagevariants.new.filter")}, 11); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.components.new.filter")}, 11); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagetemplates.title")}, 15); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagevariants.title")}, 17); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.componenttemplates.title")}, 21); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.components.title")}, 23); 
 } 
 } 
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 processOpenTag(response, pageContext, "editpageleterror", new TagParameter[] {
}, 32); 
      out.write("</td>\n</tr>\n<!-- Error Handling -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchMaskErrors", null, "35");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmdelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pageletclipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"confirm\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagetemplate.message")}, 49); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagevariant.message")}, 51); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.componenttemplate.message")}, 55); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.component.message")}, 57); 
 } 
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"delete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchTitleAndErrors.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"4\" height=\"0\" alt=\"\" border=\"0\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchTitleAndErrors.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td>\n<table class=\"error_box w e s\" width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagetemplate.noselection")}, 85); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagevariant.noselection")}, 87); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.componenttemplate.noselection")}, 91); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.component.noselection")}, 93); 
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmpreview"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","pagetemplate"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 106); 
 } else { 
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","pagevariant"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 108); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","componenttemplate"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 112); 
 } else { 
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","component"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 114); 
 } 
      out.write(' ');
      out.write('\n');
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:ERROR_NOTHING_SELECTED")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table class=\"error_box w e s\" width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagetemplate.noselection")}, 126); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagetemplate.noselection.helpmessage")}, 126); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagevariant.noselection")}, 128); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagevariant.noselection.helpmessage")}, 128); 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletSearchResultDict:ERROR_NOTHING_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table class=\"error_box w e s\" width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.componenttemplate.noselection")}, 143); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.componenttemplate.noselection.helpmessage")}, 143); 
      out.write("</td>");
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.component.noselection")}, 145); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.component.noselection.helpmessage")}, 145); 
      out.write("</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletSearchResultDict:ERROR_NOTHING_SELECTED_TO_PUBLISH"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table class=\"error_box w e s\" width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.noselection")}, 158); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.noselection.helpmessage")}, 158); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletSearchResultDict:SHARED_OBJECT_ERROR"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table class=\"error_box w e s\" width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.sharedcontentselection")}, 170); 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.sharedcontentselection.helpmessage")}, 170); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 }}}} 
      out.write("<!-- EO Error Handling -->");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("extendedheadingtemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("extendedheadingtemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.pagevariant.message")}, 182); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.component.message")}, 182); 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.pagevariant.applying.message")}, 183); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.component.applying.message")}, 183); 
 } 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.helpmessage")}, 184); 
      out.write("</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletOverview-Start",null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.components.search.description")}, 190); 
      out.write("</td>\n</tr>");
 }} 
      out.write(' ');
      out.write('\n');
 } 
      out.write("</table>\n<!-- EO Title and Description -->\n<!-- END: PageletSearchTitleAndErrors.isml -->");
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

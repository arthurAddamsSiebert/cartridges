/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.link;

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

public final class ShortLinkSearch_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.SimpleURLSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" ...</td>\n<td class=\"right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkGroupUUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("<!-- search link in group -->\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LinkGroupUUID",null),context.getFormattedValue(getObject("LinkGroupUUID"),null))).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("ChannelUUID"),null)).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))),null));
      out.write("\" class=\"switch_link\">");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))),null));
      out.write("\" class=\"switch_link\">");
 } 
 {out.write(localizeISText("ShortLinkSearch.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table cellSpacing=0 cellPadding=0 border=0>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.URL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.URL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td><input type=\"text\" name=\"SearchTerm\" maxlength=\"350\" size=\"35\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/></td>\n<td>&nbsp;</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SearchType\" value=\"simple\"/>\n<input type=\"hidden\" name=\"DefaultButton\" value=\"simpleSearch\"/> \n<input type=\"submit\" name=\"simpleSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ShortLinkSearch.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table> \n</td> \n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } else { 
      out.write(" \n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox\">\n<colgroup>\n<col width=\"15%\"/>\n<col width=\"35%\"/>\n<col width=\"50%\"/>\n</colgroup>\n<tr>\n<td class=\"infobox_title\" colspan=\"2\">");
 {out.write(localizeISText("ShortLinkSearch.AdvancedURLSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"right\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkGroupUUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<!-- search link in group -->\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LinkGroupUUID",null),context.getFormattedValue(getObject("LinkGroupUUID"),null))).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("ChannelUUID"),null)).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))),null));
      out.write("\" class=\"switch_link\">");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))),null));
      out.write("\" class=\"switch_link\">");
 } 
 {out.write(localizeISText("ShortLinkSearch.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr> \n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SourceURLError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.SourceURL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.SourceURL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>");
 } 
      out.write("<td><input type=\"text\" name=\"SourceURL\" maxlength=\"350\" style=\"width:100%\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SourceURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TargetURLError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.TargetURL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.TargetURL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>");
 } 
      out.write("<td><input type=\"text\" name=\"TargetURL\" maxlength=\"350\" style=\"width:100%\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n<td colspan=\"2\">&#160;</td>\n</tr>\n<tr>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.Redirect.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td colspan=\"2\">\n<input type=\"radio\" name=\"ServerHeader\" value=\"All\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ServerHeader")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=\"radio\" name=\"ServerHeader\" value=\"default\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.Default.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=\"radio\" name=\"ServerHeader\" value=\"200\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("200",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.None.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=\"radio\" name=\"ServerHeader\" value=\"301\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("301",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">301&nbsp;</span>\n<input type=\"radio\" name=\"ServerHeader\" value=\"302\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("302",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">302&nbsp;</span>\n</td>\n<td colspan=\"2\">&#160;</td>\n</tr> \n<tr>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.Default.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td colspan=\"2\">\n<input type=\"radio\" name=\"DefaultFlag\" value=\"All\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DefaultFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DefaultFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=\"radio\" name=\"DefaultFlag\" value=\"1\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.Yes.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;&nbsp;&nbsp;</span>\n<input type=\"radio\" name=\"DefaultFlag\" value=\"0\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.No.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n</td>\n<td colspan=\"2\">&#160;</td>\n</tr> \n<tr>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.Enabled.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td colspan=\"2\">\n<input type=\"radio\" name=\"EnabledFlag\" value=\"All\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("EnabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n<input type=\"radio\" name=\"EnabledFlag\" value=\"1\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.Yes.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;&nbsp;&nbsp;</span>\n<input type=\"radio\" name=\"EnabledFlag\" value=\"0\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/><span class=\"infobox_item\">");
 {out.write(localizeISText("ShortLinkSearch.No.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</span>\n</td>\n</tr> \n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.StartDate.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n</tr> \n<tr>\n<td class=\"infobox_item\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"16\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td> \n<td align=\"left\" > \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateFrom_Date"),
new TagParameter("InputFieldLabel","between"),
new TagParameter("DateString",getObject("StartDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateFromError")))))}, 168); 
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateTo_Date"),
new TagParameter("InputFieldLabel","and"),
new TagParameter("DateString",getObject("StartDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 175); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShortLinkSearch.EndDate.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n</tr> \n<tr>\n<td class=\"infobox_item\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"16\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td> \n<td align=\"left\" > \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDateFrom_Date"),
new TagParameter("InputFieldLabel","between"),
new TagParameter("DateString",getObject("EndDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("EndDateFromError")))))}, 200); 
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDateTo_Date"),
new TagParameter("InputFieldLabel","and"),
new TagParameter("DateString",getObject("EndDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("EndDateToError")))))}, 207); 
      out.write("</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SearchType\" value=\"parametric\"/>\n<input type=\"hidden\" name=\"DefaultButton\" value=\"parametricSearch\"/>\n<input type=\"submit\" name=\"parametricSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ShortLinkSearch.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td> \n</tr>\n</table> \n</td> \n</tr>\n</table> \n");
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

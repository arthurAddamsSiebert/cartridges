/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.auction;

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

public final class AuctionUpdateExtension_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Extension.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 5); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\" >");
 {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Extension.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 {out.write(localizeISText("AuctionUpdateExtension_52.AuctionExtension.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">\n<b>");
 {out.write(localizeISText("AuctionUpdateExtension_52.AuctionCouldNotBeUpdatedBPleaseProvideAValidNumber.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- end errors-->\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatorExceptNoExtension.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action172 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Update",null)))),null));String site172 = null;String serverGroup172 = null;String actionValue172 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Update",null)))),null);if (site172 == null){  site172 = action172.getDomain();  if (site172 == null)  {      site172 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup172 == null){  serverGroup172 = action172.getServerGroup();  if (serverGroup172 == null)  {      serverGroup172 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue172, site172, serverGroup172,true)); 
      out.write("<input type=\"hidden\" name=\"webform-id\" value=\"WFAuctionExtension\"/>\n<input type=\"hidden\" name=\"AuctionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Auction:UUID"),null));
      out.write("\"/>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AuctionUpdateExtension_52.AuctionExtensionMode.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td width=\"100%\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td class=\"table_detail\" nowrap colspan=\"3\">\n<input type=\"radio\" name=\"WFAuctionExtension_Mode\" value=\"none\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("AuctionUpdateExtension_52.NoExtension.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail\" nowrap=\"nowrap\">\n<input type=\"radio\" name=\"WFAuctionExtension_Mode\" value=\"limited\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("AuctionUpdateExtension_52.LimitedExtensionCount.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParseErrorCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(" nowrap=\"nowrap\">\n&nbsp;&nbsp;&nbsp;");
 {out.write(localizeISText("AuctionUpdateExtension_52.Count",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>&nbsp;\n<input type=\"text\" name=\"WFAuctionExtension_CountString\" maxlength=4 size=10 class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Auction:Definition:MaxExtensionCount")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() >=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:MaxExtensionCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else { 
      out.write("\nvalue=\"0\"\n");
 } 
      out.write("\n/>\n</td>\n</tr>\n<tr>\n<td class=\"table_detail\" nowrap colspan=\"2\">\n<input type=\"radio\" name=\"WFAuctionExtension_Mode\" value=\"unlimited\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() ==((Number)(new Double(-1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("AuctionUpdateExtension_52.UnlimitedExtensionCount.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParseErrorDuration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ExtensionTime.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>&nbsp;</td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ExtensionTime.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>&nbsp;</td>");
 } 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"WFAuctionExtension_Duration\" maxlength=4 size=10 class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:MaxExtensionTime"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n&nbsp;&nbsp;&nbsp;\n<select name=\"WFAuctionExtension_MaxExtensionTimeUnit\" size=\"1\" class=\"dropdown\" style=\"width: 80px;\">\n<option value=\"60\" selected=\"selected\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Minutes.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ExtensionUnit")).doubleValue() ==((Number)(new Double(3600))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("<option value=\"3600\" selected=\"selected\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"3600\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ExtensionUnit")).doubleValue() ==((Number)(new Double(86400))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<option value=\"86400\" selected=\"selected\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Days.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"86400\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Days.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParseErrorActivation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ExtensionActivationPeriod.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>&nbsp;</td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ExtensionActivationPeriod.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>&nbsp;</td>");
 } 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"WFAuctionExtension_Activation\" maxlength=4 size=10 class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:ClosingPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n&nbsp;&nbsp;&nbsp;\n<select name=\"WFAuctionExtension_ClosingPeriodUnit\" size=\"1\" class=\"dropdown\" style=\"width: 80px;\">\n<option value=\"60\" selected=\"selected\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Minutes.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ClosingPeriodUnit")).doubleValue() ==((Number)(new Double(3600))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("<option value=\"3600\" selected=\"selected\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"3600\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ClosingPeriodUnit")).doubleValue() ==((Number)(new Double(86400))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<option value=\"86400\" selected=\"selected\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Days.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"86400\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Days.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td colspan=\"2\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AuctionUpdateExtension_52.Update.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"button\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null));
      out.write("\" class=\"button\" onclick=\"javascript:window.location.href='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctions_52-DispatchList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("'\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "168");} 
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

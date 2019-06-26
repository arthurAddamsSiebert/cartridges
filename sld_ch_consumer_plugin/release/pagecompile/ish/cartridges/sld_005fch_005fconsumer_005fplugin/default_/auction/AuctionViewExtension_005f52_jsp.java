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

public final class AuctionViewExtension_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 4); 
      out.write(" \n<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCodeUpdate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr valign=\"top\">\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">\n<b>");
 {out.write(localizeISText("AuctionViewExtension_52.AuctionCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCodeUpdate"),null).equals(context.getFormattedValue("WrongState",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.ItHasNotGotAnAppropriateState.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 } 
      out.write("<!-- end errors-->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\" >");
 {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Extension.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.BidHistory.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(32))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionEvaluation_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Evaluation.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxRepeatingCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionRecurrence_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write("<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.AuctionExtension.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action181 = new URLPipelineAction("");String site181 = null;String serverGroup181 = null;String actionValue181 = "";if (site181 == null){  site181 = action181.getDomain();  if (site181 == null)  {      site181 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup181 == null){  serverGroup181 = action181.getServerGroup();  if (serverGroup181 == null)  {      serverGroup181 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(" action=\"");out.print("");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue181, site181, serverGroup181,true)); 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AuctionViewExtension_52.ExtensionMode.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail\" nowrap width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.NoExtension.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {out.write(localizeISText("AuctionViewExtension_52.LimitedExtensionCount0.table_detail",null,null,context.getFormattedValue(getObject("Auction:Definition:MaxExtensionCount"),null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("sld_ch_consumer_plugin.UnlimitedExtensionCount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("&nbsp;\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxExtensionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>");
 } else { 
      out.write("<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AuctionViewExtension_52.ExtensionTime.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:MaxExtensionTime"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ExtensionUnit")).doubleValue() ==((Number)(new Double(3600))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ExtensionUnit")).doubleValue() ==((Number)(new Double(86400))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.Days.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("sld_ch_consumer_plugin.Minutes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("&nbsp;\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ExtensionActivationPeriod.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:ClosingPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ClosingPeriodUnit")).doubleValue() ==((Number)(new Double(3600))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:ClosingPeriodUnit")).doubleValue() ==((Number)(new Double(86400))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.Days.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("sld_ch_consumer_plugin.Minutes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("&nbsp;\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "105");} 
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

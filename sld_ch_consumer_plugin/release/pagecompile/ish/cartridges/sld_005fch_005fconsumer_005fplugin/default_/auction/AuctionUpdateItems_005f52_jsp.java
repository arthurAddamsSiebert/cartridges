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

public final class AuctionUpdateItems_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "2");} 
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Product.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 6); 
      out.write("<!-- Tabs-->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\" >");
 {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Product.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Extension.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 URLPipelineAction action178 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-UpdateQuantities",null)))),null));String site178 = null;String serverGroup178 = null;String actionValue178 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-UpdateQuantities",null)))),null);if (site178 == null){  site178 = action178.getDomain();  if (site178 == null)  {      site178 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup178 == null){  serverGroup178 = action178.getServerGroup();  if (serverGroup178 == null)  {      serverGroup178 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-UpdateQuantities",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue178, site178, serverGroup178,true)); 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_title s\">");
 {out.write(localizeISText("AuctionUpdateItems_52.AuctionProduct.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"confirm_box\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("AuctionUpdateItems_52.AuctionCouldNotBeUpdatedTheQuantityMustBePositive.message",null)))}, 29); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("AuctionUpdateItems_52.AuctionCouldNotBeUpdatedTheQuantityMustBeLower.message",null)))}, 31); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("AuctionUpdateItems_52.AuctionCouldNotBeUpdatedPleaseProvideAValidNumber.message",null)))}, 33); 
 }} 
      out.write("</table>");
 } 
      out.write("<!-- delete confirmation-->\n<div id=\"confirm\" style=\"display: none;\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("AuctionUpdateItems_52.AreYouSureYouWantToRemoveThisProductFromTheAuction.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td nowrap=\"nowrap\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"delete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null));
      out.write("\" class=\"button\" onclick=\"this.form.action='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-Remove",null)))),null));
      out.write("';\"/>\n</td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"4\" height=\"0\" alt=\"\" border=\"0\"/></td>\n<td class=\"button\">\n<input type=\"button\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null));
      out.write("\" class=\"button\" onclick=\"document.getElementById('confirm').style.display='none'\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</div>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("AuctionUpdateItems_52.TheListShowsAllProductsCurrentlyAssignedToThisAuct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuctionItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w n e s center\" nowrap width=\"70\">");
 {out.write(localizeISText("AuctionUpdateItems_52.Quantity.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s center\" nowrap width=\"70\">");
 {out.write(localizeISText("AuctionUpdateItems_52.Unit.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap width=\"40%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Product.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap width=\"60%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s center\" nowrap width=\"100\">");
 {out.write(localizeISText("AuctionUpdateItems_52.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AuctionItems","AuctionItem",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s center\">\n<input type=\"hidden\" name=\"AuctionItemUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AuctionItem:UUID"),null));
      out.write("\"/>\n<input type=\"input\" size=\"4\" maxlength=\"12\" name=\"");
      out.print(context.getFormattedValue(getObject("AuctionItem:UUID"),null));
      out.write("\" value=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(getObject("AuctionItem:Quantity"),new Integer(QUANTITY_SHORT)),null));
      out.write("\"/>\n</td>\n<td class=\"table_detail e s center\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Quantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("AuctionItem:Item:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("AuctionItem:Item:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>");
 } else { 
      out.write("<td class=\"table_detail e s\">&nbsp;&nbsp;</td>");
 } 
      out.write("<td class=\"table_detail e s center\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"button\" name=\"delete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null));
      out.write("\" onclick=\"this.form.RemoveAuctionItemUUID.value='");
      out.print(context.getFormattedValue(getObject("AuctionItem:UUID"),null));
      out.write("';document.getElementById('confirm').style.display='block';\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td colspan=\"5\" class=\"table_detail w e s n\">");
 {out.write(localizeISText("AuctionUpdateItems_52.ThereAreNoAssignedProductsYet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"AuctionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Auction:UUID"),null));
      out.write("\"/><input type=\"hidden\" name=\"RemoveAuctionItemUUID\" value=\"\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuctionItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AuctionUpdateItems_52.UpdateQuantity.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("AuctionItems") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("<input type=\"button\" name=\"add\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AuctionUpdateItems_52.AddProduct.button",null)),null));
      out.write("\" onclick=\"javascript:window.location.href='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-SimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null));
      out.write("'\" class=\"button\"/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "131");} 
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

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

public final class ListProducts_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "4");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-SimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ListProducts_52.AssignProducts.text",null)))}, 6); 
      out.write("<!-- confirmation if nothing is selected-->\n<div id=\"nothing\" style=\"display: none;\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ListProducts_52.PleaseSelectAtLeastOneProduct.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n</div>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e n s\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 {out.write(localizeISText("ListProducts_52.0Products.table_title",null,null,encodeString(context.getFormattedValue(getObject("CurrentChannel:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- Check simple search mask-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFSimpleSearch:NameOrID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box s\">\n<tr>\n<td class=\"error_icon e middle\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ListProducts_52.PleaseProvideAValidSearchMaskUseAtLeast3Characters.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoProductsSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box s\">\n<tr>\n<td class=\"error_icon e middle\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ListProducts_52.YouHaveNotSelectedAnyProductsToBeAssignedSelectThe.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("ListProducts_52.TheListShowsAllProductsCurrentlyAssignedToAnAuctio.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action168 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));String site168 = null;String serverGroup168 = null;String actionValue168 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null);if (site168 == null){  site168 = action168.getDomain();  if (site168 == null)  {      site168 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup168 == null){  serverGroup168 = action168.getServerGroup();  if (serverGroup168 == null)  {      serverGroup168 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SimSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue168, site168, serverGroup168,true)); 
 {Object temp_obj = ("ViewProductsForAuction_52-Dispatch"); getPipelineDictionary().put("pagingpipeline", temp_obj);} 
      out.write("<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"e w\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ListProducts_52.SimpleSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"webform-id\" value=\"WFSimpleSearch\"/><input type=\"hidden\" name=\"SearchType\" value=\"simple\"/><input type=\"hidden\" name=\"AuctionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Auction:UUID"),null));
      out.write("\"/></td>\n</tr>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSimpleSearchMask", null, "60");} 
      out.write("</table>");
 out.print("</form>"); 
 URLPipelineAction action169 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));String site169 = null;String serverGroup169 = null;String actionValue169 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null);if (site169 == null){  site169 = action169.getDomain();  if (site169 == null)  {      site169 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup169 == null){  serverGroup169 = action169.getServerGroup();  if (serverGroup169 == null)  {      serverGroup169 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue169, site169, serverGroup169,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header center w n e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\">");
 {out.write(localizeISText("ListProducts_52.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s right\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ListProducts_52.Price0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s left\" width=\"10%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Products","ProductBO",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s center\"><input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isProductMaster"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"SelectedObjectUUID\" disabled=\"disabled\"/>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ProductBO:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));
      out.write("\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
      out.write(" \n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s right\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s left\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_instock.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.InStock.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:hasCatalogCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_explicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Categorized.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;\n");
 {Object temp_obj = ("false"); getPipelineDictionary().put("hasOffersInBuyerDomain", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductBO:getOffersCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
 while (loop("ProductBO:Offers","Offer",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Offer:DomainID"),null).equals(context.getFormattedValue(getObject("ContractRepository:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("hasOffersInBuyerDomain", temp_obj);} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("hasOffersInBuyerDomain"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_offers.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Offered.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_from_m.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.SharedFromAnotherAndEdited.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } else { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_from.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.SharedFromAnother.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"Assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Assign.button",null)),null));
      out.write("\" class=\"button\"/>\n<input type=\"hidden\" name=\"AuctionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Auction:UUID"),null));
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table class=\"pagecursor\" width=\"100%\">\n<tr>");
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewProductsForAuction_52-Paging"),
new TagParameter("item","products"),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","Products")}, 138); 
      out.write("</tr>\n</table>\n<!-- End Page Cursor -->");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">");
 processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.TheRepositoryIsEmpty",null)))}, 144); 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"AuctionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Auction:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
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
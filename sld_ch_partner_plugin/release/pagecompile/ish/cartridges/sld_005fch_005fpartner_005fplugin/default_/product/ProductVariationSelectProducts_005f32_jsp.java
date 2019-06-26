/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.product;

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
import java.util.*;
import com.intershop.beehive.xcs.capi.product.*;

public final class ProductVariationSelectProducts_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-BackToProcessAssignmentMethod",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.VariationProductAssignmentStep2SelectProducts.text",null)))}, 5); 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e n\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.SelectVariationProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoProductSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e n\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.YouHaveNotSelectedAnyProductsToAddToTheVariation.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</td>\n</tr>\n</table>");
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.Step2Of2UseTheCheckboxesToSelectProductsAndThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- include Standard Product search mask for simple and parametric search -->");
 processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewProductVariations_32-Dispatch"),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("searchtype",getObject("SearchType"))}, 31); 
      out.write("<!-- Main Content -->");
 URLPipelineAction action14 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-Dispatch",null)))),null));String site14 = null;String serverGroup14 = null;String actionValue14 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-Dispatch",null)))),null);if (site14 == null){  site14 = action14.getDomain();  if (site14 == null)  {      site14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup14 == null){  serverGroup14 = action14.getServerGroup();  if (serverGroup14 == null)  {      serverGroup14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue14, site14, serverGroup14,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s left\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('detailForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('detailForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s right\">&nbsp;");
 {out.write(localizeISText("ProductVariationSelectProducts_32.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s left\" width=\"75\">");
 {out.write(localizeISText("ProductVariationSelectProducts_32.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Products","ProductBO",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Product:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("ProductBO:isProductMaster"))).booleanValue() && !((Boolean) (getObject("ProductBO:isProductBundle"))).booleanValue() && !((Boolean) (getObject("ProductBO:isMastered"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail w e s center top\"><input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProductBO:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isMastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail w e s center top\"><input type=\"checkbox\" disabled=\"disabled\" checked=\"checked\"/></td>");
 } else { 
      out.write("<td class=\"table_detail w e s center top\"><input type=\"checkbox\" disabled=\"disabled\"/></td>");
 }} 
      out.write("<td class=\"table_detail e s top\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));
      out.write("\"/>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s top\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s right top\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "productboprice", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 79); 
      out.write("</td>\n<td class=\"table_detail e s left\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "productbotypecode", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 80); 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s left top\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Online.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Online.title",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_instock.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.InStock.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.InStock.title",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:hasDerivedProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_to.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedToOthers.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedToOthers.title",null)),null));
      out.write("\" border=\"0\"/>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_from_m.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnotherAndEdited.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnotherAndEdited.title",null)),null));
      out.write("\" border=\"0\"/>");
 } else { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_from.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnother.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnother.title",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 } else { 
      out.write("\n&nbsp;\n");
 }} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"w s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"backToAssignmentMethod\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td class=\"e s\" colspan=\"6\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ProductID\" value=\"");
      out.print(context.getFormattedValue(getObject("Product:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"add\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Finish.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancelSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<!-- Start Page Cursor -->\n<table class=\"pagecursor\" width=\"100%\">\n<tr>");
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewProductVariations_32-SearchPaging"),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","Products")}, 128); 
      out.write("</tr>\n</table>\n<!-- End Page Cursor -->");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">");
 processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.TheRepositoryIsEmpty",null)))}, 135); 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\"> \n<tr>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"backToAssignmentMethod\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td class=\"right\" colspan=\"4\">\n<table border=\"0\" cellpadding=\"0\" align=\"right\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ProductID\" value=\"");
      out.print(context.getFormattedValue(getObject("Product:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"cancelSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr> \n</table>");
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
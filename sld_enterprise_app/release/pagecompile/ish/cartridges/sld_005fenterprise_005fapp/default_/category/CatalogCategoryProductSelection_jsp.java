/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.category;

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

public final class CatalogCategoryProductSelection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("id","catalogCatProdSelect"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogCategoryProductSelection.AddProducts.text",null)))}, 5); 
      out.write("<table class=\"n s w e\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr><td class=\"table_title\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("CatalogCategoryProductSelection.AddProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assignSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error middle\" width=\"100%\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.YouHaveNotSelectedAnyProductsToBeAssignedUseTheChe.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmAssignAllProducts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 URLPipelineAction action254 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),null));String site254 = null;String serverGroup254 = null;String actionValue254 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),null);if (site254 == null){  site254 = action254.getDomain();  if (site254 == null)  {      site254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup254 == null){  serverGroup254 = action254.getServerGroup();  if (serverGroup254 == null)  {      serverGroup254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmAssignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue254, site254, serverGroup254,true)); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/AssignProductsToCategoryConfirmationQuestion", null, "32");} 
 out.print("</form>"); 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description e w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("IsSearchFired")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("IsSearchFired"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogCategoryProductSelection.TheListShowsAllSearchResults.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else { 
 {out.write(localizeISText("CatalogCategoryProductSelection.TheListShowsAllProductsCurrentlyInTheCentralReposi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("<br/><br/>");
 {out.write(localizeISText("CatalogCategoryProductSelection.UseTheCheckboxesAndTheAssignSelectedButtonToAddNew.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("CatalogCategoryProductSelection.CustomAttributesCase1.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n<br/>");
 {out.write(localizeISText("CatalogCategoryProductSelection.CustomAttributesCase2.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(" \n</td>\n</tr>\n</table>\n<!-- include Standard Product search mask for simple and parametric search -->");
 processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogCategoryProductAssignment-Dispatch"),
new TagParameter("parametername1","CatalogCategoryID"),
new TagParameter("parametervalue2",getObject("IsSearchFired")),
new TagParameter("parametervalue1",getObject("Category:UUID")),
new TagParameter("parametername2","IsSearchFired"),
new TagParameter("searchtype",getObject("SearchType"))}, 58); 
      out.write("<!-- Main Content -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 URLPipelineAction action255 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));String site255 = null;String serverGroup255 = null;String actionValue255 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null);if (site255 == null){  site255 = action255.getDomain();  if (site255 == null)  {      site255 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup255 == null){  serverGroup255 = action255.getServerGroup();  if (serverGroup255 == null)  {      serverGroup255 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue255, site255, serverGroup255,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header e w s left\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('assignProductsForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('assignProductsForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s right\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.ListPrice0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s left\" width=\"10%\">");
 {out.write(localizeISText("CatalogCategoryProductSelection.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Products","Product",null)) { 
      out.write("<tr>");
 {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} 
 while (loop("CategoryProducts","AssignedProduct",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedProduct:UUID"),null).equals(context.getFormattedValue(getObject("Product:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail w e s center\">\n<input type=\"checkbox\" checked=\"checked\" disabled=\"disabled\"/>\n</td>");
 } else { 
      out.write("<td class=\"table_detail w e s center\">\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Product:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Product:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Product:UUID"),null));
      out.write("\"/>\n</td>");
 } 
      out.write("<td class=\"table_detail top e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } 
      out.write("</td>\n<td class=\"table_detail top e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } 
      out.write("</td>\n<td class=\"table_detail top e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail top e s right\" nowrap=\"nowrap\" style=\"white-space: nowrap\">");
 processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("Product"))}, 139); 
      out.write("&nbsp;\n</td>\n<td class=\"table_detail top e s left\" nowrap=\"nowrap\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "141");} 
      out.write("&nbsp;</td>\n<td class=\"table_detail top e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_instock.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.InStock.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td align=\"right\" class=\"w e s\" colspan=\"7\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
      out.print(context.getFormattedValue(getObject("Category:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Catalog:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"CategoryName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"submit\" name=\"confirmAssignAllProducts\" value=\"");
 {out.write(localizeISText("CatalogCategoryProductSelection.AssignAll0.button",null,null,encodeString(context.getFormattedValue(getObject("Products:ElementCount"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"assignSelected\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.AssignSelected.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<!-- Start Page Cursor -->\n<table class=\"pagecursor\" width=\"100%\">\n<tr>");
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogCategoryProductAssignment-Paging"),
new TagParameter("parametername1","SearchType"),
new TagParameter("parametervalue2",getObject("IsSearchFired")),
new TagParameter("parametervalue1",getObject("SearchType")),
new TagParameter("parametername2","IsSearchFired"),
new TagParameter("formname","assignProductsForm"),
new TagParameter("pageable","Products")}, 177); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- End Page Cursor -->");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"e w s\">");
 processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null)))}, 189); 
      out.write("</table>");
 URLPipelineAction action256 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));String site256 = null;String serverGroup256 = null;String actionValue256 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null);if (site256 == null){  site256 = action256.getDomain();  if (site256 == null)  {      site256 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup256 == null){  serverGroup256 = action256.getServerGroup();  if (serverGroup256 == null)  {      serverGroup256 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue256, site256, serverGroup256,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\" class=\"w e s\" colspan=\"7\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
      out.print(context.getFormattedValue(getObject("Category:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"Category:UUID\" value=\"");
      out.print(context.getFormattedValue(getObject("SelectedCategory:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Catalog:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"CategoryName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n");
 out.print("</form>"); 
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
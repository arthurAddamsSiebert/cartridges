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

public final class CategoryProductLinkList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t<tr>\n\t\t<td class=\"table_title2 aldi\">");
 {out.write(localizeISText("CategoryProductLinkList.ProductLinks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t</tr>\n\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("\n\t<tr>\n\t\t<td valign=\"top\" class=\"table_title_description w e s\">\n\t\t\t");
 {out.write(localizeISText("CategoryProductLinkList.ClickNewToCreateANewProductLinkUseTheCheckboxesAnd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t</td>\n\t</tr>\n\t");
 } 
      out.write("\n</table>\n\n");
 URLPipelineAction action296 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));String site296 = null;String serverGroup296 = null;String actionValue296 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null);if (site296 == null){  site296 = action296.getDomain();  if (site296 == null)  {      site296 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup296 == null){  serverGroup296 = action296.getServerGroup();  if (serverGroup296 == null)  {      serverGroup296 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("categoryProductLinksForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue296, site296, serverGroup296,true)); 
      out.write("\n\t<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmProductLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("\n\t\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<!-- selected links -->\n\t\t\t\t");
 while (loop("SelectedCatProdLinkRefs","Selected",null)) { 
      out.write("\n\t\t\t\t\t<input type=\"hidden\" name=\"DeleteLinkRef\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrderExportTabs.Conditions.link",null))),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("CategoryProductLinkList.AreYouSureYouWantToDeleteTheseLinks.message",null)))}, 32); 
      out.write("\n\t\t\t");
 } else { 
      out.write("\n\t\t\t\t<!-- delete confirmation if nothing is selected-->\n\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mde")}, 35); 
      out.write("\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write("\n\t\t\n\t\t<!-- move links if nothing is selected-->\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ProductLink.subject",null))),
new TagParameter("type","nse")}, 41); 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write("\n\n\t</table>\n\n\t<!-- filter product link types -->\n\t");
 processOpenTag(response, pageContext, "filterlinklist", new TagParameter[] {
new TagParameter("selectedLinkType",getObject("SelectedLinkTypeCP")),
new TagParameter("selectedLinkTypeFieldName","SelectedLinkTypeCP"),
new TagParameter("typeCodeGroup",getObject("ProductTypeCodeGroup")),
new TagParameter("linkTypes",getObject("ProductTypeCodesToShow"))}, 47); 
      out.write("\n\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" >\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("\n\n\t\t\t\n\t\t\t");
 {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} 
      out.write("\n\t\t\t");
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t");
 {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t");
 while (loop("ProductLinks","ProductLink",null)) { 
      out.write("\n\t\t\t\t");
 {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t");
 } 
      out.write("\n\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_header w e s center select_all\" nowrap=\"nowrap\">\n\t\t\t\t\t<div id=\"CPA\">\n\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('categoryProductLinksForm','CatProdLinkRef','CPA','CPB');\" class=\"tableheader\">\n\t\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryProductLinkList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t</table>\n\t\t\t\t\t</div>\n\t\t\t\t\t<div id=\"CPB\" style=\"display:none\">\n\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('categoryProductLinksForm','CatProdLinkRef','CPA','CPB');\" class=\"tableheader\">\n\t\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryProductLinkList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t</table>\n\t\t\t\t\t</div>\n\t\t\t\t</td>\n\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("CategoryProductLinkList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("CategoryProductLinkList.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header e s right\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryProductLinkList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n\t\t\t\t<td class=\"table_header e s left\" width=\"10%\">");
 {out.write(localizeISText("CategoryProductLinkList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"table_header e s left\" width=\"5%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryProductLinkList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\n\t\t\t</tr>\n\n\t\t\t");
 {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t");
 while (loop("ProductLinks","pl",null)) { 
      out.write("\n\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue(getObject("pl:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} 
      out.write("\n\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("pl:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<!-- group for typecode -->\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"table_sub_header w e s\" colspan=\"5\">\n\t\t\t\t\t\t\t");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("pl:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<td align=\"center\" class=\"table_detail top e s sort\" nowrap=\"nowrap\" rowspan=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"VarSortAttribute\" value=\"position\" />\n\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\">\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td><input type=\"image\" name=\"moveUpLink\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_up.gif\" alt=\"\"/></td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"7\" alt=\"\" border=\"0\"/></td></tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td><input type=\"image\" name=\"moveDownLink\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_down.gif\"  alt=\"\"/></td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t");
 {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</tr>\n\t\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue(getObject("pl:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"table_detail w e s center\">\n\t\t\t\t\t\t<input type=\"checkbox\" name=\"CatProdLinkRef_");
 {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
 while (loop("SelectedCatProdLinkRefs","Selected",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",137);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
      out.write("/>\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\" width=\"100%\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue(getObject("SelectedLinkTypeCP"),null))),null));
      out.write("\" class=\"table_detail_link\">\n\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue("0",null))),null));
      out.write("\" class=\"table_detail_link\">\n\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t");
 } 
      out.write("&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\" nowrap=\"nowrap\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue(getObject("SelectedLinkTypeCP"),null))),null));
      out.write("\" class=\"table_detail_link\">\n\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue("0",null))),null));
      out.write("\" class=\"table_detail_link\">\n\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t");
 } 
      out.write("&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s right\" nowrap=\"nowrap\">\n\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s left\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_instock.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.InStock.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } else { 
      out.write("\n\t\t\t<tr>\n\t\t\t\t<td colspan=\"7\" class=\"table_detail w e s\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryProductLinkList.ThisCategoryDoesNotContainAnyProductLinksOfTheSele.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryProductLinkList.ThisCategoryDoesNotContainAnyProductLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
      out.write("\t\t\t\t\n\t\t\t\t\t");
 {out.write(localizeISText("CategoryProductLinkList.ClickNewToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t");
 } 
      out.write("\n\t\t<tr>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td colspan=\"7\" class=\"w e s\" align=\"right\">\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t<input type=\"submit\" name=\"newProductLink\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.New.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"confirmProductLinksDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\t\t\t\t\n\t\t\t</td>\n\t\t\t");
 } 
      out.write("\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
      out.write('\n');
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
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

public final class CategoryLinkProductList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 URLPipelineAction action289 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));String site289 = null;String serverGroup289 = null;String actionValue289 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null);if (site289 == null){  site289 = action289.getDomain();  if (site289 == null)  {      site289 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup289 == null){  serverGroup289 = action289.getServerGroup();  if (serverGroup289 == null)  {      serverGroup289 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("categoryProductLinksForm",null) + context.getFormattedValue(getObject("ProductLinkTable_ID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue289, site289, serverGroup289,true)); 
      out.write("\n\t<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("\n\n\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmProductLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<!-- selected links -->\n\t\t\t\t\t");
 while (loop("SelectedCatProdLinkRefs","Selected",null)) { 
      out.write("\n\t\t\t\t\t\t<input type=\"hidden\" name=\"DeleteLinkRef\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t");
 while (loop("ProductLinksList","ProductLink",null)) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(context.getFormattedValue(getObject("ProductLink:TypedProductCategoryAssignmentRef"),null),null).equals(context.getFormattedValue(getObject("Selected"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {Object temp_obj = ("true"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShowDeleteLinkMessageBox")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowDeleteLinkMessageBox"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {Object temp_obj = ("false"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} 
      out.write("\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedProductLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t");
 {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} 
      out.write("\n\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t");
 {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrderExportTabs.Conditions.link",null))),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("ProductLinksMessage"))}, 37); 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t<!-- delete confirmation if nothing is selected-->\n\t\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 41); 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t\t\n\t\t\t<!-- move links if nothing is selected-->\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ProductLink.subject",null))),
new TagParameter("type","nse")}, 47); 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\n\t\t</table>\n\t");
 } 
      out.write("\n\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\" >\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("\n\n\t\t\t\n\t\t\t");
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t");
 {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t");
 while (loop("ProductLinksList","ProductLink",null)) { 
      out.write("\n\t\t\t\t");
 {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t\t");
 {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} 
      out.write("\n\t\t\t");
 {Object temp_obj = (((((Boolean) ((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ShowMoveButtons", temp_obj);} 
      out.write("\n\t\t\t\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_header e center select_all\" width=\"5%\" nowrap=\"nowrap\">\n\t\t\t\t\t<div id=\"CPA");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center w100\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('categoryProductLinksForm");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','CatProdLinkRef','CPA");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','CPB");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("');\" class=\"tableheader\">\n\t\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t</table>\n\t\t\t\t\t</div>\n\t\t\t\t\t<div id=\"CPB");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" style=\"display:none\">\n\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center w100\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('categoryProductLinksForm");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','CatProdLinkRef','CPA");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','CPB");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("');\" class=\"tableheader\">\n\t\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t</table>\n\t\t\t\t\t</div>\n\t\t\t\t</td>\n\t\t\t\t<td class=\"table_header e\">");
 {out.write(localizeISText("CategoryLinkProductList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header e\" width=\"40%\">");
 {out.write(localizeISText("CategoryLinkProductList.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header e right\" width=\"5%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryLinkProductList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n\t\t\t\t<td class=\"table_header e\" width=\"5%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryLinkProductList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowMoveButtons"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"table_header e left\" width=\"5%\">");
 {out.write(localizeISText("CategoryLinkProductList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t<td class=\"table_header left\" width=\"5%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryLinkProductList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t<td class=\"table_header e left\" width=\"10%\">");
 {out.write(localizeISText("CategoryLinkProductList.Status.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</tr>\n\n\t\t\t");
 {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t");
 while (loop("ProductLinksList","pl",null)) { 
      out.write("\n\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue(getObject("pl:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} 
      out.write("\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"table_detail e n center\">\n\t\t\t\t\t\t<input type=\"checkbox\" name=\"CatProdLinkRef_");
 {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 while (loop("SelectedCatProdLinkRefs","Selected",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",112);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
      out.write("/>\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e n\">\n\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e n\" nowrap=\"nowrap\">\n\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e n right\" nowrap=\"nowrap\">\n\t\t\t\t\t\t");
 processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("pl:Product"))}, 121); 
      out.write("&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail3 top e n\" nowrap=\"nowrap\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkOriginType(pl)"),null).equals(context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkSourceTypeLocal"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.LocalLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkOriginType(pl)"),null).equals(context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkSourceTypeShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.SharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkOriginType(pl)"),null).equals(context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkSourceTypeLocalAndShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.LocalLinkSharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t\t\t");
 }}} 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e n left\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_instock.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.InStock.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t\t\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("pl:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowMoveButtons"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<td align=\"center\" class=\"table_detail top n sort\" nowrap=\"nowrap\" rowspan=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"VarSortAttribute\" value=\"position\" />\n\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\">\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td><input type=\"image\" name=\"moveUpLink\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_up.gif\" alt=\"\"/></td>\n\t\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t\t<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"7\" alt=\"\" border=\"0\"/></td></tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td><input type=\"image\" name=\"moveDownLink\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_down.gif\"  alt=\"\"/></td>\n\t\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue(getObject("pl:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</tr>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } else { 
      out.write("\n\t\t\t<tr>\n\t\t\t\t<td colspan=\"7\" class=\"table_detail\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinksOfTheSele.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
      out.write("\t\t\t\t\n\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkProductList.ClickAssignToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t");
 } 
      out.write("\n\t\t<tr>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<td colspan=\"7\" class=\"n\" align=\"right\">\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryProductServiceTypes:get(LinkTypeName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 while (loop("ServiceTypeCategories","ServiceType",null)) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceType:Name"),null).equals(context.getFormattedValue(getObject("CategoryProductServiceTypes:get(LinkTypeName)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"WFAdvancedSearch_TypeCode\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceType:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t\t\t\t\t\t");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",180);}else{getLoopStack().pop();break;} 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"SelectedLinkType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t\t\t<input type=\"submit\" name=\"linkTypeSelected\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Assign.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"confirmProductLinksDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Unassign.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\t\t\t\t\n\t\t\t</td>\n\t\t\t");
 } 
      out.write("\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
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

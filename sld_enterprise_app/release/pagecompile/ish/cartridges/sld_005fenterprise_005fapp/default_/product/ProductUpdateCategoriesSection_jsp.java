/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.product;

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

public final class ProductUpdateCategoriesSection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("bridge/bridge.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("AssignCategoriesDialogBehaviors.js");
 out.print("</waplacement>"); 
      out.write("<table class=\"aldi\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideAssignedCategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HideAssignedCategories",null))).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null));
      out.write("\" class=\"table_opened\">");
 {out.write(localizeISText("sld_enterprise_app.Categories.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HideAssignedCategories",null))).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("false",null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null));
      out.write("\" class=\"table_closed\">");
 {out.write(localizeISText("sld_enterprise_app.Categories.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideAssignedCategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<!-- delete confirmation if one is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteSection")))).booleanValue() && ((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 URLPipelineAction action49 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null));String site49 = null;String serverGroup49 = null;String actionValue49 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null);if (site49 == null){  site49 = action49.getDomain();  if (site49 == null)  {      site49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup49 == null){  serverGroup49 = action49.getServerGroup();  if (serverGroup49 == null)  {      serverGroup49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteConfirmation");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue49, site49, serverGroup49,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametername1","ProductID"),
new TagParameter("subject","product from these categories"),
new TagParameter("cancelbtnname","cancelSection"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("prefixiterator",getObject("PrefixIterator")),
new TagParameter("prefix","CatalogCategoryID_"),
new TagParameter("okbtnname","deleteSection"),
new TagParameter("type","sdc"),
new TagParameter("class","n")}, 26); 
      out.write("</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>");
 } 
      out.write("<!-- delete confirmation if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteSection")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 URLPipelineAction action50 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null));String site50 = null;String serverGroup50 = null;String actionValue50 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null);if (site50 == null){  site50 = action50.getDomain();  if (site50 == null)  {      site50 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup50 == null){  serverGroup50 = action50.getServerGroup();  if (serverGroup50 == null)  {      serverGroup50 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteCancelation");out.print("\"");out.print(" class=\"");out.print("n");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue50, site50, serverGroup50,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","categorie"),
new TagParameter("type","mde"),
new TagParameter("class","")}, 38); 
      out.write("</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RunningAuctionCounter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Product:RunningAuctions"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:RunningAuctions")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error top\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:RunningAuctions")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.WarningThisProductIsCurrentlyPartOfAnAuction.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b><br/>");
 } else { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.WarningThisProductIsCurrentlyPartOf0Auctions.error",null,null,context.getFormattedValue(getObject("Product:RunningAuctions"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("</b><br/>");
 } 
 {out.write(localizeISText("sld_enterprise_app.PleaseContactYourAuctionManagerBeforeEditingThePro.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 } 
      out.write("<!-- product sharing information -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "71");} 
      out.write("<tr>\n<td class=\"table_title_description n\">");
 {out.write(localizeISText("sld_enterprise_app.TheListShowsAllCategoriesThatContainThisProductIfT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.DynamicProductBinding.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.DynamicProductBinding.title",null)),null));
      out.write("\" border=\"0\"/> ");
 {out.write(localizeISText("sld_enterprise_app.BesideTheCategoryNameAndID",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideAssignedCategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
 URLPipelineAction action51 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null));String site51 = null;String serverGroup51 = null;String actionValue51 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null);if (site51 == null){  site51 = action51.getDomain();  if (site51 == null)  {      site51 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup51 == null){  serverGroup51 = action51.getServerGroup();  if (serverGroup51 == null)  {      serverGroup51 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategories-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignedCategoriesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue51, site51, serverGroup51,true)); 
      out.write("<input type=\"hidden\" name=\"OnlyOneProduct\" value=\"true\"/>\n<input type=\"hidden\" name=\"ProductID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"ProductID_");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"asyncCategoryAssignmentBlock\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header center w e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"CategoryAssignments-A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"100%\">\n<tr>\n<td nowrap=\"nowrap\" class=\"center\">\n<a href=\"javascript:selectAll('assignedCategoriesForm','CatalogCategoryID','CategoryAssignments-A','CategoryAssignments-B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"CategoryAssignments-B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"100%\">\n<tr>\n<td nowrap=\"nowrap\" class=\"center\">\n<a href=\"javascript:selectAll('assignedCategoriesForm','CatalogCategoryID','CategoryAssignments-A','CategoryAssignments-B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\" width=\"60%\">");
 {out.write(localizeISText("sld_enterprise_app.Category.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_header e w s\" width=\"60%\">");
 {out.write(localizeISText("sld_enterprise_app.Category.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write(" \n<td class=\"table_header e s\" width=\"20%\">");
 {out.write(localizeISText("sld_enterprise_app.CategoryID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.DefaultCategory.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("CatalogCategories","list",null)) { 
      out.write("<!-- Checks if the sub-category has dynamic product binding (SQD in the current channel domain) -->");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","Name"),
new TagParameter("value0",getObject("list:SearchQueryDefinitionName")),
new TagParameter("mapname","GetSQDByNameParamMap")}, 123); 
 {try{executePipeline("ProcessSearchQueryDefinitionBySearchIndex-GetCategorySQDByName",((java.util.Map)(getObject("GetSQDByNameParamMap"))),"GetSQDByNameResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 124.",e);}} 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write("<td class=\"w e s center\">\n<input type=\"checkbox\" name=\"CatalogCategoryID_");
      out.print(context.getFormattedValue(getObject("list:UUID"),null));
      out.write("\" value=\"");
      out.print(context.getFormattedValue(getObject("list:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
 while (loop("PrefixIterator","Selected",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("list:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",132);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>");
 } 
      out.write("<td class=\"table_detail e s ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { 
      out.write('w');
 } 
      out.write('"');
      out.write('>');
 while (loop("CategoryPath:get(list:UUID)","parent_path",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("parent_path:Name"),null).equals(context.getFormattedValue(getObject("list:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryAssignmentWizard-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("list:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("cameFrom",null),context.getFormattedValue("productCategoriesList",null))),null));
      out.write("\" class=\"table_detail_link\"><b>");
 {String value = null;try{value=context.getFormattedValue(getObject("list:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</b></a>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("list:isHotDealsCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryAssignmentWizard-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("list:HotDealsCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("cameFrom",null),context.getFormattedValue("productCategoriesList",null))),null));
      out.write("\" class=\"table_detail_link\"><b>");
 {out.write(localizeISText("sld_enterprise_app.HotDealsCategoryOf0.link",null,null,encodeString(context.getFormattedValue(getObject("list:HotDealsOwner:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</b></a>");
 } 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("parent_path:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;&gt;&nbsp;");
 } 
 } 
      out.write("&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.DynamicProductBinding.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.DynamicProductBinding.title",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryAssignmentWizard-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("list:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("cameFrom",null),context.getFormattedValue("productCategoriesList",null))),null));
      out.write("\" class=\"table_detail_link\">\n<b>");
 {String value = null;try{value=context.getFormattedValue(getObject("list:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</b></a>&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.DynamicProductBinding.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.DynamicProductBinding.title",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:DefaultCatalogCategory:UUID"),null).equals(context.getFormattedValue(getObject("list:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"defaultCategory\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("list:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"defaultCategory\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("list:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td width=\"100%\" colspan=\"5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"button\" class=\"button\" name=\"ManageCategories\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null));
      out.write("\" />\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"button\" class=\"button\" name=\"ManageCategories\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null));
      out.write("\" disabled=\"disabled\"/>\n</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"applySection\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirmDeleteSection\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"applySection\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\" disabled=\"disabled\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirmDeleteSection\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null));
      out.write("\" class=\"button\" disabled=\"disabled\"/>\n</td>");
 } 
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"asyncCategoryAssignmentBlock\">\n<tr>\n<td colspan=\"3\" class=\"table_detail w e s\">");
 {out.write(localizeISText("sld_enterprise_app.ThisProductIsNotAssignedToAnyCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td width=\"100%\" colspan=\"5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"button\" class=\"button\" name=\"ManageCategories\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null));
      out.write("\" />\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"button\" class=\"button\" name=\"ManageCategories\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null));
      out.write("\" disabled=\"disabled\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
 } 
      out.write("<div id=\"CategoriesMgmtDialog\" class=\"js-dialog\" width=\"730\" height=\"478\" data-title=\"Select Categories\">\n<iframe src=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-GetDynamicCategoriesData",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductID"),null)))),null));
      out.write("\" class=\"dialog-iframe\" name=\"CategoriesMgmtDialog\"></iframe>\n</div>\n<script type=\"text/javascript\">\nassignCategories('");
      out.print(context.getFormattedValue("#",null));
      out.write("CategoriesMgmtDialog', 'input[name=\"ManageCategories\"]');\n</script>");
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

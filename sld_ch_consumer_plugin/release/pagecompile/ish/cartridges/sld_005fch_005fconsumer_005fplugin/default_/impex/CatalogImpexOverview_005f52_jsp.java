/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.impex;

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

public final class CatalogImpexOverview_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview_52.ChannelCatalogs.text",null)))}, 6); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImpexOverview_52.ImportAndExport_Plain",null)))}, 7); 
      out.write("<!-- EO Page Navigator -->");
 URLPipelineAction action466 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Dispatch",null)))),null));String site466 = null;String serverGroup466 = null;String actionValue466 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Dispatch",null)))),null);if (site466 == null){  site466 = action466.getDomain();  if (site466 == null)  {      site466 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup466 == null){  serverGroup466 = action466.getServerGroup();  if (serverGroup466 == null)  {      serverGroup466 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue466, site466, serverGroup466,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AdvancedShippingOverview_52.ImportAndExport_HTMLEntity",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductImageUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments_52-BrowseDirectory",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageProductImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> ");
 {out.write(localizeISText("CatalogImpexOverview_52.CreateADirectoryStructureAndUploadProductImages",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ProductImages\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Upload.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductAttachmentUpload.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachments_52-BrowseSecureDirectory",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageProductAttachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> ");
 {out.write(localizeISText("CatalogImpexOverview_52.CreateADirectoryStructureAndUploadFiles",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ProductAttachments\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Upload.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.CategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageCatalogWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport_52-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"CategoryImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"CategoryExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.CategoriesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageCatalogWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"CategoryCSVImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageProductWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductExport_52-Search",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductsCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageProductWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductCSVImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ClassificationCategoriesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageClassificationWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport_52-SelectClassificationCatalogFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport_52-SelectClassificationCatalog",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ClassificationCategoryImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ClassificationCategoryExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductsAndCategoriesBMEcat.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageBMEcatWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBMEcatExport_52-SelectCatalog",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"BMEcatImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"BMEcatExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.CatalogViewsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageCatalogViewsWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterExport-SelectFilters",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"CatalogFilterImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"CatalogFilterExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductFiltersXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageProductFiltersWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionImport-SelectProductFilterFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionExport-ListAllProductFilters",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductFilterImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductFilterExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.PriceListsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManagePriceListWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListExport-ListAll",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"PriceListImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"PriceListExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.PriceListsCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManagePriceListWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListImport-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"PriceListCSVImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.VariationTypesXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageVariationTypeWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeExport_52-ListAll",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"VariationTypeImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"VariationTypeExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.VariationTypesCSV.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageVariationTypeWithCSV.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationTypeImport_52-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"VariationTypeCSVImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ProductAttributeGroupsXML.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ManageProductAttributeGroupsWithXML.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport_52-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_52-ListAll",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductAttributeGroupImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ProductAttributeGroupExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImpexOverview_52.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("CatalogImpexOverview_52.UploadImportFilesAndDownloadExportFiles.link",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExportFiles_52-BrowseDirectory",null)))),"selection_link",null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\" class=\"button_background_color\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ImportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Upload.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ExportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImpexOverview_52.Download.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogImpex_52"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )}, 332); 
 out.print("</form>"); 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogImpexOverview_52", null, "335");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",337,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImpex_52-Status",null)))),null));
      out.write("'\", 10000)\n</script> \n");
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

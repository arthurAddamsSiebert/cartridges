/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.sharing;

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

public final class ProductSetBrowseSelectCatalog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-SelectCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSetBrowseSelectCatalog.Step1SelectCatalog.text",null)))}, 3); 
 URLPipelineAction action491 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-Dispatch",null)))),null));String site491 = null;String serverGroup491 = null;String actionValue491 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-Dispatch",null)))),null);if (site491 == null){  site491 = action491.getDomain();  if (site491 == null)  {      site491 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup491 == null){  serverGroup491 = action491.getServerGroup();  if (serverGroup491 == null)  {      serverGroup491 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("catalogForm");out.print("\"");out.print(" id=\"");out.print("catalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue491, site491, serverGroup491,true)); 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"SyndicationUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ProductSetID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Step1SelectCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\"> \n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.YouHaveNotSelectedAnyCatalogSelectACatalogAndClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Step1Of2NextStepBrowseAndAssignProductsChooseACata.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e n\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.StandardCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- Shared Standard Catalogs -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"5\" width=\"100%\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.SharedCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"10%\" class=\"table_header e s center\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("SharedStandardCatalogs","StandardCatalogs",null)) { 
      out.write("<tr>\n<td class=\"input_radio_table w e s\"><input type=\"radio\" name=\"CatalogCategoryID\" id=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>&nbsp;</td>\n<td class=\"e s\"><label class=\"label label_table label_light label_radio_text\" for=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</label></td>\n<td class=\"table_detail e s\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\n<tr> \n<td class=\"button e s\"> \n<input type=\"submit\" name=\"assignCategory_");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null));
      out.write("\" class=\"button\" onclick=\"$('");
      out.print(context.getFormattedValue("#",null));
      out.write("catalogForm').attr('action', '");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null))),null));
      out.write("')\"/> \n</td>\n</tr>\n</table>\n</td> \n</tr>");
 } 
      out.write("<tr>\n<td colspan=\"5\" class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } 
      out.write("<!-- Local Standard Catalogs -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"5\" width=\"100%\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.LocalCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"10%\" class=\"table_header e s center\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("LocalStandardCatalogs","StandardCatalogs",null)) { 
      out.write("<tr>\n<td class=\"input_radio_table w e s\"><input type=\"radio\" name=\"CatalogCategoryID\" id=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>&nbsp;</td>\n<td class=\"e s\"><label class=\"label label_table label_light label_radio_text\" for=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</label></td>\n<td class=\"table_detail e s\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\n<tr> \n<td class=\"button e s\">\n<input type=\"submit\" name=\"assignCategory_");
 {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null));
      out.write("\" class=\"button\" onclick=\"$('");
      out.print(context.getFormattedValue("#",null));
      out.write("catalogForm').attr('action', '");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null))),null));
      out.write("')\"/> \n</td>\n</tr>\n</table>\n</td> \n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.ThereAreNoLocalCatalogsDefinedForThisOrganization.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td valign=\"top\" class=\"w e\" colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e n\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.ClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"5\" width=\"100%\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.SharedCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"10%\" class=\"table_header e s center\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("SharedClassificationCatalogs","ClassificationCatalogs",null)) { 
      out.write("<tr>\n<td class=\"input_radio_table w e s\"><input type=\"radio\" name=\"CatalogCategoryID\" id=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>&nbsp;</td>\n<td class=\"e s\"><label class=\"label label_table label_light label_radio_text\" for=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</label></td>\n<td class=\"table_detail e s\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("&nbsp;");
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\n<tr>\n<td class=\"button e s\">\n<input type=\"submit\" name=\"assignCategory_");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null));
      out.write("\" class=\"button\" onclick=\"$('");
      out.print(context.getFormattedValue("#",null));
      out.write("catalogForm').attr('action', '");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null))),null));
      out.write("')\"/>\n</td>\n</tr>\n</table>\n</td> \n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.CurrentlyNoClassificationCatalogsAreSharedToThisOr.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td valign=\"top\" class=\"w e\" colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"5\" width=\"100%\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.LocalCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"45%\" class=\"table_header e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"10%\" class=\"table_header e s center\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("LocalClassificationCatalogs","ClassificationCatalogs",null)) { 
      out.write("<tr>\n<td class=\"input_radio_table w e s\"><input type=\"radio\" name=\"CatalogCategoryID\" id=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>&nbsp;</td>\n<td class=\"e s\"><label class=\"label label_table label_light label_radio_text\" for=\"CatalogCategoryID_");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</label></td>\n<td class=\"table_detail e s\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("&nbsp;");
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\n<tr>\n<td class=\"button e s\">\n<input type=\"submit\" name=\"assignCategory_");
 {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null));
      out.write("\" class=\"button\" onclick=\"$('");
      out.print(context.getFormattedValue("#",null));
      out.write("catalogForm').attr('action', '");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null))),null));
      out.write("')\"/> \n</td>\n</tr>\n</table> \n</td> \n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductSetBrowseSelectCatalog.ThereAreNoLocalClassificationCatalogsDefinedForThi.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"w s\" align=\"left\">&nbsp;\n</td>\n<td class=\"e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SharedStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("LocalStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("SharedClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("LocalClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"browseCatalog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetBrowseSelectCatalog.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\"/></td>");
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetBrowseSelectCatalog.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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

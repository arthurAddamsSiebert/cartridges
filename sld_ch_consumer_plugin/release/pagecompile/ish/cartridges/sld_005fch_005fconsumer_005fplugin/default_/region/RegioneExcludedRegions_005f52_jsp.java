/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.region;

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

public final class RegioneExcludedRegions_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RegionID",null),context.getFormattedValue(getObject("Region:Id"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("RegioneExcludedRegions_52.ExcludedRegions.text",null)))}, 5); 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SearchType"),
new TagParameter("value","simple")}, 8); 
      out.write('\n');
 } 
      out.write("\n<!-- Main Content -->\n");
 URLPipelineAction action197 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-Dispatch",null)))),null));String site197 = null;String serverGroup197 = null;String actionValue197 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-Dispatch",null)))),null);if (site197 == null){  site197 = action197.getDomain();  if (site197 == null)  {      site197 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup197 == null){  serverGroup197 = action197.getServerGroup();  if (serverGroup197 == null)  {      serverGroup197 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ExcludedRegionsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue197, site197, serverGroup197,true)); 
      out.write("\n        \n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"table_title aldi\">\n\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;-&nbsp;");
 {out.write(localizeISText("RegioneExcludedRegions_52.ExcludedRegions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<!-- simple delete confirmation-->\n\t\t\t<!-- start error handling -->\n\t\t\t\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 25); 
      out.write("\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde")}, 27); 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t\t<!-- end error handling -->\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td class=\"table_title_description w e s\">\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("simpleSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("simpleSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("advanceSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("advanceSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegioneExcludedRegions_52.ExcludedRegionsFoundBySearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("RegioneExcludedRegions_52.ListShowsAllExcludedRegions.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("<br/> ");
 {out.write(localizeISText("RegioneExcludedRegions_52.UnassignTheSelectedRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/> \n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t\n\t<!-- Simple and advanced search -->\t\n\t");
 processOpenTag(response, pageContext, "regionsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewRegionExcludedRegions_52-Dispatch"),
new TagParameter("embeddedinform","true"),
new TagParameter("parametername1","RegionID"),
new TagParameter("parametervalue1",getObject("Region:Id")),
new TagParameter("searchtype",getObject("SearchType"))}, 40); 
      out.write("\n\t\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedRegions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<tr>\n\t\t\t\t<td>\n\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"table_header w e s\" width=\"80\">\n\t\t\t\t\t\t\t\t<div id=\"A\">\n\t\t\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('ExcludedRegionsForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t\t\t<div id=\"B\" style=\"display:none\">\n\t\t\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\n\t\t\t\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('ExcludedRegionsForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t\t</td>\t\t\t\t\t\t\n\t\t\t\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.RegionName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.RegionID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.RegionDescription.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\t\n\t\t\t\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.AddressType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\t\t\t\t\t\t\n\t\t\t\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.DefaultStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\n\t\t\t\t\t\t");
 while (loop("ExcludedRegions","ExcludedRegion",null)) { 
      out.write("\n\t\t\t\t\t\t\t<tr>\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t<td class=\"w e s center top\">\n\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n\t\t  \t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ExcludedRegion:Id)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n\t\t\t\t\t\t\t\t<td class=\"table_detail e s top\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n\t\t\t\t\t\t\t\t<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\t\n\t\t\t\t\t\t\t\t<td class=\"table_detail e s top\">\n\t\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("Regular",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegioneExcludedRegions_52.Regular.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("POBox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegioneExcludedRegions_52.PostOfficeBox.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("APO_FPO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegioneExcludedRegions_52.APO_FPO_DPO.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 }}} 
      out.write("\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t&nbsp;</td>\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t<td class=\"table_detail e s top\">\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ExcludedRegion:Active")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("RegioneExcludedRegions_52.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("RegioneExcludedRegions_52.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t<td class=\"table_detail e s top\">\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ExcludedRegion:DefaultRegion")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("RegioneExcludedRegions_52.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } 
      out.write("&nbsp;\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t \n\t\t\t\t\t</table>\n\t\t\t\t\t<!-- EO Main Content -->\n\t\t\t\t</td>\n\t\t\t</tr>\n\n\t\t\t<tr>\n\t\t\t\t<td class=\"w e s\">\n\t\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td align=\"right\">\n\t\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"select\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("RegioneExcludedRegions_52.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("RegioneExcludedRegions_52.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\t\n\t\t\t\t</td>\n\t\t\t</tr>\t\n\t\t\t\t\t\n\t\t");
 } else { 
      out.write("\n\t\t\t\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_detail w e s\">");
 {out.write(localizeISText("RegioneExcludedRegions_52.NoDestinationRegionsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t</tr>\n\t\t\t<tr>\n\t\t\t\t<td width=\"100%\" class=\"w e s\" align=\"right\">\n\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"select\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("RegioneExcludedRegions_52.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t\t\n\t\t");
 } 
      out.write("\t\n\t\t \n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n\t\t\t\t<!-- Start Page Cursor -->\n\t\t\t\t\t");
 processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchType")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","ExcludedRegions"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 153); 
      out.write("\n\t\t\t\t<!-- End Page Cursor -->\n\t\t\t</td>\n\t\t</tr>\n\t\t\n\t</table>\n");
 out.print("</form>"); 
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "160");} 
      out.write("\n<!-- EO Working Area -->\n");
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

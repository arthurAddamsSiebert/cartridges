/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.manufacturer.alias;

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

public final class AssignManufacturers_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- start page navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Catalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignManufacturers_32.MasterCatalogs.text",null)))}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList_32-ListAll",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AssignManufacturers_32.ManufacturerAliases.text",null)))}, 6); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers_32.Manufactures.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-AssignedManufacturersList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ManufacturerNameAliasUUID",null),context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null))))),
new TagParameter("text",getObject("ManufacturerNameAlias:NameAlias"))}, 7); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("AssignManufacturers_32.AssignManufacturers.text",null)))}, 8); 
      out.write("<!-- end page navigator -->");
 URLPipelineAction action293 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-DispatchManufacturers",null)))),null));String site293 = null;String serverGroup293 = null;String actionValue293 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-DispatchManufacturers",null)))),null);if (site293 == null){  site293 = action293.getDomain();  if (site293 == null)  {      site293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup293 == null){  serverGroup293 = action293.getServerGroup();  if (serverGroup293 == null)  {      serverGroup293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-DispatchManufacturers",null)))),null));out.print("\"");out.print(" name=\"");out.print("ManufacturerListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue293, site293, serverGroup293,true)); 
      out.write("<!-- Tabs -->\n<!-- EO Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e n s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("AssignManufacturers_32.AssignManufacturers.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignFinish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error middle\" width=\"100%\">");
 {out.write(localizeISText("AssignManufacturers_32.YouHaveNotSelectedAnyManufacturersToBeAssignedUse.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("AssignManufacturers_32.NotAllManufacturerAliasesCouldBeAssignedPlease.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignManufacturers_32.TheListShowsManufacturersThatWereFoundYouCanOnly.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\" colspan=\"4\">");
 {out.write(localizeISText("AssignManufacturers_32.FindManufacturers.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\">\n<tr>\n<td>\n<input type=\"hidden\" name=\"Find\" value=\"Find\"/>\n<input type=\"text\" name=\"WFSearchManufacturers_ManufacturerName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFSearchManufacturers_ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>\n</td>\n<td class=\"left\" width=\"100%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<!--\n<input type=\"hidden\" name=\"DefaultButton\" value=\"Find\"/>\n--> \n<input type=\"submit\" name=\"Find\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers_32.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr> \n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllManufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ManufacturerListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AssignManufacturers_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ManufacturerListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AssignManufacturers_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignManufacturers_32.Manufacturers.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AllManufacturers","Manufacturer",null)) { 
      out.write("<tr>\n<td class=\"w e s center\" >\n<input type=\"hidden\" name=\"Manufacturer\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Manufacturer)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ManufacturerNamesMap:get(Manufacturer)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("\ndisabled=\"disabled\"\n");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\">\n&nbsp;\n");
 {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("AssignManufacturers_32.NoManufacturersFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/></td>\n</tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<input name=\"ManufacturerNameAliasUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null));
      out.write("\"/>\n<input name=\"SelectedManufacturerAliasUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null));
      out.write("\"/>\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllManufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"Assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers_32.Assign.button",null)),null));
      out.write("\"/>\n</td>");
 } 
      out.write("<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers_32.Cancel.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllManufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td>\n<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","AllManufacturers")}, 174); 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>\n</table>");
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

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

public final class AssignedManufacturerList_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_32-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignedManufacturerList_32.ChannelCatalogs.text",null)))}, 4); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList_32-List",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AssignedManufacturerList_32.ManufacturerAliases.text",null)))}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AssignedManufacturerList_32.Manufactures.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ManufacturerNameAliasUUID",null),context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null))))),
new TagParameter("id","ManufacturerAliasDetail"),
new TagParameter("text",getObject("ManufacturerNameAlias:NameAlias"))}, 6); 
      out.write("<!-- end page navigator -->");
 URLPipelineAction action296 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Dispatch",null)))),null));String site296 = null;String serverGroup296 = null;String actionValue296 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Dispatch",null)))),null);if (site296 == null){  site296 = action296.getDomain();  if (site296 == null)  {      site296 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup296 == null){  serverGroup296 = action296.getServerGroup();  if (serverGroup296 == null)  {      serverGroup296 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ManufacturerListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue296, site296, serverGroup296,true)); 
      out.write("<!-- Tabs -->");
 {Object temp_obj = ("Manufacturers"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"manufacturer/alias/ManufacturerAliasTabs_32", null, "12");} 
      out.write("<!-- EO Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmUnassign")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","manufacturer"),
new TagParameter("cancelbtnname","CancelUnassign"),
new TagParameter("okbtnname","Unassign"),
new TagParameter("type","mda")}, 22); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","manufacturer"),
new TagParameter("type","mdea")}, 24); 
 } 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignedManufacturerList_32.TheListShowsAllManufacturersThatUseThisManufacture.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Manufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<td class=\"e s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ManufacturerListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AssignedManufacturerList_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ManufacturerListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AssignedManufacturerList_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignedManufacturerList_32.AssignedManufacturers.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Manufacturers","Manufacturer",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\" >\n<input type=\"hidden\" name=\"Manufacturer\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Manufacturer:Name)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Manufacturer:Name"),null).equals(context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("\ndisabled=\"disabled\"\n");
 } 
      out.write("\n/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s\">\n&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 {out.write(localizeISText("AssignedManufacturerList_32.ThereAreCurrentlyNoManufacturerAssignedToThisAlias.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("AssignedManufacturerList_32.ThereAreCurrentlyNoManufacturerAssignedToThisAlias.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input name=\"ManufacturerNameAliasUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null));
      out.write("\"/>\n<input name=\"SelectedManufacturerAliasUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null));
      out.write("\"/>\n<input class=\"button\" type=\"submit\" name=\"Assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignedManufacturerList_32.Assign.button",null)),null));
      out.write("\"/>\n</td>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Manufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("<input class=\"button\" type=\"submit\" name=\"ConfirmUnassign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignedManufacturerList_32.Unassign.button",null)),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("</td> \n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td colspan=\"4\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<input name=\"ManufacturerNameAliasUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Manufacturers")}, 129); 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<div> \n");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "137");} 
      out.write("</div>\n<!-- EO Main Content -->\n<!-- EO Working Area -->");
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

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

public final class RegionSelectStateProvince_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("RegionSelectStateProvince_52.AddState_Province.text",null)))}, 5); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;-&nbsp;");
 } 
 {out.write(localizeISText("RegionSelectStateProvince_52.AddStates.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeoObjectNotSelected")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeoObjectNotSelected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.HaveNotSelectedState.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StateProvinceSearchForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StateProvinceSearchForm:CountryID:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegionSelectStateProvince_52.CountryIsMissing.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("simpleSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("simpleSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("advanceSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("advanceSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegionSelectStateProvince_52.StatesFoundBySearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("RegionSelectStateProvince_52.AllAvailableStates.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(" <br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
 {out.write(localizeISText("RegionSelectStateProvince_52.AssignSelectedStates_ProvincesToDestinationRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("RegionSelectStateProvince_52.AssignSelectedStates_ProvincesToShippingCondition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("<br/> \n");
 {out.write(localizeISText("RegionSelectStateProvince_52.GetListOfAvailableStates_Provinces.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action196 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectsSelection_52-Dispatch",null)))),null));String site196 = null;String serverGroup196 = null;String actionValue196 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectsSelection_52-Dispatch",null)))),null);if (site196 == null){  site196 = action196.getDomain();  if (site196 == null)  {      site196 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup196 == null){  serverGroup196 = action196.getServerGroup();  if (serverGroup196 == null)  {      serverGroup196 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectsSelection_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("GeoObjectsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue196, site196, serverGroup196,true)); 
      out.write("<!-- errors -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" width=\"100%\" class=\"infobox w e\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.StateSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/StateProvinceSearch_52", null, "57");} 
      out.write("</td>\n</tr>\n</table>\n<input type=\"hidden\" name=\"RegionID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ObjectType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeoObjects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header aldi\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('GeoObjectsSelectionForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('GeoObjectsSelectionForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.State.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n</tr>");
 while (loop("GeoObjects","StateProvince",null)) { 
      out.write("<tr>\n<td class=\"w e s center top\">\n<input type=\"hidden\" name=\"AllUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 {Object temp_obj = (context.getFormattedValue(getObject("StateProvince:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("StateProvince:Country:Id"),null)); getPipelineDictionary().put("ComposedID", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"StatesToAdd\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ComposedID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} 
 while (loop("AssignedGeoObjects","assigned",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned:UUID"),null).equals(context.getFormattedValue(getObject("StateProvince:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" checked=\"checked\" disabled=\"disabled\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ComposedID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" \n/>");
 } 
 } 
      out.write("</td>\n<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td> \n</tr>");
 } 
 } else { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GeoObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail w e s n\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.NoStates_ProvincesFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_detail w e s n\">");
 {out.write(localizeISText("RegionSelectStateProvince_52.NoStates_ProvincesToAssign.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeoObjects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"assignGeoObject\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("RegionSelectStateProvince_52.Assign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("RegionSelectStateProvince_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("variablepagesize","true")}, 154); 
      out.write("<!-- End Page Cursor -->");
 out.print("</form>"); 
      out.write("<!-- EO Working Area -->");
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.catalog;

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

public final class CatalogMaintenance_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance.OnlineOffline.text1",null)),null)),
new TagParameter("removewizard","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogMaintenance-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))))),
new TagParameter("id",getObject("Catalog:Root:UUID")),
new TagParameter("text",getObject("Catalog:DisplayName"))}, 5); 
      out.write("<!-- EO Page Navigator -->\n<!-- Tabs -->");
 {Object temp_obj = ("OnlineOffline"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryTabs", null, "10");} 
      out.write("<!-- EO Tabs -->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;-&nbsp;");
 {out.write(localizeISText("CatalogMaintenance.OnlineOffline.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error top\" width=\"100%\">\n<b>");
 {out.write(localizeISText("CatalogMaintenance.CatalogCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDay_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheStartDateCouldNotBeParsedPleaseProvideAValidSta.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartTime_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheStartTimeCouldNotBeParsedPleaseProvideAValidSta.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndDay_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheEndDateCouldNotBeParsedPleaseProvideAValidEndDa.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndTime_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheEndTimeCouldNotBeParsedPleaseProvideAValidEndTi.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidTimePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.PleaseMakeSureTheStartDateIsBeforeTheEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("DatesMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.PleaseProvideAtLeastOneDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidTimePeriodLivecycle",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.PleaseMakeSureThatTheLastOrderDateIsBeforeTheEndOf.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastOrderDate_Day_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheLastOrderDateCouldNotBeParsedPleaseProvideAVali.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastOrderDate_Time_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheLastOrderTimeCouldNotBeParsedPleaseProvideAVali.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndOfLife_Day_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheEndOfLifeDateCouldNotBeParsedPleaseProvideAVali.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndOfLife_Time_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 {out.write(localizeISText("CatalogMaintenance.TheEndOfLifeTimeCouldNotBeParsedPleaseProvideAVali.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- end errors-->");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_from.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance.SharedFromAnother.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance.SharedFromAnother.title",null)),null));
      out.write("\" border=\"0\"/> \n");
 {out.write(localizeISText("CatalogMaintenance.ThisCatalogIsSharedFrom",null,null,encodeString(context.getFormattedValue(getObject("Catalog:OriginalCatalog:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 } 
 {out.write(localizeISText("CatalogMaintenance.SetTheCatalogStatusAndThenSpecifyWhenThisStatusSho",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action535 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogMaintenance-Dispatch",null)))),null));String site535 = null;String serverGroup535 = null;String actionValue535 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogMaintenance-Dispatch",null)))),null);if (site535 == null){  site535 = action535.getDomain();  if (site535 == null)  {      site535 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup535 == null){  serverGroup535 = action535.getServerGroup();  if (serverGroup535 == null)  {      serverGroup535 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogMaintenance-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue535, site535, serverGroup535,true)); 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"8\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td colspan=\"8\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select\" for=\"Status\">");
 {out.write(localizeISText("CatalogMaintenance.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td colspan=\"7\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<select name=\"Status\" id=\"Status\" class=\"select inputfield_en\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("<option value=\"1\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<option value=\"1\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("<option value=\"1\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"1\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 }}} 
      out.write(" \n</select>");
 } else { 
      out.write("<select name=\"Status\" id=\"Status\" class=\"select inputfield_en\" disabled=\"disabled\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("<option value=\"1\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<option value=\"1\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
      out.write("<option value=\"1\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"1\">");
 {out.write(localizeISText("CatalogMaintenance.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"0\" selected=\"selected\">");
 {out.write(localizeISText("CatalogMaintenance.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 }}} 
      out.write(" \n</select>");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td class=\"input_radio\" width=\"1\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PeriodDefined")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PeriodDefined"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("<input name=\"PeriodDefined\" id=\"PeriodDefined_false\" value=\"false\" type=\"radio\"/>");
 } else { 
      out.write("<input name=\"PeriodDefined\" id=\"PeriodDefined_false\" value=\"false\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:StartMaintenance")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:EndMaintenance")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
      out.write("<input checked=\"checked\" id=\"PeriodDefined_false\" name=\"PeriodDefined\" value=\"false\" type=\"radio\"/>");
 } else { 
      out.write("<input checked=\"checked\" id=\"PeriodDefined_false\" name=\"PeriodDefined\" value=\"false\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
      out.write("<input name=\"PeriodDefined\" id=\"PeriodDefined_false\" value=\"false\" type=\"radio\"/>");
 } else { 
      out.write("<input name=\"PeriodDefined\" id=\"PeriodDefined_false\" value=\"false\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 }} 
      out.write("</td>\n<td class=\"label_radio_text\" colspan=\"6\"><label class=\"label label_radio_text label_light\" for=\"PeriodDefined_false\">");
 {out.write(localizeISText("CatalogMaintenance.Always.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td class=\"input_radio label_fix1\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PeriodDefined")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PeriodDefined"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
      out.write("<input checked=\"checked\" name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\"/>");
 } else { 
      out.write("<input checked=\"checked\" name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:StartMaintenance")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:EndMaintenance")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
      out.write("<input checked=\"checked\" name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\"/>");
 } else { 
      out.write("<input checked=\"checked\" name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { 
      out.write("<input checked=\"checked\" name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\"/>");
 } else { 
      out.write("<input checked=\"checked\" name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("<input name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\"/>");
 } else { 
      out.write("<input name=\"PeriodDefined\" id=\"PeriodDefined_true\" value=\"true\" type=\"radio\" disabled=\"disabled\"/>");
 } 
 }}} 
      out.write("</td>\n<td class=\"label_radio_text label_fix1\" nowrap=\"nowrap\"><label class=\"label label_radio_text label_light\" for=\"PeriodDefined_true\">");
 {out.write(localizeISText("CatalogMaintenance.LimitedPeriod.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;--&gt;</label></td>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartMaintenance_Day"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductStatusDetail.StartDate.table_detail",null))),
new TagParameter("DateString",getObject("StartMaintenance_Day")),
new TagParameter("DateObject",getObject("Catalog:StartMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 184); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","StartMaintenance_Time"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("TimeString",getObject("StartMaintenance_Time")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("Catalog:StartMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 191); 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" colspan=\"3\">&nbsp;</td>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndMaintenance_Day"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductStatusDetail.EndDate.table_detail",null))),
new TagParameter("DateString",getObject("EndMaintenance_Day")),
new TagParameter("DateObject",getObject("Catalog:EndMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 201); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","EndMaintenance_Time"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("TimeString",getObject("EndMaintenance_Time")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PaymentHistory.Time.table_header",null))),
new TagParameter("DateObject",getObject("Catalog:EndMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 208); 
      out.write("</tr>\n<tr>\n<td colspan=\"9\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"n\" colspan=\"9\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {226}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"DatePattern\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"DateFormatString\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {229}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"TimeFormatString\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\"><input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance.Reset.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "242");} 
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
